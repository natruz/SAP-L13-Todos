//
//  ContentView.swift
//  SAP-L13-Todos
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Watch some Paw Patrol", details: "Episodes 42 & 69", isCompleted: true),
        Todo(title: "Conduct a giveaway"),
        Todo(title: "Randomly deduct some points", details: "200 from (groupname)"),
    ]
    
    var body: some View {
        NavigationView() {
            List($todos) { $todo in
                NavigationLink {
                    TodoDetailView(todo: $todo)
                } label: {
                    HStack {
                        Image(systemName: todo.isCompleted ? "checkmark.square.fill" : "square")
                        VStack(alignment: .leading) {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                                .foregroundColor(todo.isCompleted ? .gray : .black)
                            if !todo.details.isEmpty {
                                Text(todo.details)
                                    .font(.caption)
                                    .strikethrough(todo.isCompleted)
                                    .foregroundColor(todo.isCompleted ? .gray : .black)
                            }
                        }
                    }
                }
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
