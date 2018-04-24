//
//  SubRaceViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class SubRaceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  var sMod = [CharacterSubRace]()
  var tempMod = [CharacterSubRace]()
  // change the name of this to subraceCount
  var classCount: IntegerLiteralType = 6
  var tempImage: UIImageView = UIImageView(image: UIImage.init(named: "ClassRacePicFrame") )
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

      // sMod needs to be passed to next viewController and then passed back!
      if sMod.count < 1 {
        for loopCount in 0...5 {
          let urlString = BaseUrl.subraces.rawValue +  "\(loopCount + 1)"
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
              let endPointData = try JSONDecoder().decode(CharacterSubRace.self, from: data)
              self.sMod.append(endPointData)
              print(self.sMod)
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
    if sMod.count > 1 {
      cCount = sMod.count
    }
    return cCount
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCell(withIdentifier: "subRaceCellReuseIdentifier") as! SubRaceTableViewCell
   var tempWord: String = ""
   var arrayDesc: [String] = []
   var arrayProfList: [String] = []
   if sMod.count > 5 {
   cell.subRaceName.text! = sMod[indexPath.row].name
   // cell.subClassImage.image = UIImage(imageLiteralResourceName: cell.subClassName.text!)
   cell.subRaceSize.text! = sMod[indexPath.row].mainRaceName.name
   cell.indexNum.text! = String(sMod[indexPath.row].index)
   cell.languageList.text! = sMod[indexPath.row].descript
   if let arrayLoop2 = sMod[indexPath.row].racialTraits {
    for loop in sMod[indexPath.row].racialTraits! {
      arrayProfList.append(loop.name)
    }
    let array2String2 = arrayProfList.map { String(describing: $0) }
    .joined(separator: ", ")
    cell.traitList.text! = array2String2
    } else {
      // This isnt working
    cell.traitList.text! = "No traits"
    }

   } else {
   
   
   }
   return cell
   }
   
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let selectedProgram = sMod[indexPath.row]
    self.sMod[indexPath.row] = selectedProgram
    tempMod.append(selectedProgram)
    self.performSegue(withIdentifier: "subRace2SubRaceDetail", sender: self)
   }
  
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // *** !!!!PROBlem: this is getting called before func didselectrow
    if segue.destination is SubRace2ViewController {
      print("The segue identifier is \(segue.identifier)")
      let vc = segue.destination as? SubRace2ViewController
      vc?.subRaceJSON.append(tempMod.last!)
      //print("We sending the class name \(cMod[selectedCell].name) in the segue func over")
    }
   }
  

}
