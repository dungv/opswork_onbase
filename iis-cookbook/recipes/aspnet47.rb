powershell_script 'asp net 4.7' do
    code 'Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET'
    code 'Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET47'
    not_if "(Get-WindowsFeature -Name IIS-ASPNET47).Installed"
end
