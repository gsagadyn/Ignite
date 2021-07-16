//
//  NavigatorLayerType.swift
//  Ignite
//
//  Created by Grzegorz Sagadyn on 20/09/2020.
//

import Foundation

public protocol NavigatorLayerType: AnyObject, IgniteType {
    associatedtype Controller
    
    var controller: Controller! { get set }
}
