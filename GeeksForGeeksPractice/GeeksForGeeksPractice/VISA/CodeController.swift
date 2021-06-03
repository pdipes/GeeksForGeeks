//
//  VISAViewController.swift
//  GeeksForGeeksPractice
//
//  Created by Dipesh Pokhrel on 5/26/21.
//

import UIKit

class CodeController: UIViewController {
    let inputs = [1,4,20,3,10,5] //given all the array non negative
    let targetSum = 28
    override func viewDidLoad() {
        super.viewDidLoad()
        var total = 0
        for input in inputs {
            total = total + input
        }
        searchSubArray(with : 0, endingIndex: inputs.count - 1, and: total)
    }
    func searchSubArray(with startingIndex : Int, endingIndex : Int , and currentSum : Int) {
        if  startingIndex > endingIndex{
            print("No match found!")
            return
        }
        else if currentSum == targetSum {
            print("startingIndex \(startingIndex)")
            print("endingIndex \(endingIndex)")
        }else {
            var temporary = currentSum - inputs[startingIndex]
            searchSubArray(with: startingIndex + 1, endingIndex: endingIndex , and: temporary)
            temporary = currentSum - inputs[endingIndex]
            searchSubArray(with: startingIndex, endingIndex: endingIndex - 1, and: temporary)
        }
    }
}
