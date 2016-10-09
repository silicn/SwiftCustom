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

        self.view.backgroundColor = UIColor.white
         self.color = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0) 
        
        
        let scores = [1,2,3,4]
        
        for score in scores {
            if score > 3 {
                print("大于 3")
            }else{
                print("小于 3")
            }
        }
        
//    
//        let httpError =  (404,"not found")
//        
//        let (statueCode,Des) = httpError;
//        
//        print(Des,statueCode)
//        var simpleeDes:String  = "A very simple class"
//        
//        func adjust(){
//            simpleeDes += "Now is last"
//        }
//        
//        var shape = Shape()
//        shape.numofsides = 6;
//        
//        print(shape.simpledescription())
        
//        let test = Squre(name: "sure", sideLenth: 6)
        
//      print(test.area()) 
//        
//      print(test.simpleDes())   
//        
//        for  i in 1...10{
//            print(i)
  //      }
        
    //  print(sayHello("shiguanghui"))  
        
        print(openRang(begin: 1, end: 10))
        
        
        print(conut(param: "你咋那里的的的的").length)
        
        someFoo(exterParam: 2)
        
        someFool(localParam: 2)
        
        someFoolls(locparam: "nimei")
        
        
        print(join(string: "shiguanghui", toString: "shanshan",withJoiner:"-"))
        
        
        print(arctNum(numbers: 1,2,3,4))
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func arctNum(numbers:Double...)->Double
    {
        var total:Double = 0
        
        for number in numbers
        {
            total += number
        }
        
        return total
        
    }
    
    
    func join(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
            return s1 + joiner + s2
    }
    
    func someFoo(exterParam localParam:Int){
         print(localParam)
    }
    
    func someFool(localParam:Int){
        print(localParam)
    }
    
    
    func someFoolls(locparam:String)
    {
        print(locparam)
    }
    
    func conut(param:String)->(length:Int,sub:String)
    {
        return (8,(param as NSString).substring(to: 3))
    }
    
    func openRang(begin:Int,end:Int) ->Int
    {
        print("openRang")
        return end - begin;
    }
    
  
    func sayHello(persionname:String)->String
    {
        return persionname + "  hello !"
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
