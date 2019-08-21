template "/etc/cloud/cloud.cfg" do
  source "cloud.cfg.erb"
  owner "root"
  group "root"
  mode 0644
  
  variables(
    disable_root:      node['cloud']['disable_root'],
    preserve_hostname: node['cloud']['preserve_hostname'],
    manage_etc_hosts:  node['cloud']['manage_etc_hosts']
  )
end
