Pod::Spec.new do |spec|
spec.name         = "Payze iOS SKD"
spec.version      = "0.1"
spec.summary      = "Sort based Object Tracker in Swift"
spec.description  = <<-DESC
open to any improvements/corrections
DESC
spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.author             = { "author" => "giga.khizanishvili@gmail.com" }
spec.platforms = { :ios => "14.0" }
spec.swift_version = "5.10"
spec.source       = { :git => "https://github.com/PayzeTech/Payze-iOS-SDK/", :tag => "#{0.1}" }
spec.source_files  = "Sources/Payze/**/*.swift"
spec.xcconfig = { "SWIFT_VERSION" => "5.10" }
# spec.dependency '{ :git => "https://github.com/ShreshthSaxena/KalmanFilter.git", :tag => "#{1.0.0}" }'
# spec.dependency '{ :git => "https://github.com/ShreshthSaxena/Upsurge.git", :tag => "#{1.0.0}" }'
end