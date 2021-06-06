//
//  BaseUrl.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/28/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

//let classBaseUrl = "http://dnd5eapi.co/api/classes/"
//let raceBaseUrl = "http://dnd5eapi.co/api/races"

// These are the base urls for the lists
enum BaseUrl: String {
  case classes =    "https://www.dnd5eapi.co/api/classes/"
  case subclasses = "https://www.dnd5eapi.co/api/subclasses/"
  case races =      "https://www.dnd5eapi.co/api/races/"
  case subraces =   "https://www.dnd5eapi.co/api/subraces/"
}

let classDirectUrls = [
    URL(string: "https://www.dnd5eapi.co/api/classes/barbarian"),
    URL(string: "https://www.dnd5eapi.co/api/classes/bard"),
    URL(string: "https://www.dnd5eapi.co/api/classes/cleric"),
    URL(string: "https://www.dnd5eapi.co/api/classes/druid"),
    URL(string: "https://www.dnd5eapi.co/api/classes/fighter"),
    URL(string: "https://www.dnd5eapi.co/api/classes/monk"),
    URL(string: "https://www.dnd5eapi.co/api/classes/paladin"),
    URL(string: "https://www.dnd5eapi.co/api/classes/ranger"),
    URL(string: "https://www.dnd5eapi.co/api/classes/rogue"),
    URL(string: "https://www.dnd5eapi.co/api/classes/sorcerer"),
    URL(string: "https://www.dnd5eapi.co/api/classes/warlock"),
    URL(string: "https://www.dnd5eapi.co/api/classes/wizard")
]

let subClassDirectUrls = [
    URL(string: "https://www.dnd5eapi.co/api/subclasses/berserker"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/champion"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/devotion"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/draconic"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/evocation"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/fiend"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/hunter"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/land"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/life"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/lore"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/open-hand"),
    URL(string: "https://www.dnd5eapi.co/api/subclasses/thief")
]

let raceDirectUrls = [
    URL(string: "https://www.dnd5eapi.co/api/races/dragonborn"),
    URL(string: "https://www.dnd5eapi.co/api/races/dwarf"),
    URL(string: "https://www.dnd5eapi.co/api/races/elf"),
    URL(string: "https://www.dnd5eapi.co/api/races/gnome"),
    URL(string: "https://www.dnd5eapi.co/api/races/half-elf"),
    URL(string: "https://www.dnd5eapi.co/api/races/half-orc"),
    URL(string: "https://www.dnd5eapi.co/api/races/halfling"),
    URL(string: "https://www.dnd5eapi.co/api/races/human"),
    URL(string: "https://www.dnd5eapi.co/api/races/tiefling")
]

let subRaceDirectUrls = [
    URL(string: "https://www.dnd5eapi.co/api/subraces/high-elf"),
    URL(string: "https://www.dnd5eapi.co/api/subraces/hill-dwarf"),
    URL(string: "https://www.dnd5eapi.co/api/subraces/lightfoot-halfling"),
    URL(string: "https://www.dnd5eapi.co/api/subraces/rock-gnome")
]
