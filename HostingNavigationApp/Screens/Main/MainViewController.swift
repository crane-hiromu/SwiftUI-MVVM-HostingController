//
//  ViewController.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/22.
//

import Foundation
import UIKit
import SwiftUI
import Combine

// MARK: - Controller
final class MainViewController: UIHostingController<MainView> {
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        let viewModel = MainViewModel()
        let mainView = MainView(viewModel: viewModel)
        super.init(rootView: mainView)
        
        viewModel.output.pushSubView.sink { [weak self] in
            Router.pushSubView(self)
        }.store(in: &cancellables)
        
        viewModel.output.presentSubView.sink { [weak self] in
            Router.presentSubView(self)
        }.store(in: &cancellables)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
}
