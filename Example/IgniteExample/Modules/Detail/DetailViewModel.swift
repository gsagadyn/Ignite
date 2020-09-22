//
//  DetailViewModel.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import SwiftUI
import Ignite
import Combine
import Singularity

internal class DetailViewModel: ViewModelLayer<DetailNavigator>, ObservableObject {
    // MARK: - Internal Properties

    @Published var powX: Int = 0
    @Published var powY: Int = 0
    @Published var result: Int = 0

    // MARK: - Private Dependency Properties

    @Inject(.main) private var calculatorAssembly: CalculatorAssemblyType
    
    // MARK: - Private Properties
    
    private var bag = Set<AnyCancellable>()

    // MARK: - Initialization

    internal override init(navigator: DetailNavigator) {
        super.init(navigator: navigator)
        
        createBindings()
    }
}

// -----------------------------------------------------------------------------
// MARK: - Private Extension
// -----------------------------------------------------------------------------

extension DetailViewModel {
    private func createBindings() {
        $powX.combineLatest($powY)
            .flatMap { [unowned self] in calculatorAssembly.pow($0, by: $1) }
            .assign(to: \.result, on: self)
            .store(in: &bag)        
    }
}
