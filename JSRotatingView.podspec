Pod::Spec.new do |s|
  s.name             = 'JSRotatingView'
  s.version          = '0.1.0'
  s.summary          = 'Simple view that helps to detect rotation in UIView subclasses'
 
  s.description      = <<-DESC
A simple rotatable view
                       DESC
 
  s.homepage         = 'https://github.com/jseidman95/JSRotatingView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jesse Seidman' => 'jseidman95@yahoo.com' }
  s.source           = { :git => 'https://github.com/jseidman95/JSRotatingView.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'
  s.source_files = 'JSRotatingView/JSRotatingView.swift'
 
end
