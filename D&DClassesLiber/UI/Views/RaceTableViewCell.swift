//
//  RaceTableViewCell.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/27/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class RaceTableViewCell: UITableViewCell {

  @IBOutlet weak var raceName: UILabel!
  @IBOutlet weak var raceImage: UIImageView!
  @IBOutlet weak var raceSize: UILabel!
  @IBOutlet weak var languageList: UILabel!
  @IBOutlet weak var traitList: UILabel!
  @IBOutlet weak var indexNum: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
