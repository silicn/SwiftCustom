//
//  MyCell.swift
//  SwiftCustom
//
//  Created by jiahao on 15/11/17.
//  Copyright © 2015年 shiguanghui. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    var avatarIMG:UIImageView?
    var nameLab:UILabel?
    
   
    required init?(coder aDecoder: NSCoder) {
        //  fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.avatarIMG = UIImageView(frame: CGRect(x:10, y:10, width:50, height:50)) 
        self.avatarIMG!.backgroundColor = UIColor.cyan
        self.avatarIMG?.layer.cornerRadius = 25
        self.avatarIMG?.layer.masksToBounds = true
        
        self.addSubview(self.avatarIMG!)
        
        self.nameLab = UILabel(frame: CGRect(x:70,y:20,width:100,height:30))
        self.nameLab?.text = "测试"
        self.nameLab?.textColor = UIColor.black
        
        self.addSubview(self.nameLab!)
        
    }
    
    
    
}
