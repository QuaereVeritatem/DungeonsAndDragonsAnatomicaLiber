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

enum BaseUrl: String {
  case classes = "http://dnd5eapi.co/api/classes/" // or try "http://www.dnd5eapi.co/api/classes/"
  case subclasses = "http://dnd5eapi.co/api/subclasses/"
  case races = "http://dnd5eapi.co/api/races/"
  case subraces = "http://dnd5eapi.co/api/subraces/"

}
