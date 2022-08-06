//
//  AppCoordinator.swift
//  Coordinator Storyboard
//
//  Created by Daniel Negreiros Cangianelli on 06/08/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {

    // MARK: - Properties
    var navigationController: UINavigationController?

    private func performChange<T: UIViewController & Coordinating>(targetType: T, flow: String, reload: Bool = false) {
        guard var vc =  UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: flow) as? T
        else {
            fatalError("Unable to Instantiate View Controller \(String(describing: targetType.nibName))")
        }
        vc.coordinator = self
        if reload {
            navigationController?.popToRootViewController(animated: true)
        } else {
            navigationController?.pushViewController(vc, animated: true)
        }
    }

    func startFlow(by screen: ScreenFlow) {
        switch(screen) {
        case .screenA:
            performChange(targetType: ScreenAViewController(), flow: "screenAViewController",
                          reload: true)
        case .screenB:
            performChange(targetType: ScreenBViewController(), flow: "screenBViewController")
        case .screenC:
            performChange(targetType: ScreenCViewController(), flow: "screenCViewController")
        }
    }

    func start(){
        performChange(targetType: ScreenAViewController(), flow: "screenAViewController")
    }
}


