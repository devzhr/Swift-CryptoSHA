Pod::Spec.new do |spec|
  spec.name         = "CryptoSHA256"
  spec.version      = "0.0.1"
  spec.platform     = :ios, "9.0"
  spec.summary      = "Behind the abbreviation SHA 256 hides a function that forms the heart of cryptocurrencies such as Bitcoin."
  spec.homepage     = "https://github.com/devzhr/Swift-CryptoSHA256"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "zhr" => "zouhair.mouhsine@gmail.com" }
  spec.source       = { :git => "https://github.com/devzhr/Swift-CryptoSHA256.git", :tag => "#{spec.version}" }
  spec.source_files  = "CryptoSHA256/Classes", "CryptoSHA256/Classes/**/*.{h,m}"
end
