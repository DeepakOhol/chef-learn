file '/etc/motd' do
 content 'hi deepak...'
end

execute 'cmmand-test' do
	command 'echo deepak >> /etc/motd'
	only_if 'test -r /etc/motd'
end

execute 'command-test' do
	command 'echo ohol >> /etc/notd'
	not_if 'test -r /etc/motd'
end

execute 'command' do
	command 'echo heyyy >> /etc/motd'
	only_if {File.exists?('/etc/motd')}
end

service 'apache2' do
 subscribes :reload, "file [/etc/motd]"	
end

file '/etc/motd' do
	content 'deepak'
#	notifies :restart, 'service[apache2]'
end
