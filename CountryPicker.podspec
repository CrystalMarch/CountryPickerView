Pod::Spec.new do |s|

s.name         = "CountryPicker"
s.version      = "1.0.2"
s.summary      = "A simple country code picker on iOS, support Chinese,english,national flag,ISO 3166-1 and calling code."
s.homepage     = "https://github.com/CrystalMarch/CountryPickerView"
s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
s.author             = { "Crystal" => "crystalzhulove@gmail.com" }
s.platform     = :ios
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/CrystalMarch/CountryPickerView.git", :tag => "#{s.version}" }
s.source_files  = "CountryPickerView/Resources/*.{swift,xib}"
s.description  = <<-DESC
DESC
s.resources = "CountryPickerView/Resources/CountryPicker.bundle"
s.requires_arc = true
end
