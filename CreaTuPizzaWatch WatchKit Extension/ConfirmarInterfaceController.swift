//
//  ConfirmarInterfaceController.swift
//  CreaTuPizzaWatch
//
//  Created by Veronica Marchan on 15/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarInterfaceController: WKInterfaceController {

    @IBOutlet var size: WKInterfaceLabel!
    @IBOutlet var rough: WKInterfaceLabel!
    @IBOutlet var cheese: WKInterfaceLabel!
    @IBOutlet var ingredients: WKInterfaceLabel!
    @IBOutlet var price: WKInterfaceLabel!
    
    var pizza : Pizza = Pizza(t: "", m: "", q: "", i: [])
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Pizza
        pizza = c
        
        size.setText(pizza.tamaño)
        rough.setText(pizza.masa)
        cheese.setText(pizza.queso)
        
        var ingr : String = ""
        for i in 0...pizza.ingredientes.count - 1 {
            if i == 0 {
                ingr = pizza.ingredientes[i] 
            } else {
                ingr = "\(ingr), \(pizza.ingredientes[i])"
            }
        }
        ingredients.setText(ingr)
        price.setText("\(Int(arc4random_uniform(20)) + 10) $")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func cancelButtonAction() {
        self.popToRootController()
    }

}
