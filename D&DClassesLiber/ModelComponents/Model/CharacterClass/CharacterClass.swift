//
//  CharacterClass.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct CharacterClass: Codable {
  let id: String
  let index: IntegerLiteralType
  let name: String
  let hitDie: IntegerLiteralType
  let profChoices: [ProfChoices]
  let proficiencies: [Proficiencies]
  let savingThrows: [SavingThrows]
  let startingEquip: StartingEquip
  let classLevels: ClassLevels
  let subClassesLists: [SubclassesLists] // this read as subclasses in JSON
  let spellCastingName: SpellCastingName?
  let url: String
  
  init(id: String, index: IntegerLiteralType, name: String, hitDie: IntegerLiteralType, profChoices: [ProfChoices], proficiencies: [Proficiencies], savingThrows: [SavingThrows], startingEquip: StartingEquip, classLevels: ClassLevels, subClassesLists: [SubclassesLists], spellCastingName: SpellCastingName?, url: String){
    self.id =  id
    self.index = index
    self.name = name
    self.hitDie = hitDie
    self.profChoices = profChoices
    self.proficiencies = proficiencies
    self.savingThrows = savingThrows
    self.startingEquip = startingEquip
    self.classLevels = classLevels
    self.subClassesLists = subClassesLists
    self.spellCastingName = spellCastingName
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case id = "_id"
    case index = "index"
    case name = "name"
    case hitDie = "hit_die"
    case profChoices = "proficiency_choices"
    case proficiencies = "proficiencies"
    case savingThrows = "saving_throws"
    case startingEquip = "starting_equipment"
    case classLevels = "class_levels"
    case subClassesLists = "subclasses"
    case spellCastingName = "spellcasting"
    case url = "url"
    
  }
}

struct ProfChoices: Codable {
  let from: [From]
  let type: String
  let choose: IntegerLiteralType
  
  init(from: [From], type: String, choose: IntegerLiteralType){
    self.from = from
    self.type = type
    self.choose = choose
  }
  
  enum CodingKeys: String, CodingKey {
    case from = "from"
    case type = "type"
    case choose = "choose"
  }
}

struct From: Codable {
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

struct Proficiencies: Codable {
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

struct SavingThrows: Codable {
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

//not done right
struct StartingEquip: Codable {
  let url: String
  let charClass: String // "class" is var name in JSON
  
  init(url: String, charClass: String){
    self.url = url
    self.charClass = charClass
  }
  
  enum CodingKeys: String, CodingKey {
    case url = "url"
    case charClass = "class"
  }
}

//not done right
struct ClassLevels: Codable {
  let url: String
  let charClass: String // "class" is var name in JSON
  
  init(url: String, charClass: String){
    self.url = url
    self.charClass = charClass
  }
  
  enum CodingKeys: String, CodingKey {
    case url = "url"
    case charClass = "class"
  }
}

struct SubclassesLists: Codable {
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

struct SpellCastingName: Codable {
  let url: String?
  let charClass: String? // "class" is var name in JSON
  
  init(url: String?, charClass: String?){
    self.url = url
    self.charClass = charClass
  }
  
  enum CodingKeys: String, CodingKey {
    case url = "url"
    case charClass = "class"
  }
}






