Pod::Spec.new do |spec|
spec.name          = "Payze"
spec.version       = "0.1"
spec.summary       = "Sort based Object Tracker in Swift"
spec.description   = <<-DESC
open to any improvements/corrections
DESC
spec.license       = { :type => "MIT", :file => "LICENSE" }
spec.author        = { "author" => "giga.khizanishvili@gmail.com" }
spec.platform      = :ios, "14.0"
spec.swift_version = "5.10"

spec.source        = { :git => "https://github.com/PayzeTech/Payze-iOS-SDK/", :tag => "#{0.1}" }
spec.source_files  = "Sources/**/*.{swift,h,m}"

spec.xcconfig      = { "SWIFT_VERSION" => "5.10" }
end
