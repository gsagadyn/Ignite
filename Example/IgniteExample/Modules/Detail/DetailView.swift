//
//  DetailView.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import SwiftUI
import Ignite

internal struct DetailView: View, ViewLayerType {
    // MARK: - Internal Properties

    @ObservedObject internal var viewModel: DetailViewModel

    // MARK: - Body Definition

    internal var body: some View {
        Text("Result: \(viewModel.result)")
    }
}

// -----------------------------------------------------------------------------
// MARK: - Preview
// -----------------------------------------------------------------------------

internal struct DetailView_Previews: PreviewProvider {
    internal static var previews: some View {
        DetailView(viewModel: DetailViewModel(navigator: DetailNavigator()))
    }
}
