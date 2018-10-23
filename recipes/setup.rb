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

template '/etc/motd-raj' do
	source 'motd-raj.erb'
	variables(
		:name => 'Rajneesh'
	)
	action :create
end
