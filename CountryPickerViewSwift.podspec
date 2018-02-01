Pod::Spec.new do |s|

s.name         = "CountryPickerViewSwift"
s.version      = "1.2.0"
s.summary      = "A simple country code picker on iOS, support Chinese,english,national flag,ISO 3166-1 and calling code."
s.homepage     = "https://github.com/CrystalMarch/CountryPickerView"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "Crystal" => "crystalzhulove@gmail.com" }
s.platform     = :ios
s.platform     = :ios, "9.0"
s.source       = { :git => "https://github.com/CrystalMarch/CountryPickerView.git", :tag => "#{s.version}" }
s.source_files  = "Resources/*.swift", "Resources/*.xib"
s.resources = "Resources/CountryPicker.bundle"
s.requires_arc = true
end
