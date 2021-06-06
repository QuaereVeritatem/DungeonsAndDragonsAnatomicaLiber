//
//  Languages.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/28/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct Languages: Codable {
  let index: String
  let name: String
  let type: String
  let typicalSpeakers: [String] // JSON reads as "typical_speakers"
  let script: String
  let url: String
  
  init(index: String, name: String, type: String, typicalSpeakers: [String], script: String, url: String){
    self.index = index
    self.name = name
    self.type = type
    self.typicalSpeakers = typicalSpeakers
    self.script = script
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case index = "index"
    case name = "name"
    case type = "type"
    case typicalSpeakers = "typical_speakers"
    case script = "script"
    case url = "url"
  }
}
