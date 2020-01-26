//
//  DogCell.swift
//  Pet Stats
//
//  Created by Felipe Amorim Bastos on 25/01/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import UIKit
import Kingfisher

class PetCell: UICollectionViewCell {
    
    @IBOutlet var dogImage: UIImageView?
    @IBOutlet var lblDogRace: UILabel?
    @IBOutlet var lblDogOrigin: UILabel?
    
    func loadUI(item: Pet) {
        
        dogImage?.kf.setImage(with: URL.init(string: item.imageDog!))
        lblDogRace?.text = item.dogRace
        lblDogOrigin?.text = item.dogOrigin
        
    }
}
