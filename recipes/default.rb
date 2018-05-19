template "/etc/cloud/cloud.cfg" do
  source "cloud.cfg.erb"
  owner "root"
  group "root"
  mode 0644
end
