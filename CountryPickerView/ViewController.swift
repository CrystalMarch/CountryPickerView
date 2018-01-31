//
//  ViewController.swift
//  CountryPickerView
//
//  Created by 朱慧平 on 2018/1/31.
//  Copyright © 2018年 CountryPickerView. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryCodeLabel: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func showCountryPickerView(_ sender: UIButton) {
        let countryView = CountrySelectView.shared
        countryView.show()
        countryView.selectedCountryCallBack = { (countryDic) -> Void in
            self.countryNameLabel.text = "\(countryDic["zh"] as! String)   \(countryDic["en"] as! String)"
            self.countryImageView.image = UIImage(named:"CountryPicker.bundle/\(countryDic["locale"] as! String)")
            self.countryCodeLabel.text = "+\(countryDic["code"] as! NSNumber)"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

