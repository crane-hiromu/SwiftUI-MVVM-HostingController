//
//  MainView.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/23.
//

import SwiftUI

// MARK: - View
struct MainView: View {
    
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        VStack(spacing: 16) {
            Button("push") {
                viewModel.input.didTapPush.send(())
            }
            Button("present") {
                viewModel.input.didTapPresent.send(())
            }
        }
    }
}

// MARK: - Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: .init())
    }
}
