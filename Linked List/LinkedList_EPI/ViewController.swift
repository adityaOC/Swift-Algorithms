//
//  ViewController.swift
//  LinkedList_EPI
//
//  Created by Aditya Gaonkr on 31/12/16.
//  Copyright © 2016 Aditya Gaonkr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var linkListSoltuion  = LinkListSolution()
    var listA : LinkedList?
    var listB : LinkedList?
    
    
     var menuList = ["Merge List", "Reverse list","Reverse sublist","Detect cycle in List"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
        
        
    }
    
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func  createList()  {
        self.listA = nil
        self.listA = LinkedList(firstValue: 15)
        
        self.listA?.append(value: 20)
        self.listA?.append(value: 30)
        self.listA?.append(value: 40)
        self.listA?.append(value: 50)
        self.listA?.append(value: 60)
        
        print("list A\n")
        self.listA?.displayAllElements()
        
        
        self.listB = nil
        self.listB = LinkedList(firstValue: 15)
        
        self.listB?.append(value: 25)
        self.listB?.append(value: 35)
        print("list B\n")
        self.listB?.displayAllElements()
    }
    // MARK: tableview methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let newCell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        
        newCell.textLabel?.text = self.menuList[indexPath.row]
        
        
        return newCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            createList()
            linkListSoltuion.merge(listA: self.listA!, listB: self.listB!)
        
        case 1:
            createList()
            linkListSoltuion.reverseLinkedList(listA: self.listA!)
            
        case 2:
            createList()
            linkListSoltuion.reverseSubList(list: self.listA!, fromIndex: 2, toIndex: 5)
        
        case 3:
            createList()
                self.listA!.appendAndCrreatCycle(value: 70, cycleAtIndex: 2)
            
            let r = linkListSoltuion.detectCycle(list: self.listA!)

            
            
            
        default:
            print("")
        }
        
    }
}

