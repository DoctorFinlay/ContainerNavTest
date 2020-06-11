//
//  TabBarVC.swift
//  ContainerNavTest
//
//  Created by Iain Coleman on 11/06/2020.
//  Copyright © 2020 Iain Coleman. All rights reserved.
//

import UIKit

class TabBarVC: UIViewController {

    
    
    @IBOutlet weak var tabContainerView: UIView!
    @IBOutlet weak var topContainerHeightCons: NSLayoutConstraint!
    @IBOutlet weak var mainPageLbl: UILabel!
    
    
    
    let stringToPass = "I was passed in from TabBarVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTopContainerAspectCons(newCons: (UIScreen.main.bounds.width * (9/16)))

        // Do any additional setup after loading the view.
    }
    
    
    

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mainToTabBarController" {
            if let tabCont = segue.destination as? CustomTBC {
                
                tabCont.dele = self
                
                for viewController in tabCont.viewControllers! {
                    if var childTab = viewController as? ChildTabDelegate {
                        childTab.mainDelegate = self
                        childTab.passedInString = stringToPass
                    }
                    //What does each tab need?
                }
            }
        }
    }

}


extension TabBarVC: CustomTabBarDelegate {
    
    func onTabWasPressed(tabIndex: Int) {
        
        switch tabIndex {
        case 0:
            setTopContainerAspectCons(newCons: (UIScreen.main.bounds.width * (9/16)))
        case 1,2,3:
            setTopContainerAspectCons(newCons: (UIScreen.main.bounds.width * (9/32)))
        default: break
        }
    }
    
    
    private func setTopContainerAspectCons(newCons: CGFloat) {
        
        UIView.animate(withDuration: 0.3) {
            self.topContainerHeightCons.constant = newCons
            self.view.layoutIfNeeded()
        }
    }
    
    
    func setMainPageLbl(_ str: String) {
        mainPageLbl.text = str
    }

}


protocol CustomTabBarDelegate: class {
    
    func onTabWasPressed(tabIndex: Int)
    func setMainPageLbl(_ str: String)
    
}


protocol ChildTabDelegate {
    
    var mainDelegate: CustomTabBarDelegate? {get set}
    var passedInString: String {get set}
}
