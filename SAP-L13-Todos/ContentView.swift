//
//  ContentView.swift
//  SAP-L13-Todos
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Watch some Paw Patrol"),
        Todo(title: "Conduct a giveaway"),
        Todo(title: "Randomly deduct some points"),
    ]
    
    var body: some View {
        NavigationView() {
            List(todos) { todo in
                Text(todo.title)
            }
            .navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
