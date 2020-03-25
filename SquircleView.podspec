Pod::Spec.new do |s|
  s.name             = 'SquircleView'
  s.version          = '0.1.0'
  s.summary          = 'Squircle corner radius'
  s.description      = 'Apply squircle corner radius on UIView'

  s.homepage         = 'https://github.com/gary-ssun/SquircleView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gary' => 'redleesg@gmail.com' }
  s.source           = { :git => 'https://github.com/gary-ssun/SquircleView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SquircleView/Classes/**/*'
  s.swift_version = '5.0'
  
end
