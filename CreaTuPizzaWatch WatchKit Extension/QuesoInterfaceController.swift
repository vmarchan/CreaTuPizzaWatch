//
//  QuesoInterfaceController.swift
//  CreaTuPizzaWatch
//
//  Created by Veronica Marchan on 15/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {
    
    @IBOutlet var cheeseTable: WKInterfaceTable!
    var cheeseType : NSArray = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
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
        cheeseTable.setNumberOfRows(cheeseType.count, withRowType: "PizzaRow")
        
        for i in 0...cheeseType.count {
            if let row = cheeseTable.rowControllerAtIndex(i) as? PizzaCell {
                row.label.setText(cheeseType[i] as? String)
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        
        pizza.queso = cheeseType[rowIndex] as! String
        self.pushControllerWithName("IngredientesInterfaceID", context: pizza)
    }

}
