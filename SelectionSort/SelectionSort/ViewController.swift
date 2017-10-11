//
//  ViewController.swift
//  SelectionSort
//
//  Created by Sagar Bhosale on 9/25/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    let input = [4,3,7,9,1,5,2,8,0]
        selectionSort(arr: input)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func selectionSort(arr:[Int])
    {
        var min=0
        
        var inputArray = arr 
        
        for i in 0..<inputArray.count
        {
            min=i
            
            for j in i+1..<inputArray.count
            {
                if inputArray[j]<inputArray[min]
                {
                    min=j
                }
            }
            
            swap(inputArray: &inputArray, first: i, Second: min)
        }
        print("\(inputArray)")
    }

    func swap( inputArray:inout [Int], first:Int, Second: Int)
    {
        let temp = inputArray[first];
        inputArray[first] = inputArray[Second]
        inputArray[Second] = temp
    }

}

