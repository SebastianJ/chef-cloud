template "/etc/cloud/cloud.cfg" do
  source "cloud.cfg.erb"
  owner "root"
  group "root"
  mode 0644
  
  variables(
    disable_root:      node[:cloud_cfg][:disable_root],
    preserve_hostname: node[:cloud_cfg][:preserve_hostname],
    manage_etc_hosts:  node[:cloud_cfg][:manage_etc_hosts]
  )
  
  only_if { ::File.exists?("/etc/cloud") }
end
