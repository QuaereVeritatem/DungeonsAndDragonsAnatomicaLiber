//
//  Levels.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/28/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct Levels: Codable {
  let level: IntegerLiteralType
  let abilityBonus: IntegerLiteralType // JSON reads as "ability_score_bonus"
  let profBonus: IntegerLiteralType // JSON reads as "prof_bonus"
  var featureChoices: [String]  // JSON reads as "feature_choices"
  let featureNames: [FeatureNames] // JSON reads as "features"
  let spellcasting: String // this a dictionary
  let classSpecific: ClassSpecific // JSON reads as "class_specific"
  let index: IntegerLiteralType
  let levelMainClass: LevelMainClass // JSON reads as "class"
  let url: String
}

struct FeatureNames: Codable {
  let url: String
  let name: String
}

struct SpellCasting: Codable {
  let cantripsKnown: IntegerLiteralType // JSON reads as "cantrips_known"
  let spellsKnown: IntegerLiteralType // JSON reads as "spells_known"
  let spellSlotsLevel1: IntegerLiteralType // JSON reads as "spell_slots_level_1"
  let spellSlotsLevel2: IntegerLiteralType // JSON reads as "spell_slots_level_2"
  let spellSlotsLevel3: IntegerLiteralType // JSON reads as "spell_slots_level_3"
  let spellSlotsLevel4: IntegerLiteralType // JSON reads as "spell_slots_level_4"
  let spellSlotsLevel5: IntegerLiteralType // JSON reads as "spell_slots_level_5"
  let spellSlotsLevel6: IntegerLiteralType // JSON reads as "spell_slots_level_6"
  let spellSlotsLevel7: IntegerLiteralType // JSON reads as "spell_slots_level_7"
  let spellSlotsLevel8: IntegerLiteralType // JSON reads as "spell_slots_level_8"
  let spellSlotsLevel9: IntegerLiteralType // JSON reads as "spell_slots_level_9"
}

struct ClassSpecific: Codable {
  let channelCharges: IntegerLiteralType // JSON reads as "channel_divinity_charges"
  let destroyUndeadCr: IntegerLiteralType // JSON reads as "destroy_undead_cr"
}

struct LevelMainClass: Codable {
  let name: String
  let url: String
}
