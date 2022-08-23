//
//  SubViewController.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/22.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - Controller
final class SubViewController: UIHostingController<SubView> {
    
    init() {
        let viewModel = SubViewModel()
        let mainView = SubView(viewModel: viewModel)
        super.init(rootView: mainView)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
}
