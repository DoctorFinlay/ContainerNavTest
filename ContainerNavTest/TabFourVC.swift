//
//  TabFourVC.swift
//  ContainerNavTest
//
//  Created by Iain Coleman on 11/06/2020.
//  Copyright © 2020 Iain Coleman. All rights reserved.
//

import UIKit

class TabFourVC: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    var passedInString: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = passedInString

        // Do any additional setup after loading the view.
    }
    
    
}
