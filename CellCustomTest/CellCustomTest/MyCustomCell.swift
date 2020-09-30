//
//  MyCustomCell.swift
//  CellCustomTest
//
//  Created by Cleís Aurora Pereira on 29/09/20.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var imageperson: UIImageView!

    @IBOutlet weak var labelPerson: UILabel!

    @IBOutlet weak var labelObject: UILabel!

    func setup(group: GroupMonica){
        imageperson.image = UIImage(named: group.image)
        labelPerson.text = group.nome
        labelObject.text = group.objeto
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
