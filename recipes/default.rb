#
# Cookbook Name:: chef-mkswap
# Recipe:: default
#
# Copyright (C) 2015 PE, pf.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
service 'mkswap' do
 supports :status => true, :restart => false, :reload => false
 priority :S => [:start, 46]
end

template '/etc/init.d/mkswap' do
 source 'mkswap.erb'
 mode '0755'
 owner 'root'
 group 'root'
 variables({
  :date => Time.now,
 })
 notifies :enable, 'service[mkswap]', :immediately
# notifies :start,  'service[mkswap]', :immediately # not in live - at the next reboot
end

