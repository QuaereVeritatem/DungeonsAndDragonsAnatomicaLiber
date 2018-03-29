//
//  SubRaceTableViewCell.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/27/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class SubRaceTableViewCell: UITableViewCell {

  @IBOutlet weak var subRaceName: UILabel!
  @IBOutlet weak var subRaceImage: UIImageView!
  @IBOutlet weak var subRaceSize: UILabel!
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
