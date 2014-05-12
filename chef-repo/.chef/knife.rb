# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jimbo"
client_key               "#{current_dir}/jimbo.pem"
validation_client_name   "internet-informatics-validator"
validation_key           "#{current_dir}/internet-informatics-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/internet-informatics"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:aws_access_key_id] = "AKIAIM4J36NE2SI2VMTQ"
knife[:aws_secret_access_key] = "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"
