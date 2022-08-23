//
//  Router.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/23.
//

import Foundation
import UIKit

// MARK: - Router
enum Router {
    
    static func pushSubView(_ root: UIViewController?) {
        let vc = SubViewController()
        root?.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func presentSubView(_ root: UIViewController?) {
        let vc = SubViewController()
        root?.present(vc, animated: true)
    }
}
