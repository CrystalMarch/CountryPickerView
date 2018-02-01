# CountryPickerView

#### A simple country code picker on iOS, support Chinese,english,national flag,ISO 3166-1 and calling code.(一个简洁的iOS国家代码选择器，支持中英文、国旗、ISO 3166-1、国际电话区号)
#### your can search the ISO 3166 code,calling code or country name,the picker view will refresh automatically according to the content of your search.
## Effect picture
![alt text](https://github.com/CrystalMarch/CountryPickerView/blob/master/demo.gif)
## Quick start 
```swift
        let countryView = CountrySelectView.shared
        countryView.show()
        countryView.selectedCountryCallBack = { (countryDic) -> Void in
            self.countryNameLabel.text = "\(countryDic["zh"] as! String)   \(countryDic["en"] as! String)"
            self.countryImageView.image = UIImage(named:"CountryPicker.bundle/\(countryDic["locale"] as! String)")
            self.countryCodeLabel.text = "+\(countryDic["code"] as! NSNumber)"
        }
```
