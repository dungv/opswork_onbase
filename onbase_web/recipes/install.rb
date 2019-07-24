directory 'C:\tmp' do
  rights :full_control, 'Everyone'
  recursive true
  action :create
end

remote_file 'C:\tmp\Hyland.Web.Server.17.msi' do
  source 'https://github.com/dungv/opswork_onbase/releases/download/onbaseweb/Hyland.Web.Server.17.msi'
  rights :full_control, 'Everyone'
  action :create
end

remote_file 'C:\tmp\setup.exe' do
  source 'https://github.com/dungv/opswork_onbase/releases/download/onbaseweb/setup.exe'
  rights :full_control, 'Everyone'
  action :create
end




windows_package 'onbaseweb' do
  source 'C:\tmp\setup.exe'
  action :install
end
