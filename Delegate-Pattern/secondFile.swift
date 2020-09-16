//
//  secondFile.swift
//  Delegate-Pattern
//
//  Created by Appnap WS01 on 16/9/20.
//  Copyright © 2020 Appnap WS01. All rights reserved.
//

import Foundation

protocol SalaryCalculation {
    func totalSalary(base: Int, bonus: Int, profitSahre: Int)
}

class SecondFile {

    var salaryDelegate: SalaryCalculation!
    func findTotalSalary() {
          let mainSalary = 50000
          let bonusAmount = 2000
          let profitShare = 20000
          salaryDelegate.totalSalary(base: mainSalary, bonus: bonusAmount, profitSahre: profitShare)
    }
}




