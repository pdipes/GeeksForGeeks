//
//  VISAViewController.swift
//  GeeksForGeeksPractice
//
//  Created by Dipesh Pokhrel on 5/26/21.
//

import UIKit

class CodeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //sort two arrays
        //both the arrays are sort
        var entryTime =  [1,2,5,5,10]
        var exitTime  = [4,5,5,9,12]
        let mergedArray : [Int] = [1,2,4,5,5,5,5,9,10,12]
        
        var entryExitArray  : [Int] = []
        for counter in 0..<mergedArray.count {
            var obj  = mergedArray[counter]
            if entryTime.contains(obj) {
                let index = entryTime.firstIndex(of: obj)!
                entryExitArray.append(0)
                entryTime[index] = -1
            }
            else if exitTime.contains(obj) {
                let index = exitTime.firstIndex(of: obj)!
                entryExitArray.append(1)
                exitTime[index] = -1
            }
        }
        var numberOfEntry = 0
        var numberOfExit = 0
        var maximum = 0
        for counter in 0..<entryExitArray.count {
            numberOfEntry = 0
            numberOfExit = 0
            for value in 0...counter {
                let key = entryExitArray [value]
                if key == 0 {
                    numberOfEntry = numberOfEntry + 1
                }
                if key == 1 {
                    numberOfExit = numberOfExit + 1
                }
            }
            let values =  numberOfEntry - numberOfExit
            maximum = max(maximum, values)
        }
        print(maximum)
    }
}
