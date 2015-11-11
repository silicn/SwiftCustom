//
//  ViewController.swift
//  SwiftCustom
//
//  Created by jiahao on 15/8/10.
//  Copyright (c) 2015年 shiguanghui. All rights reserved.
//

import UIKit



enum Seacon{
    case Spring
    case Sumemer
    case Fall
    case Winter
}

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource
{
    var tableView:UITableView?
    
    var fisrtVC:FirstViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var weather:Seacon
        
        weather = Seacon.Spring;
        
        print(weather);

        self.tableView = UITableView(frame: self.view!.frame, style: UITableViewStyle.Plain)
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
        self.view .addSubview(self.tableView!)
        
        self.fisrtVC = FirstViewController()
        
        self.addChildViewController(self.fisrtVC!)
        
        self.view.addSubview((self.fisrtVC?.view)!)
        
        
//        let scores = [1,2,3,4]
//        
//        for score in scores {
//            if score > 3 {
//                print("大于 3")
//            }else{
//                print("小于 3")
//            }
//        }
        
        let vagetable = "red pep"
        
        switch vagetable {
            case "red pep":
            
            let veg = "first"
            print(veg)
        default: break
            
        }
    
        let Number = ["first":[1,2,3,4],
        "sec":[5,6,7,8],
        "third":[11,12,13,14]]
        
        for (king,numbers) in Number{
            
            print(king)
            
            for number in numbers{
                print(number)
            }
        }
        
        var loop = 0
        for i in 0...100{
            loop += i 
        }
        
        print(loop)
        
        
        
        
        print(greet("xiaoming", day: "2015-6-22"))
        
        
        print(sumOf())
        
        print(sumOf(1,2,3,4,5))
        
        
        print(函数嵌套())
        
        
        var incere = makeIncre()
        
        incere(7)
        
        print(incere(7))
        
        
        
        let listNum = [20, 19, 7, 12]
        hasAnyMatches(listNum, condition: lessThanTen)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    func lessThanTen(number: Int) -> Bool {
        return number < 10
    }
    
    func greet(name:String ,day:String)->String
    {
        return "hello \(name), today is \(day)"
    }
    
    func sumOf(numbers:Int...)->Int
    {
        var sem = 0
        
        for number in numbers
        {
            sem += number;
        }
        return sem
    }
    
    //函数嵌套
    
    func 函数嵌套()->Int
    {
        var y = 10
        func add(){
             y += 5
        }
        
        add()
        return y
    }
    
    func makeIncre()->(Int ->Int)
    {
        func addOne(number:Int) -> Int{
            return 100 + number
        }
        
        return addOne
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = String(format: "%i", indexPath.row)
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

