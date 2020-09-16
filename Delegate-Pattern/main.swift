//
//  main.swift
//  Delegate-Pattern
//
//  Created by Appnap WS01 on 16/9/20.
//  Copyright © 2020 Appnap WS01. All rights reserved.
//

import Foundation

class Main: SalaryCalculation {
    init(handler: SecondFile) {
        handler.salaryDelegate = self
    }
    func totalSalary(base: Int, bonus: Int, profitSahre: Int) {
        var sum = 0
        sum = base + bonus + profitSahre
        print(sum)
    }
}

class Another: SalaryCalculation {
    init(handler: SecondFile) {
        handler.salaryDelegate = self
    }
    func totalSalary(base: Int, bonus: Int, profitSahre: Int) {
        print("No Salary Bro!")
    }
}

let fz = SecondFile()
let mainObj = Main(handler: fz)
fz.findTotalSalary()

let anotherObj = Another(handler: fz)
fz.findTotalSalary()
