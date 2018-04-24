//
//  RaceViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class RaceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  var rMod = [CharacterRace]()
  var tempMod = [CharacterRace]()
  // change the name of this to raceCount
  var classCount: IntegerLiteralType = 9
  var tempImage: UIImageView = UIImageView(image: UIImage.init(named: "ClassRacePicFrame") )
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
     // sMod needs to be passed to next viewController and then passed back!
     if rMod.count < 1 {
     for loopCount in 0...8 {
     let urlString = BaseUrl.races.rawValue +  "\(loopCount + 1)"
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
     let endPointData = try JSONDecoder().decode(CharacterRace.self, from: data)
     self.rMod.append(endPointData)
     print(self.rMod)
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
    if rMod.count > 1 {
      cCount = rMod.count
    }
    return cCount
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "raceCellReuseIdentifier") as! RaceTableViewCell
    var tempWord: String = ""
    var arrayDesc: [String] = []
    var arrayProfList: [String] = []
    
    if rMod.count > 7 {
      cell.raceName.text! = rMod[indexPath.row].name
      // cell.subClassImage.image = UIImage(imageLiteralResourceName: cell.subClassName.text!)
      if let possibleSize = rMod[indexPath.row].size {
        cell.raceSize.text! = possibleSize
      }
      cell.indexNum.text! = String(rMod[indexPath.row].index)
      
      if let arrayLoop = rMod[indexPath.row].languageNames {
        for loop in rMod[indexPath.row].languageNames!{
          arrayDesc.append(loop.name)
        }
      
        let array2String = arrayDesc.map { String(describing: $0) }
          .joined(separator: ", ")
        cell.languageList.text! = array2String
      } else {
        cell.languageList.text! = "NO languages known??"
      }
      
      if let arrayLoop2 = rMod[indexPath.row].traits {
        for loop in rMod[indexPath.row].traits! {
          arrayProfList.append(loop.name)
        }
        let array2String2 = arrayProfList.map { String(describing: $0) }
        .joined(separator: ", ")
        cell.traitList.text! = array2String2
      } else {
        // This isnt working
        cell.traitList.text! = "No traits"
      }
  
      // print("The feature list is \(sMod[indexPath.row].description)")
    } else {
      
      
    }
    
   
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let selectedProgram = rMod[indexPath.row]
    self.rMod[indexPath.row] = selectedProgram
    tempMod.append(selectedProgram)
    self.performSegue(withIdentifier: "race2RaceDetail", sender: self)
  }
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    // *** !!!!PROBlem: this is getting called before func didselectrow
    if segue.destination is Race2ViewController
    {
      print("The segue identifier is \(segue.identifier)")
      let vc = segue.destination as? Race2ViewController
      vc?.raceJSON.append(tempMod.last!)
      //print("We sending the class name \(cMod[selectedCell].name) in the segue func over")
    }
  }
  
  

}
