//
//  ChocolateBox.swift
//  ChocolateBoxUnitTesting
//
//  Created by Cormell, David - DPC on 09/10/2024.
//

import Foundation

struct ChocolateBox {
    let chocolates: [Chocolate]
    
    func getAverageChocolateCalorie() -> Double {
        var totalCalories = 0
        
        for chocolate in chocolates {
            totalCalories += chocolate.calories
        }
        
        return Double(totalCalories) / Double(chocolates.count)
    }
    
    func getMostCalorificChocolate() -> (String, Int) {
        var mostCalorific = ""
        var highestCalories = 0
        
        for chocolate in chocolates {
            if chocolate.calories > highestCalories {
                mostCalorific = chocolate.name
                highestCalories = chocolate.calories
            }
        }
        
        return (mostCalorific, highestCalories)
    }
}

struct Chocolate {
    let name: String
    let calories: Int
}
