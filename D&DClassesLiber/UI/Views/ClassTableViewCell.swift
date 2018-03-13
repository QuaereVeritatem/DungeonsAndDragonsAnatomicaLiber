//
//  ClassTableViewCell.swift
//  D&DClassesLiber
//
//  Created by Robert Martin on 2/16/18.
//  Copyright © 2018 Robert Martin. All rights reserved.
//

import UIKit

class ClassTableViewCell: UITableViewCell {

  @IBOutlet weak var className: UILabel!
  @IBOutlet weak var classImage: UIImageView!
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
