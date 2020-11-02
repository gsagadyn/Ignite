//
//  ModuleLayerType.swift
//  Ignite
//
//  Created by Grzegorz Sagadyn on 20/09/2020.
//

import Foundation

public protocol ModuleLayerType: AnyObject, IgniteType {
    associatedtype ViewLayer: ViewLayerType

    func assemble() -> ViewLayer.ViewModelLayer.NavigatorLayer.Controller
}
