#
# Cookbook Name:: sonarr
# Recipe:: default
#

# get the image from dockerhub
docker_image node['sonarr']['docker_image']

# run the container
docker_container 'sonarr' do
  repo node['sonarr']['docker_image']
  tag node['sonarr']['image_tag']
  port "#{node['sonarr']['host_port']}:#{node['sonarr']['container_port']}"
  restart_policy 'always'
  host_name node['sonarr']['host_name']
  domain_name node['sonarr']['domain_name']
  volumes ['/dev/rtc:/dev/rtc:ro', "#{node['sonarr']['config_volume']}:/config", "#{node['sonarr']['tv_volume']}:/tv"]
end

# open firewall port
firewall_rule 'sonarr' do
  port node['sonarr']['host_port']
  command :allow
end
