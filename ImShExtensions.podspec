Pod::Spec.new do |s|
  s.name             = 'ImShExtensions'
  s.version          = '1.0.5'
  s.summary          = 'Useful extensions for UIViewController, UIView, and so on...'
 
  s.description      = <<-DESC
  Some of the useful extensions for UIViewController, UIView, and so on...
                       DESC
 
  s.homepage         = 'https://github.com/iamimsh/ImShExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mohammed Imran' => 'iam_imsh@yahoo.com' }
  s.source           = { :git => 'https://github.com/iamimsh/ImShExtensions.git', :tag => s.version.to_s, :commit => "5bc27e0d0089d5b981b5ab0f1603c301056e4a72" }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'ImShExtensions/ImSh/*.swift'
 
end
