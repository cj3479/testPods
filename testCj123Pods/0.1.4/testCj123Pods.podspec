#
# Be sure to run `pod lib lint testPods.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'testCj123Pods'
  s.version          = '0.1.4'
  s.summary          = 'iOS 防Crash库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/cj3479/testPods'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT' }
  s.author           = { 'cj3479' => 'cj3479@126.com.com' }
  s.source           = { :git => 'https://github.com/cj3479/testPods.git', :tag => s.version.to_s}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'testPods/Classes/**/*'
  
   s.resource_bundles = {
     'testPods' => ['testPods/Assets/*','testPods/test/*']
   }

  s.public_header_files = 'testPods/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 2.5'
  #s.dependency 'QBNetwork'
  s.static_framework = true
  s.info_plist = {
    'CFBundleIdentifier' => 'com.myorg.MyLib',
    'MY_VAR' => 'SOME_VALUE'
  }
  s.vendored_frameworks = ['Frameworks/TestDMlib2.framework']
  s.vendored_libraries = ['Frameworks/libTestStaticLib55.a']
  s.frameworks = 'QuartzCore', 'CoreData'
  s.weak_framework = 'Twitter'
  s.libraries = 'xml2'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
end
