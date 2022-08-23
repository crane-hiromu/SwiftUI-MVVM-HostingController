//
//  AppDelegate.swift
//  HostingNavigationApp
//
//  Created by h.tsuruta on 2022/08/22.
//

import UIKit

// MARK: - UIResponder
@main
final class AppDelegate: UIResponder {}

// MARK: - UIApplicationDelegate
extension AppDelegate: UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        true
    }

    // MARK: UISceneSession Lifecycle

    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        .init(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(
        _ application: UIApplication,
        didDiscardSceneSessions sceneSessions: Set<UISceneSession>)
    {
        // NOP
    }
}
