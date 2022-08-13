//
//  NoteExtension.swift
//  practiceNotes
//
//  Created by Сергей Прокопьев on 13.08.2022.
//

import Foundation

extension Note {
    
    var json: [String: Any] {
        var json = [String: Any]()
        json[JsonConstants.uuid] = uuid
        json[JsonConstants.title] = title
        json[JsonConstants.content] = content
        // TODO: - Всё что ниже заменить на функции для мапы в просые объекты.
        json[JsonConstants.color] = color
        json[JsonConstants.importance] = importance
        json[JsonConstants.selfDestructionDate] = selfDestructionDate
        return json
    }
    
    static func parse(json: [String: Any]) -> Note? {
        guard let title = json[JsonConstants.title] as? String,
              let uuid = json[JsonConstants.uuid] as? String,
              let content = json[JsonConstants.content] as? String
//              let color = some func
//              let importance: Importance  = some func
//              let selfDestructionDate: Date? = some func
        else {
            print("Desirealize error") // временное
            return nil
        }
        return Note(
            uuid: uuid,
            title: title,
            content: content,
            importance: .regular
        )
    }
}

public struct JsonConstants {
    
    // MARK: - Note constants
    
    static let uuid = "uuid"
    static let title = "title"
    static let content = "content"
    static let color = "color"
    static let importance = "importance"
    static let selfDestructionDate = "selfDestructionDate"
}
