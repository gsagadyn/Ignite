//
//  HomeView.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 20/09/2020.
//

import SwiftUI
import Ignite

internal struct HomeView: View, ViewLayerType {
    // MARK: - Internal Properties
    
    @ObservedObject internal var viewModel: HomeViewModel

    // MARK: - Body Definition
    
    internal var body: some View {
        VStack(spacing: 16.0) {
            HStack(spacing: 2.0) {
                Text("pow(")
                TextField("x", text: $viewModel.powX)
                    .frame(width: 44.0)
                Text(",")
                TextField("y", text: $viewModel.powY)
                    .frame(width: 44.0)
                Text(")")
            }
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)

            Button("Show Result!") {
                viewModel.showResultAction()
            }
        }
        .padding()
        .navigationBarTitle("Calculator")
        .onAppear {
            viewModel.resetDataAction()
        }
    }
}

// -----------------------------------------------------------------------------
// MARK: - Preview
// -----------------------------------------------------------------------------

internal struct HomeView_Previews: PreviewProvider {
    internal static var previews: some View {
        HomeView(viewModel: HomeViewModel(navigator: HomeNavigator()))
    }
}
