//
//  ScreenCViewController.swift
//  Coordinator Storyboard
//
//  Created by Daniel Negreiros Cangianelli on 06/08/22.
//

import UIKit

class ScreenCViewController: UIViewController , Coordinating {
    var coordinator: Coordinator?
    private var viewModel: ScreenCViewModelType?

    @IBAction func goToScreenAClick(_ sender: UIButton) {
        viewModel?.eventButtonClick()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViewModel()
        setupObservers()
    }

    private func initializeViewModel() {
        viewModel = ScreenCViewModel()
    }

    private func setupObservers() {
        viewModel?.nextScreen.observe(on: self, observerBlock: { [weak self] in
            guard let flow = $0 else {
                return
            }
            self?.coordinator?.startFlow(by: flow)
        })
    }
}
