//
//  SubView.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/23.
//

import SwiftUI

// MARK: - View
struct SubView: View {
    
    @ObservedObject private(set) var viewModel: SubViewModel
    
    var body: some View {
        Button(
            action: { viewModel.input.didTapButton.send(()) },
            label: { Text(viewModel.output.label) }
        )
        .onReceive(viewModel.binding.$index) { index in
            debugPrint(index)
        }
    }
}

// MARK: - Preview
struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(viewModel: .init())
    }
}
