//
//  FirstViewController.swift
//  SwiftCustom
//
//  Created by jiahao on 15/11/9.
//  Copyright © 2015年 shiguanghui. All rights reserved.
//

import UIKit

class Shape {
    var numofsides = 0;
    
    func simpledescription()->String{
        return "A shape with   \(numofsides)"
    }
}


class NameShape {
    var numofsides = 0
    var name:String
    
    init(name:String)
    {
        self.name = name;
    }
    func simpleDes()->String
    {
        return "nameshape with \(numofsides) \n"
    }
}


class Squre: NameShape {
    var sideLenth :Double
    
    init(name: String,sideLenth:Double) {
        self.sideLenth = sideLenth
        super.init(name: name)
        numofsides = 4
    }
    
    func area() -> Double
    {
        return sideLenth * sideLenth;
    }
    
    override func simpleDes() -> String {
        return " this Squre  With side of lenth \(sideLenth)"
    }
}

//protocol ExampleProtocol{
//    var simpleeDes:String {get}
//    
//    func adjust()
//}
//
//
//class  SimpleClass: ExampleProtocol {
//    var simpleeDes:String = " A very simple class"
//}


class FirstViewController: UIViewController{

    
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

         self.color = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0) 
        
        
        let scores = [1,2,3,4]
        
        for score in scores {
            if score > 3 {
                print("大于 3")
            }else{
                print("小于 3")
            }
        }
        
    
        let httpError =  (404,"not found")
        
        let (statueCode,Des) = httpError;
        
        print(Des,statueCode)
        var simpleeDes:String  = "A very simple class"
        
        func adjust(){
            simpleeDes += "Now is last"
        }
        
        var shape = Shape()
        shape.numofsides = 6;
        
        print(shape.simpledescription())
        
        let test = Squre(name: "sure", sideLenth: 6)
        
      print(test.area()) 
        
      print(test.simpleDes())   
        
        for  i in 1...10{
            print(i)
        }
        
        // Do any additional setup after loading the view.
    }
    
  
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
