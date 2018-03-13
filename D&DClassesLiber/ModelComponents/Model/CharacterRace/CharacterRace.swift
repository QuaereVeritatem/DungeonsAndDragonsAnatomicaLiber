//
//  CharacterRace.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/28/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct CharacterRace: Codable {
  let id: String
  let index: IntegerLiteralType
  let name: String
  let speed: IntegerLiteralType
  let abilityBonuses: [IntegerLiteralType]
  let alignment: String
  let ageDescript: String
  let size: String
  let sizeDescript: String
  let startingProf: [StartingProf]
  let languageNames: [LanguageNames]
  let languageDescript: String
  let traits: [Traits]
  let subRaceNames: [SubRaceNames] 
  let url: String
  
  init(id: String, index: IntegerLiteralType, name: String, speed: IntegerLiteralType, abilityBonuses: [IntegerLiteralType], alignment: String, ageDescript: String, size: String, sizeDescript: String, startingProf: [StartingProf], languageNames: [LanguageNames], languageDescript: String, traits: [Traits], subRaceNames: [SubRaceNames], url: String){
    self.id =  id
    self.index = index
    self.name = name
    self.speed = speed
    self.abilityBonuses = abilityBonuses
    self.alignment = alignment
    self.ageDescript = ageDescript
    self.size = size
    self.sizeDescript = sizeDescript
    self.startingProf = startingProf
    self.languageNames = languageNames
    self.languageDescript = languageDescript
    self.traits = traits
    self.subRaceNames = subRaceNames
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case id = "_id"
    case index = "index"
    case name = "name"
    case speed = "speed"
    case abilityBonuses = "ability_bonuses"
    case alignment = "alignment"
    case ageDescript = "age"
    case size = "size"
    case sizeDescript = "size_description"
    case startingProf = "starting_proficiencies"
    case languageNames = "languages"
    case languageDescript = "language_desc"
    case traits = "traits"
    case subRaceNames =  "subraces"
    case url = "url"
    
  }
}

// not sure if I did this one right??
struct StartingProf: Codable {
  let name: String
  let url: String
  let from: [From]?
  let type: String?
  let choose: IntegerLiteralType?
  
  init(name: String, url: String, from: [From], type: String, choose: IntegerLiteralType){
    self.name = name
    self.url = url
    self.from = from
    self.type = type
    self.choose = choose
  }
  
  enum CodingKeys: String, CodingKey {
    case name = "name"
    case url = "url"
    case from = "from"
    case type = "type"
    case choose = "choose"
  }
}

struct LanguageNames: Codable {
  let name: String
  let url: String
  
  init(name: String, url: String){
    self.name = name
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case name = "name"
    case url = "url"
  }
}

struct Traits: Codable {
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

struct SubRaceNames: Codable {
  let name: String
  let url: String
  
  init(name: String, url: String){
    self.name = name
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case name = "name"
    case url = "url"
  }
}





