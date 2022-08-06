//
//  Coordinator.swift
//  Coordinator Storyboard
//
//  Created by Daniel Negreiros Cangianelli on 06/08/22.
//
import UIKit

enum ScreenFlow {
    case screenA
    case screenB
    case screenC
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }

    func startFlow(by screen: ScreenFlow)
    func start()

}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
