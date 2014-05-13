#log_level :info
ssl_verify_mode :verify_peer

cookbook_path File.absolute_path(File.join(File.absolute_path(__FILE__), '..', 'cookbooks'))
