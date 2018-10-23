package 'emacs'

package 'tree' do
	action :install
end

package 'ntp' do
	action :install
end

package 'git' do
	action :install
end

file '/etc/motd-raj' do
	content "This server is the property of MCMCG
		Hostname: #{node['hostname']}
		IP addreess: #{node['ipaddress']}
		CPU: #{node['cpu']['0']['mhz']}
		Memory: #{node['memory']['total']}"
	action :create
	owner 'root'
	group 'root'
end
