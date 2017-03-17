Pod::Spec.new do |s|
s.name         = "Brand2Framework"
s.version      = "1.0.0"
s.summary      = "Brand 2 In House Framework"
s.description  = "Sample Cocoa pods application to test the distributed working model for BRAND1"
s.homepage     = "https://github.com/murali-git/InHouseFramework"
s.license      = { :type => 'MIT' }
s.license      = { :type => "MIT", :file => "InHouseFramework/License.txt" }
s.author       = { "murali-git" => "murali.reachme@gmail.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/murali-git/InHouseFramework.git", :tag => s.version }
s.source_files = 'InHouseFramework/InHouseFramework/Classes/Brand2/*.{h,m}','InHouseFramework/InHouseFramework/Classes/Common/*.{h,m}'
s.resources = 'InHouseFramework/InHouseFramework/Assets/Brand2/**/*.{xib,xcassets,png,lproj}','InHouseFramework/InHouseFramework/Assets/Common/**/*.{xib,xcassets,png,lproj}'
end
