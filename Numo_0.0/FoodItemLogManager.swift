//
//  FoodLogManager.swift
//  Numo_0.0
//
//  Created by Kathryn Manning on 4/5/15.
//  Copyright (c) 2015 kathrynmanning. All rights reserved.

//  Globally Defined Class of NutrientLogManager we can access from anywhere

import UIKit

//global instance of our food log manager
var foodItemLogManager = FoodItemLogManager()

struct foodItem  {
    var name = "un-named"
    var amount = "0.0"
}

class FoodItemLogManager: NSObject {
    
    var foodItems : [foodItem] = []
    
    
    func addFoodItem(name: String, amount: Double){
        foodItems.append(foodItem(name: name, amount: "\(amount) cups"))
    }
    
   
}
