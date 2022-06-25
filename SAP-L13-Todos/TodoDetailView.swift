//
//  TodoDetailView.swift
//  SAP-L13-Todos
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @State var todo = Todo(title: "Water the cat")
    
    var body: some View {
        VStack {
            TextField("Todo title", text: $todo.title)
                .multilineTextAlignment(.center)
                .frame(width: 300, height: 100)
                .foregroundColor(.white)
                .font(.title2)
                .background(.gray)
                .cornerRadius(15)
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView()
    }
}
