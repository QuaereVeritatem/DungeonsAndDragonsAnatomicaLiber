//
//  SubClass2ViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class SubClass2ViewController: UIViewController {

  @IBOutlet weak var subClass2Scroll: UIScrollView!
  @IBAction func backButton(_ sender: UIButton) {
  }
  @IBOutlet weak var subClassName: UILabel!
  @IBOutlet weak var hitDieNum: UILabel!
  @IBOutlet weak var subClassPic: UIImageView!
  @IBOutlet weak var strNum: UILabel!
  @IBOutlet weak var dexNum: UILabel!
  @IBOutlet weak var conNum: UILabel!
  @IBOutlet weak var intNum: UILabel!
  @IBOutlet weak var wisNum: UILabel!
  @IBOutlet weak var chaNum: UILabel!
  @IBOutlet weak var subClassDescription: UILabel!
  @IBOutlet weak var featuresSpells: UILabel!
  @IBOutlet weak var mainClassName: UILabel!
  
  
  var sMod = [CharacterSubClass]()
  var tempMod = [CharacterSubClass]()
  var classCount: IntegerLiteralType = 12
  var tempImage: UIImageView = UIImageView(image: UIImage.init(named: "ClassRacePicFrame"))
  
  var subClassJSON: [CharacterSubClass] = []
  var arraySkillName: [String] = []
  var arrayProfName: [String] = []
  var arraySubClass: [String] = []
  var arrayClassLevels: [String] = []
  var arrayStartingEquip: [String] = []
  var tempWord: String = ""
  
    override func viewDidLoad() {
        super.viewDidLoad()

      if let classN = subClassJSON.last?.name {
        subClassName.text! = (subClassJSON.last?.name)!
       // subClassPic.image = UIImage(imageLiteralResourceName: subClassName.text!)
        mainClassName.text! = (subClassJSON.last?.mainClass.name)!
        subClassDescription.text! = (subClassJSON.last?.description[0])!
       // hitDieNum.text! = String(describing: subClassJSON.last!.hitDie)
        
        //this will be all arrays
        //subclass list
        for loopC in subClassJSON.last!.subclassFeatures  { // loopC in 0..<subClassJSON.last!.subclassFeatures.count
          arraySubClass.append(loopC.name)
        }
        let subCList = arraySubClass.map { String(describing: $0) }
          .joined(separator: ", ")
        if subCList.isEmpty {
          featuresSpells!.text? = "No Features/Spells"
        } else {
          featuresSpells!.text? = subCList
        }

      }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
