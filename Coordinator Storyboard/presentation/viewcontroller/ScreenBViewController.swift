//
//  ScreenBViewController.swift
//  Coordinator Storyboard
//
//  Created by Daniel Negreiros Cangianelli on 06/08/22.
//

import UIKit

class ScreenBViewController: UIViewController , Coordinating {
    var coordinator: Coordinator?
    private var viewModel: ScreenBViewModelType?
    @IBAction func goToScreenBClick(_ sender: UIButton) {
        viewModel?.eventButtonClick()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViewModel()
        setupObservers()
    }
    
    private func initializeViewModel() {
        viewModel = ScreenBViewModel()
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
