Pod::Spec.new do |spec|
spec.name          = "Payze"
spec.version       = "1.0.0"
spec.summary       = "Sort based Object Tracker in Swift"
spec.description   = <<-DESC
open to any improvements/corrections
DESC
spec.homepage      = "https://github.com/PayzeTech/Payze-iOS-SDK/"
spec.license       = { :type => "MIT", :file => "LICENSE" }
spec.author        = { "author" => "giga.khizanishvili@gmail.com" }
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
