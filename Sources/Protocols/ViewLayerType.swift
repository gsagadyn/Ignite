//
//  ViewLayerType.swift
//  Ignite
//
//  Created by Grzegorz Sagadyn on 20/09/2020.
//

import Foundation

public protocol ViewLayerType: IgniteType {
    associatedtype ViewModelLayer: ViewModelLayerType

    var viewModel: ViewModelLayer { get }
}
