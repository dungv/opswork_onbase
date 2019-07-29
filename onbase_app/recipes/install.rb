#directory 'C:\tmp' do
#  rights :full_control, 'Everyone'
#  recursive true
#  action :create
#end

#remote_file 'C:\tmp\Hyland.Application.Server.17.x86.msi' do
#  source 'https://github.com/dungv/opswork_onbase/releases/download/onbaseweb/Hyland.Application.Server.17.x86.msi'
#  rights :full_control, 'Everyone'
#  action :create_if_missing
#end

windows_package 'onbaseapp' do
  source 'https://github.com/dungv/opswork_onbase/releases/download/onbaseweb/Hyland.Application.Server.17.x86.msi'
  installer_type :custom
  options '/Q'
end

#execute  'onbaseapp' do
#  command 'msiexec /qn /i "c:\tmp\hyland.application.server.17.x86.msi'
#  elevated :true
#end
