Chef::Log.info("Installing Rails, this may take some time...")

package "nodejs" do
  action :install
end

execute "Install Rails" do
  user "vagrant"
  environment ({"HOME" => "/home/vagrant"})
  command "/bin/bash -c 'source ~/.rvm/scripts/rvm && gem install --no-rdoc --no-ri rails'"
end
