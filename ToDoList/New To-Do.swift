//
//  New To-Do.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
struct New_To_Do: View {
    
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
  var body: some View {
    VStack {
      Text("Task Title:")
        .font(.title)
        .fontWeight(.bold)
        TextField("Enter the task description", text: $toDoItem.title)
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(15)
        .padding()
        
        
        Toggle(isOn: $toDoItem.isImportant) {
        Text("Is it important?")
      }
      Button {
          addToDo()
      } label: {
        Text("Save")
      }
    }//end of VStack
    .padding()
      
      
      
  }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant:toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    New_To_Do(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
