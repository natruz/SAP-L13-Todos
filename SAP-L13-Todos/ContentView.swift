//
//  ContentView.swift
//  SAP-L13-Todos
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Here's a task title", details: "And it's description"),
        /* Random Todos
        Todo(title: "Watch some Paw Patrol", details: "Episodes 42 & 69", isCompleted: true),
        Todo(title: "Conduct a giveaway"),
        Todo(title: "Randomly deduct some points", details: "200 from (groupname)"),
         */
    ]
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView() {
            List {
                ForEach($todos) { $todo in
                    NavigationLink {
                        TodoDetailView(todo: $todo)
                            .offset(y: -50)
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
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
                .onMove { indices, newOffset in
                    todos.move(fromOffsets: indices, toOffset: newOffset)
                }
            }
            .navigationTitle("Todos")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSheetPresented = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            NewTodoView(todos: $todos)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
