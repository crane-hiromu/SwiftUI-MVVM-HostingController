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
    
    // MARK: Property
    
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: Initializer
    
    init() {
        let viewModel = MainViewModel()
        super.init(rootView: .init(viewModel: viewModel))
        
        bind(viewModel: viewModel)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
}

// MARK: - Private
private extension MainViewController {
    
    func bind(viewModel: MainViewModel) {
        viewModel.output.pushSubView.sink { [weak self] in
            Router.pushSubView(self)
        }.store(in: &cancellables)
        
        viewModel.output.presentSubView.sink { [weak self] in
            Router.presentSubView(self)
        }.store(in: &cancellables)
    }
}
