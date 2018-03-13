//
//  ViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 1/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  //var rMod = [CharacterRace]()
  var cMod = [CharacterClass]()
  var tempMod = [CharacterClass]()
  // will re-assign in case # changes (this is bad code)
  var classCount: IntegerLiteralType = 12
  var tableData: [String] = ["sdfa", "sdffdsdf", "fksnks", "dfsgfdgs" ,"dsfsgf" , "fsdfgadf" ,"sfdfs"]
  var selectedCell: IntegerLiteralType = 0
  //default image
  
  var tempImage: UIImageView = UIImageView(image: UIImage.init(named: "ClassRacePicFrame") )
  
  @IBOutlet weak var tableView: UITableView!
  @IBAction func subClassBtn(_ sender: UIButton) {
    //send subclass info
  }
  
  @IBAction func raceBtn(_ sender: UIButton) {
    //send race info
  }
  
  @IBAction func subRaceBtn(_ sender: UIButton) {
    //send subrace info
  }
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    tableView.delegate = self
    
    // cMod needs to be passed to next viewController and then passed back!
    if cMod.count < 1 {
    for loopCount in 0...11 {
    let urlString = BaseUrl.classes.rawValue +  "\(loopCount + 1)"
    // ****  optional at end will cause program to crash!!!!
    guard let url = URL(string: urlString) else { return }
    
    
    URLSession.shared.dataTask(with: url) { (data, response, error) in
      if error != nil {
        print(error!.localizedDescription)
      }
      
      guard let data = data else { return }
      
      //Implement JSON decoding and parsing
      do {
        
        //Decode retrived data with JSONDecoder and assing type of Article object...an array of Results
        //let endPointData = try JSONDecoder().decode(DnDResultAPICall.self, from: data) //this was at root endpoint
        let endPointData = try JSONDecoder().decode(CharacterClass.self, from: data)
        self.cMod.append(endPointData)
        print(self.cMod)
        print("********************************************************************************************")
        DispatchQueue.main.async {
          // this calls it everytime..instead lets call when we update(didselectRow)
          self.tableView.reloadData()
          //
        }
        
      } catch let jsonError {
        print(jsonError)
      }
      
      
      }.resume()
    }
    }
    
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    var cCount: IntegerLiteralType = classCount
    if cMod.count > 1 {
      cCount = cMod.count
    }
    return cCount
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "classCellReuseIdentifier") as! ClassTableViewCell
    var tempWord: String = ""
    var arraySkillName: [String] = []
    var arrayProfList: [String] = []
    
    if cMod.count > 7 {
      cell.className.text! = cMod[indexPath.row].name
      cell.classImage.image = UIImage(imageLiteralResourceName: cell.className.text!)
      cell.hitDieNum.text = String(cMod[indexPath.row].hitDie)
      cell.indexNum.text! = String(cMod[indexPath.row].index)
      
      // loop to turn array into 1 string and remove "Skill: " string from skill names
      for loop in 0..<cMod[indexPath.row].profChoices[0].from.count {
        tempWord = cMod[indexPath.row].profChoices[0].from[loop].name
        tempWord = tempWord.replacingOccurrences(of: "Skill: ", with: "")
        arraySkillName.append(tempWord)
      }
      let skillList = arraySkillName.map { String(describing: $0) }
      .joined(separator: ", ")
      cell.skillList.text! = skillList
      
      // loop to turn array into 1 string
      for pLoop in 0..<cMod[indexPath.row].proficiencies.count {
        arrayProfList.append(cMod[indexPath.row].proficiencies[pLoop].name)
      }
      let profList = arrayProfList.map { String(describing: $0) }
      .joined(separator: ", ")
      cell.proficiencyList.text! = profList
      
    } else {
      
      
    }
    
    // cell.textLabel?.text = text
  /*  cell.className.text! = cMod[indexPath.row].name
    cell.hitDieNum.text = String(cMod[indexPath.row].hitDie)
    cell.indexNum.text! = String(cMod[indexPath.row].index)
    */
    //cell.className.text! = tableData[indexPath.row]
    //cell.classImage =
    //this is an array (no "skills" in JSON so prof. choices?)
   // cell.skillList.text! = cMod[indexPath.row].profChoices
    //this is an array (prof. choices or proficiencies?)
   // cell.proficiencyList.text! = cMod[indexPath.row].proficiencies
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    selectedCell = indexPath.row
    print("We changed the selected cell to the current cell of \(selectedCell)")
    
    //self.updateTheLabels(weapon: weapMod[row])
    //updateTableView(charClass: cMod[indexPath.row])
    
    //self.performSegue(withIdentifier: "class2ClassDetail", sender: self)
    
    // Create a variable that you want to send based on the destination view controller
    // You can get a reference to the data by using indexPath shown below
    let selectedProgram = cMod[indexPath.row]
    
    // Create an instance of PlayerTableViewController and pass the variable
    //let destinationVC = Class2ViewController()
    // all examples have this as an equal statement (below)
    //destinationVC.classJSON.append(selectedProgram)
    self.cMod[indexPath.row] = selectedProgram
    tempMod.append(selectedProgram)
    // Let's assume that the segue name is called playerSegue
    // This will perform the segue and pre-load the variable for you to use
    //print("The destinationVC array is \(destinationVC.classJSON)")
    self.performSegue(withIdentifier: "class2ClassDetail", sender: self)
    
    /*
   -  let armor2Send = aMod[indexPath.row]
     tempMod.append(armor2Send)
     self.aMod[indexPath.row] = armor2Send
     
     print(tempMod.last!.name)
     
     self.performSegue(withIdentifier: "armor2ArmorDetailSegue", sender: self)
 */
    
  }
  
  func updateTableView(charClass: CharacterClass) -> ClassTableViewCell {
    //var newCell: ClassTableViewCell = ClassTableViewCell()
    let newCell = tableView.dequeueReusableCell(withIdentifier: "classCellReuseIdentifier") as! ClassTableViewCell
    
    if cMod.count > 1 {
      newCell.className.text! = charClass.name  //className.text! = charClass.name
    }
 
    //newCell.classImage =
    //this is an array (no "skills" in JSON so prof. choices?)
    // cell.skillList.text! = cMod[indexPath.row].profChoices
    //this is an array (prof. choices or proficiencies?)
    // cell.proficiencyList.text! = cMod[indexPath.row].proficiencies
    
    return newCell
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    // *** !!!!PROBlem: this is getting called before func didselectrow
    if segue.destination is Class2ViewController
    {
      print("The segue identifier is \(segue.identifier)")
      let vc = segue.destination as? Class2ViewController
      vc?.classJSON.append(tempMod.last!)
      //print("We sending the class name \(cMod[selectedCell].name) in the segue func over")
    }
  }

  // this will change all the labels to the appropriate json data...we can tie this to a label from pickerview
  func updateTheLabels(c: [CharacterClass]) {
    
    var allPropLabel: String = ""
    //weaponPicker.reloadAllComponents()
    // *** self.pickerView(weapon.name)
    //self.uuid.text = pickerDataSource[row]
    // self.weaponPicker.dataSource = weapon.name as! UIPickerViewDataSource
    // let title = pickerView(weaponPicker, titleForRow: weapon.index!, forComponent: 0)
    /*
    itemType.text = weapon.equipmentCategory
    subType.text = weapon.weaponCategory
    damageType.text = String(describing: weapon.index!)
    rangeLabel.text = weapon.weaponRange
    weaponCategoryLabel.text = weapon.categoryRange
    damageDiceLabel.text =  String(describing: weapon.damage!.diceCount)
    damageValueLabel.text =  String(describing: weapon.damage!.diceValue)
    damageTypeLabel.text = weapon.damage?.damageType.name
    
    // I need to change the banner size to make room for an array of properties
    //propertyLabel.text = getNumbers(array: weapon.properties![0])
    for pLoop in weapon.properties! {
      allPropLabel.append(String(describing:pLoop.name) + ". ")
      print(allPropLabel)
    }
    propertyLabel.text =  allPropLabel
    
    costLabel.text  = String(describing: weapon.cost!.quantity) + " " + (weapon.cost!.unit)
    weightLabel.text = String(describing: weapon.weight!)
    urlLabel.text = weapon.url  */
  }
  

}

