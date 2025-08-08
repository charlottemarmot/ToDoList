//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import Foundation
import SwiftData//Lets us do CRUD operations

@Model //macro
class ToDoItem{
    var title: String//what the task is
    var isImportant: Bool//is the task important
    
    init(title:String, isImportant: Bool){
        self.title = title
        self.isImportant = isImportant
    }//end of init
    
    
}//end of class
