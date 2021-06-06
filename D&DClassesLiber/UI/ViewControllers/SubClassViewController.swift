//
//  SubClassViewController.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/26/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class SubClassViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  var sMod = [CharacterSubClass]()
  var tempMod = [CharacterSubClass]()
  var classCount: IntegerLiteralType = 12
  var tempImage: UIImageView = UIImageView(image: UIImage.init(named: "ClassRacePicFrame"))
  
  @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      // sMod needs to be passed to next viewController and then passed back!
      if sMod.count < 1 {
        for loopCount in subClassDirectUrls {
          guard let url = loopCount else { return }
          URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
              print(error!.localizedDescription)
            }
            guard let data = data else { return }
            //Implement JSON decoding and parsing
            do {
              let endPointData = try JSONDecoder().decode(CharacterSubClass.self, from: data)
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "subClassCellReuseIdentifier") as! SubClassTableViewCell
    //var tempWord: String = ""
    //var arrayDesc: [String] = []
    //var arrayProfList: [String] = []
    if sMod.count > 7 {
      cell.subClassName.text! = sMod[indexPath.row].name!
      cell.subClassImage.image = UIImage(imageLiteralResourceName: cell.subClassName.text!)
      cell.hitDieNum.text! = sMod[indexPath.row].mainClass!.name
      //cell.indexNum.text! = String(sMod[indexPath.row].index!)
      //let array2String: String? = sMod[indexPath.row].description.map { String(describing: $0) }
       // .joined(separator: ", ")
      let array2String: String? = sMod[indexPath.row].description[0]
      cell.skillList.text! = array2String!

    } else {
    }
    return cell
   }
   
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let selectedProgram = sMod[indexPath.row]
    self.sMod[indexPath.row] = selectedProgram
    tempMod.append(selectedProgram)
    self.performSegue(withIdentifier: "subClass2SubClassDetail", sender: self)
   }

   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // *** !!!!PROBlem: this is getting called before func didselectrow
    if segue.destination is SubClass2ViewController {
      print("The segue identifier is \(segue.identifier)")
      let vc = segue.destination as? SubClass2ViewController
      vc?.subClassJSON.append(tempMod.last!)
      //print("We sending the class name \(cMod[selectedCell].name) in the segue func over")
    }
   }

  
}
