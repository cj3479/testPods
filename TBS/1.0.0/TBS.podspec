#
#  Be sure to run `pod spec lint TBS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "TBS"
  s.version      = "1.0.0"
  s.summary      = "Tencent Browser Service iOS SDK"
  s.description  = <<-DESC
  Tencent Browser Service iOS SDK
                   DESC

  s.homepage     = "http://git.code.oa.com/QQBrowser_iOS/iOS_TBS_SDK_Src"


  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'szrexzhu' => 'rexzhu@tencent.com' }
  s.source           = { :git => 'http://git.code.oa.com/QQBrowser_iOS/iOS_TBS_SDK_Src.git', :tag => "v#{s.version.to_s}" }

  s.ios.deployment_target = '8.0'
  
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'CLANG_WARN_STRICT_PROTOTYPES' => 'NO', 'STRIP_INSTALLED_PRODUCT' => 'NO', 'COPY_PHASE_STRIP' => 'NO', 'GCC_PREPROCESSOR_DEFINITIONS' => 'TARGET_SDK_MTT', 'HEADER_SEARCH_PATHS' => "$(SDKROOT)/usr/include/libxml2"}
  s.libraries = 'xml2', 'sqlite3', 'resolv', 'xslt.1', 'stdc++', 'z'


  s.source_files = 'QBWebView/QBWebView/**/*.h'
  s.exclude_files = "QBWebView/QBWebView//Common/ArkHTTP/**/*.*", "QBWebView/QBWebView/Common/Beacon/Beacon/common/tbs/*.*"
  s.vendored_libraries = 'QBWebView/QBWebView/Common/SharpP/lib/liblibYUV.a', 'QBWebView/QBWebView/Common/SharpP/lib/libSharpPDec.a', 'Lib/TBS.a'

end
