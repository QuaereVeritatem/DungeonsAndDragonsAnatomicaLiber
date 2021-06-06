//
//  CharacterFeatures.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

// skills based on level
struct CharacterFeatures: Codable {
  let index: String
  let name: String
  let level: IntegerLiteralType
  let url: String
  let descript: [String] // JSON reads as "desc"
  let mainClass: MainClass // JSON reads as "class"
  
}

