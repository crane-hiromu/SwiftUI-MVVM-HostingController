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
        super.init(rootView: .init(viewModel: viewModel))
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
}
