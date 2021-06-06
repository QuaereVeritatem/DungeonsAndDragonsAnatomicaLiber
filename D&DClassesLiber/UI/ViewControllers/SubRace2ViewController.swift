//
//  SubRace2ViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class SubRace2ViewController: UIViewController {

  @IBAction func backBtn(_ sender: UIButton) {
  }
  
  @IBOutlet weak var subRaceName: UILabel!
  @IBOutlet weak var subRacePic: UIImageView!
  @IBOutlet weak var hitDie: UILabel!
  @IBOutlet weak var strNum: UILabel!
  @IBOutlet weak var dexNum: UILabel!
  @IBOutlet weak var conNum: UILabel!
  @IBOutlet weak var intNum: UILabel!
  @IBOutlet weak var wisNum: UILabel!
  @IBOutlet weak var chaNum: UILabel!
  
  @IBOutlet weak var subRaceDescription: UILabel!
  @IBOutlet weak var profList: UILabel!
  @IBOutlet weak var racialTraitsList: UILabel!
  @IBOutlet weak var languages: UILabel!
  @IBOutlet weak var mainRaceName: UILabel!
  var subRaceJSON: [CharacterSubRace] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()

      if let classN = subRaceJSON.last?.name {
        subRaceName.text! = (subRaceJSON.last?.name)!
        subRacePic.image = UIImage(imageLiteralResourceName: subRaceName.text!)
        mainRaceName.text! = (subRaceJSON.last?.mainRaceName.name)!
        subRaceDescription.text! = (subRaceJSON.last?.descript)!
        
        // languages
        /*
        var langArrayToString: String = ""
        for language in (subRaceJSON.last!.languages) {
          langArrayToString = langArrayToString + " " + language.name
          print("Language for this is \(langArrayToString)")
        }
        languages.text! = langArrayToString
        */
        
        var rTraitsArrayToString: String = ""
        for racTraits in (subRaceJSON.last!.racialTraits!) {
          rTraitsArrayToString = rTraitsArrayToString + " " + racTraits.name
        }
        racialTraitsList.text! = rTraitsArrayToString
        //hitDie.text! = String(describing: subRaceJSON.last!.hitDie)
        
        //this will be all arrays
        //subclass list
        /*   for loopC in raceJSON.last!.subclassFeatures  { // loopC in 0..<subClassJSON.last!.subclassFeatures.count
         arraySubClass.append(loopC.name)
         }
         let subCList = arraySubClass.map { String(describing: $0) }
         .joined(separator: ", ")
         if subCList.isEmpty {
         featuresSpells!.text? = "No Features/Spells"
         } else {
         featuresSpells!.text? = subCList
         } */
        
      }
  }
  



}
