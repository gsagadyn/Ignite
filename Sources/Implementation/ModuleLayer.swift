//
//  ModuleLayer.swift
//  Ignite
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//

import Foundation

open class ModuleLayer<ViewLayer: ViewLayerType>: ModuleLayerType {
    // MARK: - Public Typealiases

    public typealias ViewLayer = ViewLayer

    // MARK: - Initialization

    public init() {}

    // MARK: - Abstract Assemble Method

    open func assemble() -> ViewLayer.ViewModelLayer.NavigatorLayer.Controller { fatalError("Not implemented method \(#function)") }
}
