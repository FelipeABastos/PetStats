//
//  LearnMoreViewController.swift
//  Pet Stats
//
//  Created by Felipe Amorim Bastos on 25/01/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import UIKit

class LearnMoreViewController: UIViewController {
    
    @IBOutlet var vwDog: UIView?
    @IBOutlet var lblText: UILabel?
    
    //-----------------------------------------------------------------------
    //    MARK: UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        showForm()
        
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
    //    MARK: Custom methods
    //-----------------------------------------------------------------------

    @IBAction func backToHome() {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    private func showForm() {
        
        vwDog?.alpha = 0
        lblText?.alpha = 0
        
        UIView.animate(withDuration: 2.0, delay: 0,
                       options: [],
                       animations: {[weak self] in
                        self?.vwDog?.alpha = 1
                        self?.vwDog?.frame.size.height *= 1.08
                        self?.vwDog?.frame.size.width *= 1.08
        }, completion: nil)
        
        UIView.animate(withDuration: 2.0, delay: 0,
                       options: [],
                       animations: {[weak self] in
                        self?.lblText?.alpha = 1
                        self?.lblText?.frame.size.height *= 1.08
                        self?.lblText?.frame.size.width *= 1.08
        }, completion: nil)
    }
    
}
