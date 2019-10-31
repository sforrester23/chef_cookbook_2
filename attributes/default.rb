# little recap on erb: embedded ruby
# To embed (or interpolate) some ruby, you use the ice cream cones <% %>

# There are two types of embedded logic.
  # One returns something
    # <%= %>
  # the other does not return
    # <% %>


default['nginx']['proxy_port'] = 3000
default['nginx']['proxy_port_2'] = 3030
default['nginx']['proxy_port_jenkins'] = 8080 
