//
//  CharacterClass.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct CharacterClass: Codable {
  let index: String
  let name: String
  let hitDie: IntegerLiteralType
  let profChoices: [ProfChoices]
  let proficiencies: [Proficiencies]
  let savingThrows: [SavingThrows]
  let startingEquip: [StartingEquip]
  let startingEquipOptions: [StartingEquipOptions]
  let classLevels: String  //This should be ClassLevels but I dont want to display all that info together with the rest of the info
  let subClassesLists: [SubclassesLists] // this read as subclasses in JSON
  let spellCastingName: SpellCastingName?
  let url: String
  
  init(index: String, name: String, hitDie: IntegerLiteralType, profChoices: [ProfChoices], proficiencies: [Proficiencies], savingThrows: [SavingThrows], startingEquip: [StartingEquip], startingEquipOptions: [StartingEquipOptions], classLevels: String, subClassesLists: [SubclassesLists], spellCastingName: SpellCastingName?, url: String){
    self.index = index
    self.name = name
    self.hitDie = hitDie
    self.profChoices = profChoices
    self.proficiencies = proficiencies
    self.savingThrows = savingThrows
    self.startingEquip = startingEquip
    self.startingEquipOptions = startingEquipOptions
    self.classLevels = classLevels
    self.subClassesLists = subClassesLists
    self.spellCastingName = spellCastingName
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case index = "index"
    case name = "name"
    case hitDie = "hit_die"
    case profChoices = "proficiency_choices"
    case proficiencies = "proficiencies"
    case savingThrows = "saving_throws"
    case startingEquip = "starting_equipment"
    case startingEquipOptions = "starting_equipment_options"
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

struct StartingEquip: Codable {
  let equipment: Equipment
  let quantity: Int64
  
  init(equipment: Equipment, quantity: Int64) {
    self.equipment = equipment
    self.quantity = quantity
  }
  
  enum CodingKeys: String, CodingKey {
    case equipment = "equipment"
    case quantity = "quantity"
  }
}

struct StartingEquipOptions: Codable {
  let choose: Int64
  let type: String
  let from: [From2]
  
  init(choose: Int64, type: String, from: [From2]){
    self.choose = choose
    self.type = type
    self.from = from
  }
  
  enum CodingKeys: String, CodingKey {
    case choose = "choose"
    case type = "type"
    case from = "from"
  }
}

struct From2: Codable {
  let equipment: Equipment?
  let quantity: Int64?
  
  init(equipment: Equipment?, quantity: Int64?) {
    self.equipment = equipment
    self.quantity = quantity
  }
  
  enum CodingKeys: String, CodingKey {
    case equipment = "equipment"
    case quantity = "quantity"
  }
}

struct Equipment: Codable {
  let index: String
  let name: String
  let url: String
  
  init(index: String, name: String, url: String){
    self.index = index
    self.name = name
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case index = "index"
    case name = "name"
    case url = "url"
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






