//
//  LinkListSolutions.swift
//  LinkedList_EPI
//
//  Created by Aditya Gaonkr on 05/01/17.
//  Copyright © 2017 Aditya Gaonkr. All rights reserved.
//

import Foundation

class LinkListSolution {
    
    func detectCycle(list:LinkedList) -> Bool {
        
        var slow  = list.head
        var fast = list.head
        
        
        while true  {
            
            if slow == nil || fast == nil {
                print("\nNo cycle presetn")
                return false
            }
            
            slow = slow?.nextNode
            fast = fast?.nextNode?.nextNode
            
            if slow === fast {
                
                var cycleIndex = 1
                slow = list.head
                
                
                while true {
                    slow = slow?.nextNode
                    fast = fast?.nextNode
                    cycleIndex+=1
                    if slow === fast {
                        
                        break
                    }
                }
                print("\nYes, cycle present at index \(cycleIndex)")
                return true
            }
        }
        
        
    }
    
    func reverseSubList(list:LinkedList,fromIndex:Int,toIndex:Int)  {
        var current = list.head
        var prev : Node? = nil
        var next = current?.nextNode
        var left : Node? = nil
        var count = 1
        
        while count < fromIndex {
            
            if current?.nextNode == nil {
                print("out of index")
                return
            }
            left = current
            current = current?.nextNode
            count += 1
        }
        
        count += 1
        prev = current
        
        current = current?.nextNode
        next = current?.nextNode
        
        while count <= toIndex {
            
            current?.nextNode = prev
            prev = current
            current = next
            next = next?.nextNode
            
            count += 1
        }
        
        left?.nextNode?.nextNode = current
        left?.nextNode = prev
        
        
        print("reverse sublist \n")
        list.displayAllElements()
    }
    
    func reverseLinkedList(listA:LinkedList)  {
        
        var current = listA.head
        var prev : Node? = nil
        var next = current?.nextNode
        
        
        while current != nil {
            current?.nextNode = prev
            prev = current
            current = next
            next = next?.nextNode
            
        }
        
        listA.head = prev
        print("reverse \n")
        listA.displayAllElements()
        
    }
    
    func merge(listA:LinkedList,listB:LinkedList) {
        
        var nodeA = listA.head
        var nodeB = listB.head
        
        var listR = LinkedList()
        
        while nodeA != nil && nodeB != nil {
            
            
            if (nodeA?.value)! <= (nodeB?.value)! {
                
                listR.append(value: (nodeA?.value)!)
                
                nodeA = nodeA?.nextNode
            }else{
                listR.append(value: (nodeB?.value)!)
                nodeB = nodeB?.nextNode
            }
            
        }
        
        if nodeA == nil{
            
            
            while nodeB !== nil {
                
                listR.append(value: (nodeB?.value)!)
                nodeB = nodeB?.nextNode
            }
            
        }else{
            while nodeA !== nil {
                
                listR.append(value: (nodeA?.value)!)
                nodeA = nodeA?.nextNode
            }
        }
        
        print("\nmergerd list =")
        
        listR.displayAllElements()
        
        
    }

}
