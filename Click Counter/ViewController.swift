//
//  ViewController.swift
//  Click Counter
//
//  Created by Ruben Robles on 4/5/15.
//  Copyright (c) 2015 Integration Dojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //Label 2
        var label2 = UILabel()
        label2.frame = CGRectMake(200, 150, 60, 60)
        
        label2.text = "0"
        self.view.addSubview(label2)
        self.label2 = label2
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Button 2
        var button2 = UIButton()
        button2.frame = CGRectMake(250, 250, 60, 60)
        button2.setTitle("Decrement", forState: .Normal)
        button2.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(button2)
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }
    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.yellowColor()
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.greenColor()
        
        
    }
    
    

    

}

