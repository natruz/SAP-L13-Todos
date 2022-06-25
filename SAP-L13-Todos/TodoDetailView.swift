//
//  TodoDetailView.swift
//  SAP-L13-Todos
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            HStack {
                TextField("Todo title", text: $todo.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.title2)
            }
            .frame(width: 300, height: 80)
            .cornerRadius(15)
            .background(.gray)
            Spacer()
                .frame(height: 30)
            Button {
                withAnimation {
                    todo.isCompleted.toggle()
                }
            } label: {
                Text("Mark as \(todo.isCompleted ? "incomplete" : "complete")")
                    .font(.title3)
                Image(systemName: todo.isCompleted ? "x.circle.fill" : "checkmark.circle.fill")
                    .foregroundColor(todo.isCompleted ? .red : .green)
            }
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Water the cat")))
    }
}
