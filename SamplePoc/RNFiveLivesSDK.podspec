Pod::Spec.new do |s|
  s.name         = 'RNFiveLivesSDK'
  s.module_name  = 'RNFiveLivesSDK'
  s.version      = '1.0.0'
  s.summary      = 'Five lives sdk'
  s.license      = 'MIT'

  s.author       = 'Huma Therapeutics Ltd'
  s.homepage     = 'https://huma.com'

  s.source       = { :path => '.' }
  s.vendored_frameworks = "SDKOutput/Frameworks/*"
  s.resource_bundles = {
    s.name => ["SDKOutput/Rescources/*"],
  }
  s.framework = 'UIKit', 'QuartzCore', 'Foundation', 'MobileCoreServices', 'UserNotifications', 'AudioToolbox', 'JavaScriptCore', 'SystemConfiguration'
  s.library = 'c++'
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
