//
//  DogClass.swift
//  Pet Stats
//
//  Created by Felipe Amorim Bastos on 25/01/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import Foundation

class PetManager {
    
    let retrieversLabrador = Pet(imageDog: "https://blackwhitepet.com.br/resources/img/racas-de-cachorro-labrador.jpg",
                                dogRace: "Retrievers (Labrador)",
                                dogOrigin: "United Kingdom",
                                dogWeight: 0.3,
                                dogCalmFrantic: 0.9,
                                dogFriendly: 1,
                                dogObedient: 0.8)
    
    let germanShepherdDogs = Pet(imageDog: "https://www.clubeparacachorros.com.br/wp-content/uploads/2018/08/pastor-alemao-capa-preta.jpg",
                            dogRace: "German Shepherd",
                            dogOrigin: "Germany",
                            dogWeight: 0.2,
                            dogCalmFrantic: 0.8,
                            dogFriendly: 0.7,
                            dogObedient: 1)
    
    let retrieversGolden = Pet(imageDog: "https://vetsmart-parsefiles.s3.amazonaws.com/3327f2ceb6e24aad97bdb7dfe824fd9c_breed.jpg",
                            dogRace: "Golden Retriever",
                            dogOrigin: "United Kingdom",
                            dogWeight: 0.3,
                            dogCalmFrantic: 0.9,
                            dogFriendly: 1,
                            dogObedient: 0.8)
    
    let frenchBulldogs = Pet(imageDog: "https://vetstreet.brightspotcdn.com/dims4/default/abbb834/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F66%2F74b3b0a0d411e0a2380050568d634f%2Ffile%2FFrench-Bulldog-2-645mk062111.jpg",
                            dogRace: "French Bulldog",
                            dogOrigin: "France",
                            dogWeight: 0.7,
                            dogCalmFrantic: 0.2,
                            dogFriendly: 0.7,
                            dogObedient: 0.1)
    
    let bulldogs = Pet(imageDog: "https://i.pinimg.com/originals/7f/40/7e/7f407e353da065fe1d5d14761f3551e1.jpg",
                        dogRace: "Bulldog",
                        dogOrigin: "England",
                        dogWeight: 0.6,
                        dogCalmFrantic: 0.5,
                        dogFriendly: 0.8,
                        dogObedient: 0.2)
    
    let beagles = Pet(imageDog: "https://tudosobrecachorros.com.br/wp-content/uploads/Beagle-03.jpg",
                        dogRace: "Beagle",
                        dogOrigin: "United Kingdom",
                        dogWeight: 0.8,
                        dogCalmFrantic: 0.2,
                        dogFriendly: 0.7,
                        dogObedient: 0.4)
    let poodles = Pet(imageDog: "https://www.adoropets.com.br/wp-content/uploads/2018/02/poodle-pelo-liso.jpg",
                        dogRace: "Poodle",
                        dogOrigin: "Germany",
                        dogWeight: 0.7,
                        dogCalmFrantic: 0.4,
                        dogFriendly: 0.6,
                        dogObedient: 0.6)
    
    func dogs() -> Array<Pet> {
        
        return [retrieversLabrador, germanShepherdDogs, retrieversGolden, frenchBulldogs, bulldogs, beagles, poodles]
    }
    
}
