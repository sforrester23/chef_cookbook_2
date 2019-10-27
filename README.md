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

It is this .yml file that we shall consider first... :curry:
