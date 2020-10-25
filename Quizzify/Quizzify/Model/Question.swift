//
//  Question.swift
//  Quizzify
//
//  Created by Vaibhav Patil on 25/10/20.
//

import Foundation

struct Question{
    let text: String
    let answer: String
    
    init(q: String, a:String) {
        text = q
        answer = a
    }
}
