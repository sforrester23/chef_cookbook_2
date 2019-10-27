# :fork_and_knife: Chef Cookbook Set-Up :fork_and_knife:
- _This walkthrough assumes successful installation and license acceptance of chef tool_
- _You can check that you have chef installed by executing in your command line:_
      chef -v

## Starting Out
To make a new cookbook, execute:

    chef generate cookbook <cookbook_name>

where <cookbook_name> is what you'd like to call your cookbook! :tongue:   

This creates a new folder in the directory you executed the command in, with whatver name you gave it (i.e. \<cookbook_name\> in the above command).

Let's enter the folder, using:

    cd \<cookbook_name\>

and hit a **cheeky ls** to have a look at what we've just made. :spaghetti:

You'll see a whole host of files and sub-directories, but don't be alarmed, there's only a few of them we need to worry about at this stage. :poultry_leg:

The most important, that we're going to cover in this walkthrough, are the files:
1. kitchen.yml
2. Policyfile.rb

and inside the sub-directories:

3. recipes/default.rb
4. spec/spec_helper.rb & spec/unit/recipes/default_spec.rb
5. test/integration/default/default_test.rb

You'll notice the file types are predominantly ruby (_.rb_ files), this is because chef operates on ruby language, mixing it with it it's own language, making it a _Domain Specific Language_.

The .yml file is code written in YAML format, a human readable language often used for congifuration. YML/YAML stands for "_yet another mark-up language_".

It is this kitchen.yml file that we shall consider first... :curry:

Go ahead and on the cookbook directory you just made, open up your files with a:

    atom .

### :meat_on_bone: Set-up your kitchen with kitchen.yml :hamburger:

Open up your kitchen.yml file and take a look. This is where the brunt of the set up for your _kitchen_ will take place. A kitchen is simply a place (or virtual environment) where your cookbook can exist and do its thing. :pizza:

We're going to be using vagrant to run our machines to being with at least, so make sure that and virtual box are installed. This is what the driver section at the top of this file are for. Moving on.

In this file, we can decide which operating system we'd like our kitchen to use (since it is a virtual machine, after all) as well as what provisioning we'd like to occur and what integration tests we'd like to perform (more on those later).

We need to make some changes to this file to get it to the level we'd like.

We need to tell our system to accept the chef license, as well as which files to use as provisioning for the system. _Provisioning_ is essentially pre-setting up our environment so it contains the necessary things we need to carry out the processes we want it to. This is usually, but not limited, to the installation of various packages.

In chef cookbooks, our recipes are our provisioning files. So, we need to direct our kitchen to these recipe files so that it can carry them out and set-up the system to our specifications. :fried_shrimp:

This section under "provisioner:" is where we accept the license and direct it to our recipes for provisioning. Thus, it should look a little bit like:

    provisioner:
      name: chef_zero
      chef_license: accept
      policyfile_path: <path_to_recipe_file>

where \<path_to_recipe_file\> specifies the path to our recipe file. In initial set-up, this will look like: \<cookbook_name>/Policyfile.rb.

N.B. _You may not have to define your path to Policy file, as it should be able to see where it is on default set-up._

Next, to the platforms section. This is where we define which operating system we'd like to run on our kitchen virtual machine.

Using Ubuntu 16.04 as an example, I have included an excerpt of code that should appear in this file to specify which operating system. You will need to change this to your own specifications and OS choice, as well as knowing what command is used for this in vagrant (i.e. where it states the box as ubuntu/xenial64):

    platforms:
      - name: ubuntu-16.04
        driver:
          box: ubuntu/xenial64

It's important to note the indentation throughout. While ruby does not rely on correct indentation to work, like python for instance, it is always helpful to maintain the indentation as it can be useful when identifying syntax errors.

We can move past the verifier and suites sections of this file, they are more advanced settings. The suites section specifies which integration tests to carry out, but we won't change this as we will simply be editing the file that it is directed to already with our own tests.

 
