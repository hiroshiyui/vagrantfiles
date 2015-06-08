# Install RVM & Ruby

execute "Import RVM GPG Key" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3"
end

Chef::Log.info("-- Installing RVM & Ruby, this may take some time, have a cup of tea or coffee? --")

execute "Install RVM" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "curl -sSL https://get.rvm.io | bash -s stable"
end

execute "Install Ruby 2.1 via RVM" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "/bin/bash -c 'source ~/.rvm/scripts/rvm && rvm install 2.1'"
end

execute "Install Ruby 2.2 via RVM" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "/bin/bash -c 'source ~/.rvm/scripts/rvm && rvm install 2.2'"
end

execute "Set RVM-installed Ruby 2.1 as default" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "/bin/bash -c 'source ~/.rvm/scripts/rvm && rvm use 2.1 --default'"
end
