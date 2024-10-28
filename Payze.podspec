Pod::Spec.new do |spec|
spec.name          = "Payze"
spec.version       = "1.0.0"
spec.summary       = "Seamless no-redirect payments provider"
spec.description   = <<-DESC
The Payze iOS SDK enables the integration of secure, no-redirect payment flows in iOS applications. This SDK is designed to simplify the payment process and offers support for multiple currencies, languages, and environments.
DESC
spec.homepage      = "https://github.com/PayzeTech/Payze-iOS-SDK/"
spec.license       = { :type => "MIT", :file => "LICENSE" }
spec.author        = { "Payze" => "Payze iOS SDK" }
spec.platform      = :ios, "14.0"
spec.swift_version = "5.10"

spec.source        = { :git => "https://github.com/PayzeTech/Payze-iOS-SDK/", :tag => "1.0.0" }
spec.source_files  = "Sources/**/*.swift"
spec.resource_bundles = {
 "PayzeResources" => [ "Sources/Resources/*", "Sources/Localization/*" ]
}

spec.frameworks = "UIKit", "Foundation", "Combine"

spec.xcconfig      = { "SWIFT_VERSION" => "5.10" }
end
