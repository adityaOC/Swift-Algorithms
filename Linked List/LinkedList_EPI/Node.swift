//
//  Node.swift
//  LinkedList_EPI
//
//  Created by Aditya Gaonkr on 31/12/16.
//  Copyright © 2016 Aditya Gaonkr. All rights reserved.
//

import Foundation

class Node {
    
    var nextNode : Node?
    var value : Int = 0
    
    
    init(nodeValue v:Int) {
        self.value = v
        nextNode = nil
    }
}

class LinkedList {
    
    var head : Node?
    var tail : Node?
    
    init() {
        self.head = nil
        self.tail = nil
        
    }
    
    init(firstValue value : Int) {
        self.head = Node(nodeValue: value)
        self.tail = self.head
       // self.tail = self.head
    }
    
    func append(value : Int)  {
      /*  self.tail?.nextNode = Node(nodeValue: value)
        self.tail = self.tail?.nextNode
        self.displayAllElements()*/
        
        if self.head == nil {
            self.head = Node(nodeValue: value)
            self.tail = self.head
            return
        }
        
      /*  var newNode = self.head
        while newNode?.nextNode != nil {
        
             newNode = newNode?.nextNode
        }
        
        newNode?.nextNode = Node(nodeValue: value)*/
        
        var newNode = Node(nodeValue: value)
        
        self.tail?.nextNode = newNode
        
        self.tail = self.tail?.nextNode
        
    }
    
    
    
    func appendAndCrreatCycle(value:Int,cycleAtIndex:Int)  {
        
        self.append(value: value)
        
        var count = 1
        var newNode = self.head
        
        while count<cycleAtIndex {
            
            newNode = newNode?.nextNode
            
            count+=1
        }
        
        self.tail?.nextNode = newNode
        
    }
    func displayAllElements()  {
        
        var newNode = self.head
        while newNode != nil {
           
            print("\(newNode?.value) \n")
            
            newNode = newNode?.nextNode
        }
    }
    
}
