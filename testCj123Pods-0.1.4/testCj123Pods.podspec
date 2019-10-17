Pod::Spec.new do |s|
  s.name = "testCj123Pods"
  s.version = "0.1.4"
  s.summary = "iOS \u{9632}Crash\u{5e93}"
  s.license = {"type"=>"MIT"}
  s.authors = {"cj3479"=>"cj3479@126.com.com"}
  s.homepage = "https://github.com/cj3479/testPods"
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["QuartzCore", "CoreData"]
  s.weak_frameworks = "Twitter"
  s.libraries = "xml2"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '10.0'
  s.ios.vendored_framework   = 'ios/testCj123Pods.framework'
end
