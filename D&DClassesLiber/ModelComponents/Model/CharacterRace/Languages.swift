//
//  Languages.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/28/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct Languages: Codable {
  let id: String // JSON reads as "_id"
  let index: IntegerLiteralType
  let name: String
  let type: String
  let typicalSpeakers: [String] // JSON reads as "typical_speakers"
  let script: String
  let url: String
  
  init(id: String, index: IntegerLiteralType, name: String, type: String, typicalSpeakers: [String], script: String, url: String){
    self.id = id
    self.index = index
    self.name = name
    self.type = type
    self.typicalSpeakers = typicalSpeakers
    self.script = script
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case id = "_id"
    case index = "index"
    case name = "name"
    case type = "type"
    case typicalSpeakers = "typical_speakers"
    case script = "script"
    case url = "url"
  }
}
