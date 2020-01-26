//
//  HomeViewController.swift
//  Pet Stats
//
//  Created by Felipe Amorim Bastos on 25/01/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var dogs: Array<Pet> = []
    var dog: Pet!
    var dogList: PetManager!
    
    @IBOutlet var pvDogWeight: UIProgressView?
    @IBOutlet var pvDogCalm: UIProgressView?
    @IBOutlet var pvDogFriendly: UIProgressView?
    @IBOutlet var pvDogObedient: UIProgressView?
    
    @IBOutlet var cvDogs: UICollectionView?
    
    //-----------------------------------------------------------------------
    //    MARK: UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogList = PetManager.init()
        dogs = dogList.dogs()
        cvDogs?.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    //-----------------------------------------------------------------------
    //    MARK: UICollectionView Delegate / Datasource
    //-----------------------------------------------------------------------
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let dog = dogs[indexPath.item]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DogCellId", for: indexPath) as! PetCell
        cell.loadUI(item: dog)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let dogSelect = dogs[indexPath.item]
  
        pvDogWeight?.setProgress(dogSelect.dogWeight, animated: true)
        pvDogCalm?.setProgress(dogSelect.dogCalmFrantic, animated: true)
        pvDogFriendly?.setProgress(dogSelect.dogFriendly, animated: true)
        pvDogObedient?.setProgress(dogSelect.dogObedient, animated: true)
    }
    
    //-----------------------------
    //  Flow layout
    //-----------------------------
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 200, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 8, left: 8 , bottom: 50, right: 8)
    }
    
    //-----------------------------------------------------------------------
    //    MARK: Custom methods
    //-----------------------------------------------------------------------
    
    @IBAction func learnMore() {
        
        let learnView = self.storyboard?.instantiateViewController(identifier: "LearnMoreView") as! LearnMoreViewController
        
        self.present(learnView, animated: true, completion: nil)
        
    }
}

