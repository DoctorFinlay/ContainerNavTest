//
//  CustomTBC.swift
//  ContainerNavTest
//
//  Created by Iain Coleman on 11/06/2020.
//  Copyright © 2020 Iain Coleman. All rights reserved.
//

import UIKit

class CustomTBC: UITabBarController {

    weak var dele: MainPageDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        print("Tapped: \(item)")
        print("Index of item is \(tabBar.items?.firstIndex(of: item))")
        if let index = tabBar.items?.firstIndex(of: item) {
            dele?.onTabWasPressed(tabIndex: index)
        }
    }
    

}
