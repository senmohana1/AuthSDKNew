Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '13.0'
s.name = "AuthSDK"
s.summary = "AuthSDK to check Cutome UI"
s.requires_arc = true

# 2
s.version = "0.1.7"

# 3
#s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "senthil" => "asen.nathan@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/senmohana1/AuthSDKNew"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/senmohana1/AuthSDKNew.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"

# 8
s.source_files = "AuthSDK/**/*.{swift}"

# 9
#s.resources = "AuthSDK/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "4.2"

end

