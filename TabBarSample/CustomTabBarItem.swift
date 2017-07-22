//
//  CustomTabBarItem.swift
//  TabBarSample
//
//  Created by 손성빈 on 2017. 7. 22..
//  Copyright © 2017년 seongbinson. All rights reserved.
//

import UIKit

class CustomTabBarItem: UIView {

    var iconView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(_ item: UITabBarItem) {
        guard let image = item.image else {
            fatalError()
        }
        
        iconView = UIImageView(frame: CGRect(x: (self.frame.width - image.size.width) / 2, y: (self.frame.height - image.size.height) / 2, width: self.frame.width, height: self.frame.height))
        
        iconView.image = image
        iconView.sizeToFit()
        
        addSubview(iconView)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
