# CountryPickerView
 
 A simple country code picker on iOS, support chinese,english,national flag,ISO 3166-1 and calling code.(一个简洁的iOS国家代码选择器，支持中英文、国旗、ISO 3166-1、国际电话区号)
 your can search the ISO 3166 code,calling code or country name,the picker view will refresh automatically according to the content of your search.(你可以搜索ISO 3166码，电话区号或者国家名字，pikerView将会根据你搜索的内容自动更新搜索结果)

## Effect picture
![alt text](https://github.com/CrystalMarch/CountryPickerView/blob/master/demo.gif)

## Installation

### CocoaPods

Add to your Podfile:

Swift:
```ruby
use_frameworks!
pod 'CountryPickerViewSwift'
```
And then:
```ruby
pod install
```

Import the framework in your code:
```swift
import CountryPickerViewSwift
```

## Quick start 
```swift
         let countryView = CountrySelectView.shared
        countryView.show()
//        countryView.dismiss() //dismiss the picker view
        countryView.barTintColor = .gray //default is green
        countryView.searchBarPlaceholder = "phone code" //default is "search"
        countryView.displayLanguage = .chinese //default is english
        countryView.countryNameFont = UIFont.systemFont(ofSize: 18) //default is  UIFont.systemFont(ofSize: 17)
        countryView.countryNameColor = .brown //default is black
        countryView.countryPhoneCodeFont = UIFont.systemFont(ofSize: 10)//default is  UIFont.systemFont(ofSize: 14)
        countryView.countryNameColor = .black //default is gray
        countryView.selectedCountryCallBack = { countryDic in
            print(countryDic)
            /* countrydic format like
                 [
                     "en": "Angola",
                     "zh": "安哥拉",
                     "locale": "AO",
                     "code": 244
                     "countryImage": UIImage
                 ]
             
             */
        }
```
