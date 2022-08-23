//
//  MainViewModel.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/23.
//

import Foundation
import SwiftUI
import Combine

// MARK: - ViewModel
final class MainViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()

    var input: Input
    var output: Output
    var binding: Binding
    
    init(
        input: Input = .init(),
        output: Output = .init(),
        binding: Binding = .init()
    ) {
        self.input = input
        self.output = output
        self.binding = binding
        
        input.didTapPush
            .sink { output.pushSubView.send(()) }
            .store(in: &cancellables)
        
        input.didTapPresent
            .sink { output.presentSubView.send(()) }
            .store(in: &cancellables)
    }
}

// MARK: - Class
extension MainViewModel {
    final class Input {
        var didTapPush: PassthroughSubject<(), Never> = .init()
        var didTapPresent: PassthroughSubject<(), Never> = .init()
    }
    final class Output {
        var pushSubView: PassthroughSubject<(), Never> = .init()
        var presentSubView: PassthroughSubject<(), Never> = .init()
    }
    final class Binding {
        // NOP
    }
}
