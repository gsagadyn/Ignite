//
//  ViewModelLayer.swift
//
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//

import Foundation

open class ViewModelLayer<N: NavigatorLayerType>: ViewModelLayerType {
    // MARK: - Open Properties

    open var navigator: N

    // MARK: - Initialization

    public init(navigator: N) {
        self.navigator = navigator
    }
}
