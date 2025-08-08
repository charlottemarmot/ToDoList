//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                
                Text("To-Do List")
                    .font(.system(size:40))
                    .fontWeight(.bold)
                Spacer()//push left or right
                Button{
                    
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }//end of the HStack
            Spacer()//push up
        }//end of the VStack
        .padding()
    }
}

#Preview {
    ContentView()
}
