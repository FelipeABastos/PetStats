//
//  Pet.swift
//  Pet Stats
//
//  Created by Felipe Amorim Bastos on 25/01/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import Foundation

struct Pet: Codable {
    
    var imageDog: String?
    var dogRace: String?
    var dogOrigin: String?
    var dogWeight: Float!
    var dogCalmFrantic: Float!
    var dogFriendly: Float!
    var dogObedient: Float!
}
