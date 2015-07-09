# Install RVM & Ruby

execute "Import RVM GPG Key" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "curl -sSL https://rvm.io/mpapis.asc | gpg --import -"
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
