Pod::Spec.new do |s|
  s.name         = 'EasyAbout'
  s.version      = '1.2.0'
  s.summary      = 'A way to easily add Cocoapod licenses and App Version to your iOS App using the Settings Bundle'
  s.homepage     = 'https://github.com/JARMourato/EasyAbout'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'João Mourato' => 'joao.armourato@gmail.com' }
  s.platform     = :ios
  s.source       = { :git => 'https://github.com/JARMourato/EasyAbout.git', :tag => s.version.to_s }
  s.preserve_paths  = 'settings-script.sh'
  s.source_files    = 'Placeholder.h'
  s.ios.resource_bundle = { 'Settings' => ['*.lproj','Root.plist','Version.plist'] }
  s.script_phases = [
    {
        :name => 'EasyAbout Install',
        :script => '${PODS_ROOT}/EasyAbout/settings-script.sh',
        :execution_position => :after_compile
    }
  ]
end
