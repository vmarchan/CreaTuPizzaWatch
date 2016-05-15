//
//  Pizza.swift
//  CreaTuPizzaWatch
//
//  Created by Veronica Marchan on 15/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import WatchKit

class Pizza: NSObject {

    var masa : String = ""
    var tamaño: String = ""
    var queso : String = ""
    var ingredientes : [String]  = []
    
    init (t:String, m:String, q: String, i: [String]){
        tamaño = t
        masa = m
        queso = q
        ingredientes = i
    }
}
