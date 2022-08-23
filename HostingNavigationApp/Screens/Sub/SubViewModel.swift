//
//  SubViewModel.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/23.
//

import Foundation
import SwiftUI
import Combine

// MARK: - ViewModel
final class SubViewModel: ObservableObject {
    var input: Input
    var output: Output
    @ObservedObject var binding: Binding
    
    init(
        input: Input = .init(),
        output: Output = .init(),
        binding: Binding = .init()
    ) {
        self.input = input
        self.output = output
        self.binding = binding
    }
}

// MARK: - Class
extension SubViewModel {
    final class Input {
        var didTapButton: PassthroughSubject<Void, Never> = .init()
    }
    final class Output: ObservableObject {
        var label: String = "subview"
    }
    final class Binding: ObservableObject {
        @Published var index: Int = 999
    }
}
