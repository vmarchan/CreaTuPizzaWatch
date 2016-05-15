//
//  IngredientesInterfaceController.swift
//  CreaTuPizzaWatch
//
//  Created by Veronica Marchan on 15/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {

    var ingredientsType : NSArray = ["Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"]
    var pizza : Pizza = Pizza(t: "", m: "", q: "", i: [])
    var selectedIngredients: [String] = []
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Pizza
        pizza = c

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func continueConfirmation() ->  Bool{
        if self.selectedIngredients.count == 0 || self.selectedIngredients.count > 5{
            return false
        } else {
            return true
        }
    }
        
    @IBAction func jamonSeleccionado(value: Bool) {
        if value {
            selectedIngredients.append("Jamón")
        } else {
            if self.selectedIngredients.contains("Jamón") {
                let index = self.selectedIngredients.indexOf("Jamón")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }

    @IBAction func pepperoniSelect(value: Bool) {
        if value {
            selectedIngredients.append("Pepperoni")
        } else {
            if self.selectedIngredients.contains("Pepperoni") {
                let index = self.selectedIngredients.indexOf("Pepperoni")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }
    @IBAction func pavoSelect(value: Bool) {
        if value {
            selectedIngredients.append("Pavo")
        } else {
            if self.selectedIngredients.contains("Pavo") {
                let index = self.selectedIngredients.indexOf("Pavo")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }
    @IBAction func salchichaSelect(value: Bool) {
        if value {
            selectedIngredients.append("Salchicha")
        } else {
            if self.selectedIngredients.contains("Salchicha") {
                let index = self.selectedIngredients.indexOf("Salchicha")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }
    @IBAction func aceitunaSelect(value: Bool) {
        if value {
            selectedIngredients.append("Aceituna")
        } else {
            if self.selectedIngredients.contains("Aceituna") {
                let index = self.selectedIngredients.indexOf("Aceituna")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }

    @IBAction func cebollaSelect(value: Bool) {
        if value {
            selectedIngredients.append("Cebolla")
        } else {
            if self.selectedIngredients.contains("Cebolla") {
                let index = self.selectedIngredients.indexOf("Cebolla")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }
    
    @IBAction func pimientoSelect(value: Bool) {
        if value {
            selectedIngredients.append("Pimiento")
        } else {
            if self.selectedIngredients.contains("Pimiento") {
                let index = self.selectedIngredients.indexOf("Pimiento")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }
    @IBAction func piñaSelect(value: Bool) {
        if value {
            selectedIngredients.append("Piña")
        } else {
            if self.selectedIngredients.contains("Piña") {
                let index = self.selectedIngredients.indexOf("Piña")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }
    
    @IBAction func anchoaSelect(value: Bool) {
        if value {
            selectedIngredients.append("Anchoa")
        } else {
            if self.selectedIngredients.contains("Anchoa") {
                let index = self.selectedIngredients.indexOf("Anchoa")
                self.selectedIngredients.removeAtIndex(index!)
            }
        }
    }
    
    
    @IBAction func buttonAction() {
        
        if continueConfirmation() {
            pizza.ingredientes = selectedIngredients
            self.pushControllerWithName("ConfirmInterfaceID", context: pizza)
        } else {
            self.presentControllerWithName("ErrorInterfaceID", context: nil)
        }
    }

}
