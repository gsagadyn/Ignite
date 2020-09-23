//
//  HomeNavigator.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 20/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import UIKit
import SwiftUI
import Ignite

internal class HomeNavigator: NavigatorLayer {    
    internal func presentDetailView(powX: String, powY: String) {
        let vc = DetailModule(powX: powX, powY: powY).assemble()
        controller.navigationController?.pushViewController(vc, animated: true)
    }
}
