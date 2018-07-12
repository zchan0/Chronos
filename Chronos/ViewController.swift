//
//  ViewController.swift
//  Chronos
//
//  Created by Cencen Zheng on 2018/7/12.
//  Copyright © 2018 Cencen Zheng. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Chronos"
        view.backgroundColor = UIColor.white
        
        let now = Date()
        print("now: \(now)")
        
        let before = now - 7.seconds
        print("before: \(before)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
