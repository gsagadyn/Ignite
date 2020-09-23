//
//  ModuleLayerType.swift
//  Ignite
//
//  Created by Grzegorz Sagadyn on 20/09/2020.
//

import Foundation

public protocol ModuleLayerType: AnyObject, IgniteType {
    associatedtype ViewLayer: ViewLayerType
    associatedtype ViewModelLayer: ViewModelLayerType
    associatedtype NavigatorLayer: NavigatorLayerType

    func assemble() -> NavigatorLayer.Controller
}
