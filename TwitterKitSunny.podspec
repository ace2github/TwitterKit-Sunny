Pod::Spec.new do |s|
  s.name = "TwitterKitSunny"
  s.version = "1.0.0"
  s.summary = "Increase user engagement and app growth."
  s.homepage = "https://github.com/touren/twitter-kit-ios"
  s.documentation_url = "https://github.com/touren/twitter-kit-ios/wiki"
  s.social_media_url = "https://taoren.me"
  s.authors = "hui"
  s.platform = :ios, "9.0"
  # s.source = { :http => "https://github.com/touren/twitter-kit-ios/releases/download/v#{s.version}/TwitterKit.zip" }
  s.source = { :git => "https://github.com/ace2github/TwitterKit-Sunny.git/iOS"}
  # s.ios.public_header_files = "TwitterKit/TwitterKit/*.h"
  # s.ios.source_files = "TwitterKit/TwitterKit/**/*.{h,m}", "TwitterKit/TwitterKit/**/*.{h,m}"
  s.vendored_frameworks = "iOS/TwitterKit.framework"
  s.license = { :type => "Commercial", :text => "Twitter Kit: Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md"}
  s.resources = ["iOS/TwitterKit.framework/TwitterKitResources.bundle", "iOS/TwitterKit.framework/TwitterShareExtensionUIResources.bundle"]
  s.frameworks = "CoreText", "QuartzCore", "CoreData", "CoreGraphics", "Foundation", "Security", "UIKit", "CoreMedia", "AVFoundation", "SafariServices"
  s.dependency "TwitterCore", ">= 3.1.0"
end
