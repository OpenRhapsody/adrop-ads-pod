#
# Be sure to run `pod lib lint AdropAds.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'adrop-ads'
  s.version          = '1.3.0-alpha.1'
  s.summary          = 'Adrop ads'
  s.homepage         = 'https://adrop.io'
  
  s.author           = { 'Martin' => 'martin@openrhapsody.com', 'Leo' => 'leo@openrhapsody.com', 'dev' => 'dev@openrhapsody.com' }
  s.license          = { :type => 'CUSTOM (https://adrop.io)' }
  s.swift_version    = '5.0'
  s.platform         = :ios
  
  s.source           = { :git => 'https://github.com/OpenRhapsody/adrop-ads-pod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.ios.vendored_frameworks = 'AdropAds.xcframework'

end
