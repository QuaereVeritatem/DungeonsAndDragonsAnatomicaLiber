//
//  Class2ViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 2/27/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class Class2ViewController: UIViewController {

  @IBAction func backBtn(_ sender: UIButton) {
  }
  
  @IBOutlet weak var className: UILabel!
  @IBOutlet weak var classPic: UIImageView!
  @IBOutlet weak var hitDie: UILabel!
  @IBOutlet weak var strNum: UILabel!
  @IBOutlet weak var dexNum: UILabel!
  @IBOutlet weak var conNum: UILabel!
  @IBOutlet weak var intNum: UILabel!
  @IBOutlet weak var wisNum: UILabel!
  @IBOutlet weak var chaNum: UILabel!
  
  @IBOutlet weak var subClassList: UILabel!
  @IBOutlet weak var skillList: UILabel!
  @IBOutlet weak var profList: UILabel!
  @IBOutlet weak var startingEquipmList: UILabel!
  @IBOutlet weak var classLevelsInfo: UILabel!
  
  // var classJSON: CharacterClass
  //var thisClass: [CharacterClass] = []
  var classJSON: [CharacterClass] = []
  var arraySkillName: [String] = []
  var arrayProfName: [String] = []
  var arraySubClass: [String] = []
  var arrayClassLevels: [String] = []
  var arrayStartingEquip: [String] = []
  var tempWord: String = ""
  
    override func viewDidLoad() {
      super.viewDidLoad()
      
      if let classN = classJSON.last?.name {
        className.text! = (classJSON.last?.name)!
        classPic.image = UIImage(imageLiteralResourceName: className.text!)
        hitDie.text! = String(describing: classJSON.last!.hitDie)
      
     // if let strNum.text! = String(describing: (thisClass?.savingThrows[])!) {}
    //  if let strIndex = thisClass?.savingThrows[0...].name.index(of: "STR") {
    //    strNum.text! = " 1"
     // }
      
      //dexNum.text? = String(describing: (thisClass?.dexNum)!)
      //conNum.text? = String(describing: (thisClass?.conNum)!)
      //intNum.text? = String(describing: (thisClass?.intNum)!)
      //wisNum.text? = String(describing: (thisClass?.wisNum)!)
      //chaNum.text? = String(describing: (thisClass?.chaNum)!)
      
      //this will be all arrays
      //subclass list
        for loopC in 0..<classJSON.last!.subClassesLists.count {
          arraySubClass.append((classJSON.last!.subClassesLists[loopC].name))
      }
      let subCList = arraySubClass.map { String(describing: $0) }
        .joined(separator: ", ")
      subClassList!.text? = subCList
      
      //skills list
      for loop in 0..<classJSON.last!.profChoices[0].from.count {
        tempWord = (classJSON.last!.profChoices[0].from[loop].name)
        tempWord = tempWord.replacingOccurrences(of: "Skill: ", with: "")
        arraySkillName.append(tempWord)
      }
      let skills = arraySkillName.map { String(describing: $0) }
        .joined(separator: ", ")
      skillList.text! = skills
      
      //proficiencies list
      for loopP in 0..<classJSON.last!.proficiencies.count {
        arrayProfName.append((classJSON.last!.proficiencies[loopP].name))
      }
      let profs = arrayProfName.map { String(describing: $0) }
        .joined(separator: ", ")
      profList.text! = profs
      
      //fix data models
/*      startingEquipmList.text? = (thisClass?.startingEquip { String(describing: $0) }
        .joined(separator: ", "))!  */
      
      //fix data models
      classLevelsInfo.text? = (classJSON.last!.classLevels.charClass.map { String(describing: $0) }
        .joined(separator: ", "))
      } else {
        // need something in case first if statement is bad
      }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func isSavingThrowNull(){
    
  }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
