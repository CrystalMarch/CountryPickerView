//
//  CountryTableViewCell.swift
//  terncommerce
//
//  Created by 朱慧平 on 2018/1/30.
//  Copyright © 2018年 terncommerce. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    
    var phoneCodeLabel: UILabel!
    var countryNameLabel: UILabel!
    var countryImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let line = UIView()
        line.backgroundColor = UIColor.init(white: 0.0, alpha: 0.3)
        self.contentView.addSubview(line)
        line.translatesAutoresizingMaskIntoConstraints = false
        line.addConstraint(NSLayoutConstraint(item: line, attribute: .height, relatedBy: .equal, toItem: nil, attribute:.notAnAttribute, multiplier: 1.0, constant: 1.0))
        self.contentView.addConstraint(NSLayoutConstraint(item: line, attribute: .width, relatedBy: .equal, toItem: self.contentView, attribute:.width, multiplier: 1.0, constant: 0.0))
        self.contentView.addConstraint(NSLayoutConstraint(item:line,attribute:.left, relatedBy:.equal, toItem:self.contentView, attribute:.left, multiplier:1.0, constant: 0.0))
        self.contentView.addConstraint(NSLayoutConstraint(item:line,attribute:.bottom, relatedBy:.equal, toItem:self.contentView, attribute:.bottom, multiplier:1.0, constant: 0.0))
        countryImageView = UIImageView()
        self.contentView.addSubview(countryImageView)
        countryImageView.translatesAutoresizingMaskIntoConstraints = false
        countryImageView.addConstraint(NSLayoutConstraint(item: countryImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute:.notAnAttribute, multiplier: 1.0, constant: 30))
        countryImageView.addConstraint(NSLayoutConstraint(item: countryImageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute:.notAnAttribute, multiplier: 1.0, constant: 40))
        self.contentView.addConstraint(NSLayoutConstraint(item:countryImageView,attribute:.left, relatedBy:.equal, toItem:self.contentView, attribute:.left, multiplier:1.0, constant: 10))

        self.contentView.addConstraint(NSLayoutConstraint(item: countryImageView, attribute: .centerY, relatedBy:.equal, toItem:self.contentView, attribute:.centerY, multiplier:1.0, constant: 0))
        
        
        phoneCodeLabel = UILabel()
        phoneCodeLabel.textAlignment = .right
        phoneCodeLabel.font = UIFont.systemFont(ofSize: 14)
        phoneCodeLabel.textColor = .gray
        self.contentView.addSubview(phoneCodeLabel)
        phoneCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneCodeLabel.addConstraint(NSLayoutConstraint(item: phoneCodeLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute:NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 30))
        phoneCodeLabel.addConstraint(NSLayoutConstraint(item: phoneCodeLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute:.notAnAttribute, multiplier: 1.0, constant: 50))
        self.contentView.addConstraint(NSLayoutConstraint(item: phoneCodeLabel, attribute: .centerY, relatedBy:.equal, toItem:self.contentView, attribute:.centerY, multiplier:1.0, constant: 0))
        self.contentView.addConstraint(NSLayoutConstraint(item:phoneCodeLabel,attribute:.right, relatedBy:.equal, toItem:self.contentView, attribute:.right, multiplier:1.0, constant: -10))
        
        countryNameLabel = UILabel()
        countryNameLabel.textAlignment = .left
        countryNameLabel.font = UIFont.systemFont(ofSize: 16)
        self.contentView.addSubview(countryNameLabel)
        countryNameLabel.translatesAutoresizingMaskIntoConstraints = false
        countryNameLabel.addConstraint(NSLayoutConstraint(item: countryNameLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute:.notAnAttribute, multiplier: 1.0, constant: 30))
        countryNameLabel.addConstraint(NSLayoutConstraint(item: countryNameLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute:.notAnAttribute, multiplier: 1.0, constant: self.contentView.frame.size.width-20-90))
        self.contentView.addConstraint(NSLayoutConstraint(item: countryNameLabel, attribute: .centerY, relatedBy:.equal, toItem:self.contentView, attribute:.centerY, multiplier:1.0, constant: 0))
        self.contentView.addConstraint(NSLayoutConstraint(item:countryNameLabel,attribute:.left, relatedBy:.equal, toItem:self.contentView, attribute:.left, multiplier:1.0, constant: 55))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
