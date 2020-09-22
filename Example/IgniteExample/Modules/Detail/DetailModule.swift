//
//  DetailModule.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import UIKit
import SwiftUI
import Ignite

internal class DetailModule: ModuleLayer<DetailView, DetailViewModel, DetailNavigator> {
    // MARK: - Private Properties
    
    private var powX: Int
    private var powY: Int
    
    // MARK: - Initialization
    
    internal init(powX: String, powY: String) {
        self.powX = Int(powX) ?? 0
        self.powY = Int(powY) ?? 0
    }
    
    // MARK: - Assemble
    
    internal override func assemble() -> UIViewController {
        let view = ViewLayer(viewModel: ViewModelLayer(navigator: NavigatorLayer()))
        let vc = UIHostingController(rootView: view)
        
        view.viewModel.navigator.viewController = vc
        view.viewModel.powX = powX
        view.viewModel.powY = powY
        
        return vc
    }
}
