//
//  ViewController.swift
//  Arraya-Algorithms
//
//  Created by Aditya Gaonkr on 07/01/17.
//  Copyright © 2017 Aditya Gaonkr. All rights reserved.
//


/*
 given an array , each index represents digit
 add 1 to the number ans display result
 
 */
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var array = [9,0,9]
        increamentIntegerGivenInArray(array: &array)
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func increamentIntegerGivenInArray(array: inout [Int])  {
        
        let size = array.count - 1
        array[size] = array[size] + 1
        
        
        for i in (1...size).reversed() where array[i] == 10{
        print(i)
            array[i] = 0
            array[i-1] = array[i-1] + 1
            
        }
        
        //check for the carry
        if array[0] == 10 {
            array[0] = 0
            array.insert(1, at: 0)
        }
        
        print(" \naddition result = \(array)\n")
        
        
    }
}

