log_level        :info
log_location     STDOUT
node_name        'ubee'
cookbook_path    ["cookbooks"]

knife[:berkshelf_path] = "cookbooks"
