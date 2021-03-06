//
//  HomeModule.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 20/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import UIKit
import SwiftUI
import Ignite

internal class HomeModule: ModuleLayer<HomeView> {
    internal override func assemble() -> UIViewController {
        let navigator = ViewLayer.ViewModelLayer.NavigatorLayer()
        let viewModel = ViewLayer.ViewModelLayer(navigator: navigator)
        let view = ViewLayer(viewModel: viewModel)
        let vc = UIHostingController(rootView: view)
        
        view.viewModel.navigator.controller = vc
        
        return vc
    }
}
