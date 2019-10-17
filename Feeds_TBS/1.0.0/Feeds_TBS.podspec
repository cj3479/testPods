#
#  Be sure to run `pod spec lint TBS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "Feeds_TBS"
  s.version      = "1.0.0"
  s.summary      = "Tencent Browser Service iOS SDK"
  s.description  = <<-DESC
  Tencent Browser Service iOS SDK
                   DESC

  s.homepage     = 'http://git.code.oa.com/QBFeedS_SDK_iOS/TBS'
  s.author           = { 'jackjcheng' => 'jackjcheng@tencent.com' }

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'http://git.code.oa.com/QBFeedS_SDK_iOS/TBS.git', :tag => "v#{s.version.to_s}" }

  s.ios.deployment_target = '8.0'
  if ENV['dsym'] || ENV['DSYM']
      s.user_target_xcconfig = { 'DEBUG_INFORMATION_FORMAT' => 'dwarf-with-dsym' }
  end
  
  #s.frameworks = 'WebKit.framework'

 s.subspec 'PureMode' do |spec|
    spec.requires_arc = true
    spec.libraries = 'xml2', 'resolv', 'xslt.1','stdc++', 'z'
    spec.public_header_files = [
    'QBWebView/QBWebView/PureMode/**/*.h'
    ]
    spec.source_files = [
    'QBWebView/QBWebView/PureMode/**/*.{h,m,mm,c}'
    ]
  end

#   Common end

# s.subspec 'QBTBSUtils' do |spec|
#     spec.source_files = [
#     'QBWebView/QBWebView/QBATSURLProtocol.h',
#     'QBWebView/QBWebView/QBModuleConfig.h',
#     'QBWebView/QBWebView/QBPerformanceHelper.h',
#     'QBWebView/QBWebView/QBInfo.h'
#     ]
#     spec.vendored_libraries = 'Lib/libTBSUtils.a', 'Lib/libTBSASI.a'
# end

# 
# s.default_subspec = 'All'
#   s.subspec 'All' do |spec|
#           spec.libraries = 'xml2', 'sqlite3', 'resolv', 'xslt.1', 'c++', 'z'
#           spec.source_files = 'QBWebView/QBWebView/**/*.h'
#           spec.exclude_files = "QBWebView/QBWebView//Common/ArkHTTP/**/*.*", "QBWebView/QBWebView/Common/Beacon/Beacon/common/tbs/*.*"
#           spec.vendored_libraries = 'Lib/libTBS.a'
#   end

#   s.subspec 'QBTBSUtils' do |spec|
#       spec.source_files = [
#       'QBWebView/QBWebView/QBATSURLProtocol.h',
#       'QBWebView/QBWebView/QBModuleConfig.h',
#       'QBWebView/QBWebView/QBPerformanceHelper.h'
#       ]
#       spec.vendored_libraries = 'Lib/libTBSUtils.a'
#   end


end
