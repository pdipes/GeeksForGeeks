//
//  VISAViewController.swift
//  GeeksForGeeksPractice
//
//  Created by Dipesh Pokhrel on 5/26/21.
//

import UIKit
//kadanes Algorithm to find maximum
class CodeController: UIViewController {
    let sampleArray = [2,-3,-4,6,7,8,-19,2,3,4,5,6,7,8,9]
    override func viewDidLoad() {
        super.viewDidLoad()
        var maximumSum = 0
        var currentSum = 0
        for i in 0..<sampleArray.count {
            currentSum = currentSum + sampleArray[i]
            if currentSum < 0 {
                currentSum = 0
            }
            if currentSum > maximumSum {
                maximumSum = currentSum
            }
        }
        print(maximumSum)
    }
}
