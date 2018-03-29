//
//  SubClassTableViewCell.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 3/27/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class SubClassTableViewCell: UITableViewCell {

  @IBOutlet weak var subClassName: UILabel!
  @IBOutlet weak var subClassImage: UIImageView!
  @IBOutlet weak var hitDieNum: UILabel!
  @IBOutlet weak var skillList: UILabel!
  @IBOutlet weak var proficiencyList: UILabel!
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
