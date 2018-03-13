//
//  CharacterSubRace.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/28/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct CharacterSubRace: Codable {
  let id: String
  let index: IntegerLiteralType
  let name: String
  let mainRaceName: MainRaceName
  let descript: String
  let abilityBonuses: [IntegerLiteralType]
  let startingRaceProf: [StartingRaceProf] // JSON reads as "starting_proficiencies"
  let languages: [Languages]
  let racialTraits: [Traits] // JSON reads as "racial_traits"
  let url: String
  
  init(id: String, index: IntegerLiteralType, name: String, mainRaceName: MainRaceName, descript: String, abilityBonuses: [IntegerLiteralType], startingRaceProf: [StartingRaceProf], languages: [Languages], racialTraits: [Traits], url: String){
    self.id =  id
    self.index = index
    self.name = name
    self.mainRaceName = mainRaceName
    self.descript = descript
    self.abilityBonuses = abilityBonuses
    self.startingRaceProf = startingRaceProf
    self.languages = languages
    self.racialTraits = racialTraits
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case id = "_id"
    case index = "index"
    case name = "name"
    case mainRaceName = "race"
    case descript = "desc"
    case abilityBonuses = "ability_bonuses"
    case startingRaceProf = "starting_proficiencies"
    case languages = "languages"
    case racialTraits = "racial_traits"
    case url = "url"
    
  }
}

struct MainRaceName: Codable {
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

struct StartingRaceProf: Codable {
  let id: String
  let index: IntegerLiteralType
  let type: String
  let name: String
  let classes: [CharacterClass]
  let races: [CharacterRace]
  let url: String
  
  init(id: String, index: IntegerLiteralType, type: String, name: String, classes: [CharacterClass], races: [CharacterRace], url: String){
    self.id = id
    self.index = index
    self.type = type
    self.name = name
    self.classes = classes
    self.races = races
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case id = "_id"
    case index = "index"
    case type = "type"
    case name = "name"
    case classes = "classes"
    case races = "races"
    case url = "url"
  }
}



