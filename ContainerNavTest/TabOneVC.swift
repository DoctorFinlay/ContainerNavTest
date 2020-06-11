//
//  TabOneVC.swift
//  ContainerNavTest
//
//  Created by Iain Coleman on 11/06/2020.
//  Copyright © 2020 Iain Coleman. All rights reserved.
//

import UIKit

class TabOneVC: UIViewController, ChildTabDelegate {

    @IBOutlet weak var lbl: UILabel!
    
    var mainDelegate: MainPageDelegate?
    var passedInString: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = passedInString
    }


    override func viewDidAppear(_ animated: Bool) {
        mainDelegate?.setMainPageLbl("Set by Tab 1")
    }
    
}
