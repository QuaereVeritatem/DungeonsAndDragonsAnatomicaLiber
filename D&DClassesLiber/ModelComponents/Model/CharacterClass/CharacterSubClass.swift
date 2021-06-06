//
//  CharacterSubClass.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct CharacterSubClass: Codable {
  let index: String?
  let mainClass: MainClass? // read as "class" in JSON
  let name: String? // subclass name
  let subclassFlavor: String?
  let description: [String?]  // read as "desc" in JSON
  let subClassLevels: String? // read as "features" in JSON
  let url: String
  
  init(index: String?, mainClass: MainClass?, name: String?, subclassFlavor: String?, description: [String?], subClassLevels: String?,  url: String){
    self.index = index
    self.mainClass = mainClass
    self.name = name
    self.subclassFlavor = subclassFlavor
    self.description = description
    self.subClassLevels = subClassLevels
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case index = "index"
    case mainClass = "class"
    case name = "name"
    case subclassFlavor = "subclass_Flavor"
    case description = "desc"
    case subClassLevels = "subclass_levels"
    case url = "url"
    
  }
}

struct MainClass: Codable {
  let url: String
  let name: String
  
  init(url: String, name: String){
    self.url = url
    self.name = name
  }
  
  enum CodingKeys: String, CodingKey {
    case url = "url"
    case name = "name"
  }
}

struct SubClassLevels: Codable {
  let url: String
  let name: String
  
  init(url: String, name: String){
    self.url = url
    self.name = name
  }
  
  enum CodingKeys: String, CodingKey {
    case url = "url"
    case name = "name"
  }
}
