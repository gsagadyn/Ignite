//
//  ViewModelLayer.swift
//  Ignite
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//

import Foundation

open class ViewModelLayer<NavigatorLayer: NavigatorLayerType>: ViewModelLayerType {
    // MARK: - Open Properties

    open var navigator: NavigatorLayer

    // MARK: - Initialization

    public init(navigator: NavigatorLayer) {
        self.navigator = navigator
    }
}
