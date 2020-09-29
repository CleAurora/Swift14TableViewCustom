//
//  MyCustomCell.swift
//  CustomCell
//
//  Created by Cleís Aurora Pereira on 28/09/20.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!

    @IBOutlet weak var customImageView: UIImageView!

    @IBOutlet weak var labelEmail: UILabel!

    func setup(dev: Developer){
        customImageView.image = UIImage(named: dev.image)
        labelTitle.text = dev.name
        labelEmail.text = dev.email
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    /*       let image = UIImage(data: data!)
     let imagem_arredondada = resizeImage(image!, toTheSize: CGSizeMake(70, 70))




    func resizeImage(image:UIImage, toTheSize size:CGSize)->UIImage{


       var scale = CGFloat(max(size.width/image.size.width,
           size.height/image.size.height))
       var width:CGFloat  = image.size.width  scale
       var height:CGFloat = image.size.height  scale;

       var rr:CGRect = CGRectMake( 0, 0, width, height);

       UIGraphicsBeginImageContextWithOptions(size, false, 0);
       image.drawInRect(rr)
       let newImage = UIGraphicsGetImageCurrentImageContext()
       UIGraphicsEndImageContext();
       return newImage
   }*/

}
