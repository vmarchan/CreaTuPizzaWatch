//
//  MasaInterfaceController.swift
//  CreaTuPizzaWatch
//
//  Created by Veronica Marchan on 15/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    

    @IBOutlet var table: WKInterfaceTable!
    var roughType : NSArray = ["Delgada", "Crujiente", "Gruesa"]
    var pizza : Pizza = Pizza(t: "", m: "", q: "", i: [])
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Pizza
        pizza = c
        
        setupTable()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setupTable() {
        table.setNumberOfRows(roughType.count, withRowType: "PizzaRow")
        
        for i in 0...roughType.count {
            if let row = table.rowControllerAtIndex(i) as? PizzaCell {
                row.label.setText(roughType[i] as? String)
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        
        pizza.masa = roughType[rowIndex] as! String
        self.pushControllerWithName("QuesoInterfaceID", context: pizza)
    }

}
