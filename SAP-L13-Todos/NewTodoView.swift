//
//  NewTodoView.swift
//  SAP-L13-Todos
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 2/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todoTitle = ""
    @State var todoDetails = ""
    @Binding var todos: [Todo]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Task name", text: $todoTitle)
            TextField("Task description", text: $todoDetails)
            
            Button("Save Todo") {
                todos.append(Todo(title: todoTitle, details: todoDetails))
                dismiss()
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}
