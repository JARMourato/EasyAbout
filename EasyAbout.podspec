
Pod::Spec.new do |s|
    
  s.name         = "EasyAbout"
  s.version      = "1.0.0"
  s.summary      = "A way to easily add Cocoapod licenses and App Version to your iOS App using the Settings Bundle"
  s.homepage     = "https://github.com/JARMourato/EasyAbout"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "João Mourato" => "joao.armourato@gmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/JARMourato/EasyAbout.git", :tag => s.version.to_s }
  s.preserve_paths  = 'README.md', 'settings-script.sh'
  s.source_files    = 'Placeholder.h'
  s.requires_arc    = true
  s.resource_bundle = { 'Settings' => ['*.plist', '../Pods-acknowledgements.plist'] }
  s.prepare_command = 'chmod u+x $(pwd)/settings-script.sh'

end

