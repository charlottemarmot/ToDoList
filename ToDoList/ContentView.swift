//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack{
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Spacer()//push left or right
                Button{
                    withAnimation{
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
            }//end of the HStack
            Spacer()//push up
            
            List{//Displays list of tasks
                ForEach(toDos){ ToDoItem in
                    Text (ToDoItem.title)
                }
                
            }
            
            
            if showNewTask {
                New_To_Do()
            }
        }//end of the VStack
        .padding()
    }
}

#Preview {
  ContentView()
}
