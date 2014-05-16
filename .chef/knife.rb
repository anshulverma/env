log_level        :info
log_location     STDOUT
node_name        'ubee'
cookbook_path    ["cookbooks"]
ssl_verify_mode  :verify_peer

knife[:berkshelf_path] = "cookbooks"
