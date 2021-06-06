//
//  CharacterSubRace.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/28/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct CharacterSubRace: Codable {
  let index: String
  let name: String
  let mainRaceName: MainRaceName
  let descript: String
  let abilityBonuses: [AbilityBonuses]
  let startingRaceProf: [StartingRaceProf]? // JSON reads as "starting_proficiencies"
  let languages: [Languages]
  // there is a "language options" var for high elf [in JSON]
  let languageOptions: LanguageOptions?
  let racialTraits: [Traits]? // JSON reads as "racial_traits"
  // there is a "racial trait options" var for high elf [in JSON]
  let racialTraitOptions: RacialTraitOptions?
  let url: String
  
  init(index: String, name: String, mainRaceName: MainRaceName, descript: String, abilityBonuses: [AbilityBonuses], startingRaceProf: [StartingRaceProf]?, languages: [Languages], languageOptions: LanguageOptions?, racialTraits: [Traits]?, racialTraitOptions: RacialTraitOptions?, url: String){
    self.index = index
    self.name = name
    self.mainRaceName = mainRaceName
    self.descript = descript
    self.abilityBonuses = abilityBonuses
    self.startingRaceProf = startingRaceProf
    self.languages = languages
    self.languageOptions = languageOptions
    self.racialTraits = racialTraits
    self.racialTraitOptions = racialTraitOptions
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case index = "index"
    case name = "name"
    case mainRaceName = "race"
    case descript = "desc"
    case abilityBonuses = "ability_bonuses"
    case startingRaceProf = "starting_proficiencies"
    case languages = "languages"
    case languageOptions = "language_options"
    case racialTraits = "racial_traits"
    case racialTraitOptions = "racial_trait_options"
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
  let index: String
  let type: String?
  let name: String
  let classes: [CharacterClass]?
  let races: [CharacterRace]?
  let url: String
  
  init(index: String, type: String?, name: String, classes: [CharacterClass]?, races: [CharacterRace]?, url: String){
    self.index = index
    self.type = type
    self.name = name
    self.classes = classes
    self.races = races
    self.url = url
  }
  
  enum CodingKeys: String, CodingKey {
    case index = "index"
    case type = "type"
    case name = "name"
    case classes = "classes"
    case races = "races"
    case url = "url"
  }
}
  
  struct LanguageOptions: Codable {
    let choose: IntegerLiteralType
    let from: [From]
    let type: String
    
    init(choose: IntegerLiteralType, from: [From], type: String){
      self.choose = choose
      self.from = from
      self.type = type
  }
    
    enum CodingKeys: String, CodingKey {
      case choose = "choose"
      case from = "from"
      case type = "type"
    }
}
  
  struct RacialTraitOptions: Codable {
    let choose: IntegerLiteralType
    let from: [From]
    let type: String
    
    init(choose: IntegerLiteralType, from: [From], type: String){
      self.choose = choose
      self.from = from
      self.type = type
  }
    
    enum CodingKeys: String, CodingKey {
      case choose = "choose"
      case from = "from"
      case type = "type"
    }
}




