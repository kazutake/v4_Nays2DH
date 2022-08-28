# based on https://github.com/appveyor/build-images/blob/master/scripts/Windows/install_qt_fast_windows.ps1

. "$PSScriptRoot\install_qt_module.ps1"

$installDir = "C:\Qt"

$component_groups += @(
    @{
        components = @(
            "qt.tools.ifw.43"
        )
    }
)

# install components
foreach($componentGroup in $component_groups) {
    if ($componentGroup.version) {
        foreach($component in $componentGroup.components) {
            Install-QtComponent -Version $componentGroup.version -Name $component -Path $installDir
        }
        ConfigureQtVersion $installDir $componentGroup.version
    } else {
        foreach($component in $componentGroup.components) {
            Install-QtComponent -Id $component -Path $installDir
        }
    }
}

# # compressing folder
# Write-Host "Compacting C:\Qt..." -NoNewline
# compact /c /i /s:C:\Qt | Out-Null
# Write-Host "OK" -ForegroundColor Green

# # set aliases
# cmd /c mklink /J C:\Qt\latest C:\Qt\5.15.2
# cmd /c mklink /J C:\Qt\6.2 C:\Qt\6.2.1
# cmd /c mklink /J C:\Qt\6.1 C:\Qt\6.1.3
# cmd /c mklink /J C:\Qt\6.0 C:\Qt\6.0.4
# cmd /c mklink /J C:\Qt\5.15 C:\Qt\5.15.2
# cmd /c mklink /J C:\Qt\5.14 C:\Qt\5.14.2
# cmd /c mklink /J C:\Qt\5.9 C:\Qt\5.9.9
