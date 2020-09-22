//
//  ModuleLayer.swift
//
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//

import UIKit

open class ModuleLayer<V: ViewLayerType, M: ViewModelLayerType, N: NavigatorLayerType>: ModuleLayerType {
    // MARK: - Public Typealiases

    public typealias ViewLayer = V
    public typealias ViewModelLayer = M
    public typealias NavigatorLayer = N

    // MARK: - Initialization

    public init() {}

    // MARK: - Abstract Assemble Method

    open func assemble() -> UIViewController { fatalError("Not implemented abstract method \(#function)") }
}
