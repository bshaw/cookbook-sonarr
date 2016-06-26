default['sonarr']['docker_image'] = 'linuxserver/sonarr'
default['sonarr']['image_tag'] = 'latest'
default['sonarr']['host_port'] = 8989
default['sonarr']['container_port'] = 8989
default['sonarr']['host_name'] = 'sonarr'
default['sonarr']['domain_name'] = 'example.com'
default['sonarr']['config_volume'] = '/sonarr/config'
default['sonarr']['tv_volume'] = '/sonarr/tv'
default['sonarr']['volumes'] = ['/dev/rtc:/dev/rtc:ro', "#{node['sonarr']['config_volume']}:/config", "#{node['sonarr']['tv_volume']}:/tv"]

# You might want to mount your tv volume directly from the plex container:
# default['sonarr']['plex_container'] = 'plex'
# default['sonarr']['volumes_from'] = node['sonarr']['plex_container']
# default['sonarr']['volumes'] = ["#{node['sonarr']['config_volume']}:/config", '/dev/rtc:/dev/rtc:ro']
