# Install RVM & Ruby

execute "Import RVM GPG Key" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3"
end

Chef::Log.info("Installing RVM & Ruby, this may take some time...")

execute "Install RVM & Ruby" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "curl -sSL https://get.rvm.io | bash -s stable --ruby"
end
