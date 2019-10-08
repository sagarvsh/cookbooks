package 'vim-enhanced'
package 'emacs'
package 'nano'
package 'tree' do
	action :install
end

package 'ntp'

package 'git' do
  action:install
end

#node['ipaddress']
#node['memory']['total']

# print statement 'I have 3 laptops'
#laptop_count = 4
#puts "I have #{laptop_count} laptops"

file '/etc/motd' do
	content "This server is the property of Sagar
	HOSTNAME: #{node['hostname']}
	IPADDRESS: #{node['ipaddress']}
	CPU: #{node['cpu']['0']['mhz']}
	MEMORY: #{node['memory']['total']} 
"
	action :create
	owner 'root'
	group 'root'
end
