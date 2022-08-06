//
//  ScreenViewModel.swift
//  Coordinator Storyboard
//
//  Created by Daniel Negreiros Cangianelli on 06/08/22.
//

import Foundation


protocol ScreenAViewModelType{
    func eventButtonClick()
    var nextScreen: Observable<ScreenFlow?> { get }
}



protocol ScreenBViewModelType{
    func eventButtonClick()
    var nextScreen: Observable<ScreenFlow?> { get }
}



protocol ScreenCViewModelType{
    func eventButtonClick()
    var nextScreen: Observable<ScreenFlow?> { get }
}
