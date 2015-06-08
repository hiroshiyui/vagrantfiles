Chef::Log.info("Installing Rails, this may take some time...")

execute "Install Rails" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "gem install rails"
end
