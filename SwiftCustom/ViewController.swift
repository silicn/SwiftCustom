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
    
    var button:UIButton?
    
  //  var fisrtVC:FirstViewController?
    
    var colorView:ColorView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var weather:Seacon
        
        button?.setTitle("号码", for: UIControlState.normal)        
        weather = Seacon.Spring
        
        print(weather)

        self.tableView = UITableView(frame: self.view!.frame, style: UITableViewStyle.plain)
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
        self.tableView?.register(MyCell.self, forCellReuseIdentifier: "cell")
        
        
        self.view.addSubview(self.tableView!)
    }
        
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyCell
        cell.nameLab?.text = "你好"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        let firstVC = FirstViewController()
        self.navigationController?.pushViewController(firstVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func te(){
        print("te")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

