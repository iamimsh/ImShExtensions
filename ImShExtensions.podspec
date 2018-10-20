Pod::Spec.new do |s|
  s.name             = 'ImShExtensions'
  s.version          = '1.0.0'
  s.summary          = 'Useful extensions for UIViewController, UIView, and so on...'
 
  s.description      = <<-DESC
  Some of the useful extensions for UIViewController, UIView, and so on...
                       DESC
 
  s.homepage         = 'https://github.com/iamimsh/ImShExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mohammed Imran' => 'iam_imsh@yahoo.com' }
  s.source           = { :git => 'https://github.com/iamimsh/ImShExtensions.git', :tag => s.version.to_s, :commit => "3c7ab791b1d20cc880de1fa8eb23449a5d08c2fb" }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'ImShExtensions/ImSh/*.swift'
 
end