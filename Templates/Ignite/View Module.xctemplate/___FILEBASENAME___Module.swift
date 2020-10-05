//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import SwiftUI
import Ignite

internal final class ___VARIABLE_productName___Module: ModuleLayer<___VARIABLE_productName___View, ___VARIABLE_productName___ViewModel, ___VARIABLE_productName___Navigator> {
    internal override func assemble() -> UIViewController {
        let view = ViewLayer(viewModel: ViewModelLayer(navigator: NavigatorLayer()))
        let vc = UIHostingController(rootView: view)
        
        view.viewModel.navigator.controller = vc
        
        return vc
    }
}
