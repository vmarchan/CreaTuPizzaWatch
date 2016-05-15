//
//  TamañoInterfaceController.swift
//  CreaTuPizzaWatch
//
//  Created by Veronica Marchan on 15/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import WatchKit
import Foundation


class TamañoInterfaceController: WKInterfaceController {

    @IBOutlet var sizeTable: WKInterfaceTable!

    let sizeTypes: NSArray = ["Pequeña", "Mediana", "Grande"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
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
        sizeTable.setNumberOfRows(sizeTypes.count, withRowType: "PizzaRow")
        
        for i in 0...sizeTypes.count {
            if let row = sizeTable.rowControllerAtIndex(i) as? PizzaCell {
                row.label.setText(sizeTypes[i] as? String)
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        
        let pizza = Pizza(t: sizeTypes[rowIndex] as! String, m: "", q: "", i: [])
        self.pushControllerWithName("MasaInterfaceID", context: pizza)
    }

}
