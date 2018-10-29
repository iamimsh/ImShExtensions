Pod::Spec.new do |s|
  s.name             = 'ImShExtensions'
  s.version          = '1.0.2'
  s.summary          = 'Useful extensions for UIViewController, UIView, and so on...'
 
  s.description      = <<-DESC
  Some of the useful extensions for UIViewController, UIView, and so on...
                       DESC
 
  s.homepage         = 'https://github.com/iamimsh/ImShExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mohammed Imran' => 'iam_imsh@yahoo.com' }
  s.source           = { :git => 'https://github.com/iamimsh/ImShExtensions.git', :tag => '1.0.2', :commit => "7d339ac4ad32de707739cd11b8809a5cd929b6a8" }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'ImShExtensions/ImSh/*.swift'
 
end