Pod::Spec.new do |s|
  s.name             = 'Ignite'
  s.version          = '1.0.4'
  s.summary          = 'The lightweight architecture of mobile applications'
  s.homepage         = 'https://github.com/gsagadyn/Ignite'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Grzegorz Sagadyn' => 'sagadyn@gmail.com' }
  s.source           = { :git => 'https://github.com/gsagadyn/Ignite.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/**/*'
  s.swift_versions = '5.3'
end
