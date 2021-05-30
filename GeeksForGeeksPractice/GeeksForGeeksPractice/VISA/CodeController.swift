//
//  VISAViewController.swift
//  GeeksForGeeksPractice
//
//  Created by Dipesh Pokhrel on 5/26/21.
//

import UIKit
//Get maximum sum of subarray from an array
class CodeController: UIViewController {
    let sample = [2,-3,4,5]
    var sum = 0
    var maximumSum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        //get all substrings
        for i in 0..<sample.count {
            for j in i..<sample.count {
                for k in i...j {
                    sum = sum + sample[k]
                    maximumSum =  max(maximumSum, sum)
               
                }
                sum = 0
             
            }
        }
        print(maximumSum)
    }
}
