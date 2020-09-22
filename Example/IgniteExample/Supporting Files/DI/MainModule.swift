//
//  MainModule.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 22/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import Foundation
import Singularity

internal class MainModule: ModuleType {
    internal func load(to resolver: ResolverType) {
        resolver.register(type: MultiplyServiceType.self) { MultiplyService() }
        resolver.register(type: CalculatorAssemblyType.self) { CalculatorAssembly() }
    }
}
