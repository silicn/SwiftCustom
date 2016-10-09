//
//  ColorView.swift
//  SwiftCustom
//
//  Created by jiahao on 15/11/9.
//  Copyright © 2015年 shiguanghui. All rights reserved.
//

import UIKit

protocol colorDelegate{
    func test()
}

class ColorView: UIView {


    var delegate:colorDelegate?
    
    var button:UIButton?
    

    
     override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.button = UIButton(frame:CGRect(x:0,y:0,width:320,height:30))
        self.button?.backgroundColor = UIColor.red
        
        self.button?.setTitle("店家", for: UIControlState.normal)
        
        self.button?.addTarget(self, action:#selector(ColorView.Click), for: UIControlEvents.touchUpInside)
        
        self.addSubview(self.button!)
        
        self.backgroundColor = UIColor.cyan
        
    }
    
    func Click(){
         print("button 被点击")
        if (self.delegate != nil) {
            self.delegate?.test()
        }
    }

   required init?(coder aDecoder: NSCoder) {
     //  fatalError("init(coder:) has not been implemented")
    super.init(coder: aDecoder)
    
    
   }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
