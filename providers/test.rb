action :run do
  Chef::Log.info "Running #{new_resource.name}"
  new_resource.updated_by_last_action true
end
