//
//  Resolver+Shared.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 22/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import Foundation
import Singularity

extension Resolver {
    internal static let main: Resolver = {
        let resolver = Resolver()
        resolver.registerModule(MainModule())
        return resolver
    }()
}
