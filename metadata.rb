name 'old-td-agent'
maintainer       "Treasure Data, Inc."
maintainer_email "k@treasure-data.com"
license          "All rights reserved"
description      "Installs/Configures td-agent"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1.13"

%w{redhat centos amazon debian ubuntu}.each do |os|
  supports os
end

depends 'apt'
depends 'yum'
depends 'ulimit'

attribute "td_agent/api_key",
  :display_name => "Treasure Data ApiKey",
  :description => "ApiKey for Treasure Data Service",
  :default => ''
