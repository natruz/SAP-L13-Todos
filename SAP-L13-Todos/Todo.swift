//
//  Todo.swift
//  SAP-L13-Todos
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 25/6/22.
//

import Foundation

struct Todo: Identifiable {
    
    let id = UUID()
    
    var title: String
    var details = ""
    var isCompleted = false
    
}
