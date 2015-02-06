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

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func onOk(sender: AnyObject) {
        self.okButton.setTitle("changed")
        self.okButton.setBackgroundColor(UIColor.blueColor())
        
    }


}
