//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import SwiftUI
import Ignite

internal struct ___VARIABLE_productName___View<ViewModel: ___VARIABLE_productName___ViewModelType>: View, ViewLayerType {
    // MARK: - Internal Properties

    @ObservedObject internal var viewModel: ViewModel

    // MARK: - Body Definition

    internal var body: some View {
        Text("Hello, world!")
    }
}

// -----------------------------------------------------------------------------
// MARK: - Preview
// -----------------------------------------------------------------------------

internal struct ___VARIABLE_productName___View_Previews: PreviewProvider {
    internal static var previews: some View {
        ___VARIABLE_productName___View(viewModel: ___VARIABLE_productName___ViewModel(navigator: ___VARIABLE_productName___Navigator()))
    }
}
