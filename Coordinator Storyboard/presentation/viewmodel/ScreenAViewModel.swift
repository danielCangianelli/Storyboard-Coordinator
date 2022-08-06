//
//  ScreenAViewModel.swift
//  Coordinator Storyboard
//
//  Created by Daniel Negreiros Cangianelli on 06/08/22.
//

import Foundation

final class ScreenAViewModel: ScreenAViewModelType {
    var nextScreen: Observable<ScreenFlow?> = Observable(nil)

    func eventButtonClick() {
        self.nextScreen.value = .screenB
    }
}
