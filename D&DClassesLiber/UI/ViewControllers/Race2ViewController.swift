//
//  Race2ViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class Race2ViewController: UIViewController {

  @IBAction func backBtn(_ sender: UIButton) {
  }
  
  
  @IBOutlet weak var raceName: UILabel!
  @IBOutlet weak var racePic: UIImageView!
  @IBOutlet weak var hitDie: UILabel!
  @IBOutlet weak var strNum: UILabel!
  @IBOutlet weak var dexNum: UILabel!
  @IBOutlet weak var conNum: UILabel!
  @IBOutlet weak var intNum: UILabel!
  @IBOutlet weak var wisNum: UILabel!
  @IBOutlet weak var chaNum: UILabel!
  
  @IBOutlet weak var subRaceList: UILabel!
  @IBOutlet weak var languageList: UILabel!
  @IBOutlet weak var languageDescription: UILabel!
  @IBOutlet weak var traits: UILabel!
  @IBOutlet weak var ageDescription: UILabel!
  @IBOutlet weak var sizeDescription: UILabel!
  @IBOutlet weak var alignmentDescription: UILabel!
  @IBOutlet weak var profList: UILabel!
  var raceJSON: [CharacterRace] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()
        if let classN = raceJSON.last?.name {
          raceName.text! = (raceJSON.last?.name)!
          // subClassPic.image = UIImage(imageLiteralResourceName: subClassName.text!)
          //mainClassName.text! = (raceJSON.last?.mainClass.name)!
          //subClassDescription.text! = (raceJSON.last?.description[0])!
          // hitDieNum.text! = String(describing: subClassJSON.last!.hitDie)
        
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
