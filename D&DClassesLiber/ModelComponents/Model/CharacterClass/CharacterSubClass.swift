//
//  CharacterSubClass.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import Foundation

struct CharacterSubClass: Codable {
  let id: String
  let index: IntegerLiteralType
  let mainClass: MainClass // read as "class" in JSON
  let name: String
  let subclassFlavor: String
  let description: [String]  // read as "desc" in JSON
  let featuresUrl: String // read as "features" in JSON
  let url: String
}

struct MainClass: Codable {
  let url: String
  let name: String
}
