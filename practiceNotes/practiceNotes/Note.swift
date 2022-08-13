//
//  Note.swift
//  practiceNotes
//
//  Created by Сергей Прокопьев on 13.08.2022.
//

import UIKit
import Foundation

enum Importance {
    case regular
    case important
    case nonImportant
}

struct Note {
    let uuid: String
    let title: String
    let content: String
    let color: UIColor
    let importance: Importance
    let selfDestructionDate: Date?
    
    init(
        uuid: String = UUID().uuidString,
        title: String,
        content: String,
        color: UIColor = .white,
        importance: Importance,
        selfDestructionDate: Date? = nil
    ) {
        self.uuid = uuid
        self.title = title
        self.content = content
        self.color = color
        self.importance = importance
        self.selfDestructionDate = selfDestructionDate
    }
}
