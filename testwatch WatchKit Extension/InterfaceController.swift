//
//  InterfaceController.swift
//  testwatch WatchKit Extension
//
//  Created by HIRATSUKA SHUNSUKE on 2015/02/05.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var okButton: WKInterfaceButton!
    
    var count = 0
    @IBOutlet weak var label: WKInterfaceLabel!

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        NSLog("%@ awakeWithContext", self)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        label.setText("0")
        NSLog("%@ will activate", self)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }
    
    @IBAction func countUp() {
        self.count += 1
        label.setText("\(self.count)")
    }
    
    @IBAction func sendCounter() {
        //Send count to parent application
        println("Watch \(self.count)")
        WKInterfaceController.openParentApplication(["countValue": "\(self.count)"],
            reply: {replyInfo, error in
                println(replyInfo["fromApp"])
        })
    }
    
    @IBAction func onOk(sender: AnyObject) {
        self.okButton.setTitle("changed")
        self.okButton.setBackgroundColor(UIColor.blueColor())
        
    }


}
