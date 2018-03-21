//
//  main.swift
//  BMI Calc
//
//  Created by George Garcia on 3/20/18.
//  Copyright © 2018 GTeam. All rights reserved.
//

import Foundation

func calculateBMI(weight: Double, height: Double) -> Double {
    
    var total = 0.0
    total = (Double(weight * 703)) / (Double(height * height))
    
    if(total > 25.0){
        print("Time to go hard in the gym! You are overweight!")
    } else if(total > 18.50 || total < 25.0){
        print("Not bad! You are at normal weight!")
    } else if(total < 18.50){
        print("Woah! You need some meat in ya! You are underweight!!")
    }
    
    return total
    
}

print("Hello user! Let me help you calculate your BMI!")
print("Enter your weight: ", terminator: "")
var userWeight = readLine()!

print("Now enter your height: ", terminator: "")
var userHeight = readLine()!


print("Your BMI is: " + String(format: "%.2f", calculateBMI(weight: (Double(userWeight)!), height: (Double(userHeight)!))))
