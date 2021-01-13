Pod::Spec.new do |spec|
  spec.name         = "CryptoSHA"
  spec.version      = "0.0.2"
  spec.platform     = :ios, "9.0"
  spec.summary      = "Behind the abbreviation SHA256, SHA224, SHA384, SHA512 hides a function that forms the heart of cryptocurrencies such as Bitcoin."
  spec.homepage     = "https://github.com/devzhr/Swift-CryptoSHA"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "devzhr" => "zouhair.mouhsine@gmail.com" }
  spec.source       = { :git => "https://github.com/devzhr/Swift-CryptoSHA.git", :tag => "#{spec.version}" }
  spec.swift_version = '5.3'
  spec.source_files  = "CryptoSHA/Classes", "CryptoSHA/Classes/**/*.{h,m}"
end
