//
//  SleepyCollectionViewCell.swift
//  SleepyFlo
//
//  Created by mac on 17.12.2021.
//

import UIKit

class SleepyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var sleepyLabel: UILabel!
    @IBOutlet var sleepyImageView: UIImageView!
    
    static let identifier = "SleepyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "SleepyCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: Model) {
        self.sleepyLabel.text = model.text
        self.sleepyImageView.image = UIImage(named: model.imageName)
    }

}
