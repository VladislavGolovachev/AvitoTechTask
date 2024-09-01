//
//  AdPresenter.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import Foundation

protocol AdViewProtocol: AnyObject {
    
}

protocol AdViewPresenterProtocol: AnyObject {
    init(view: AdViewProtocol, interactor: AdInteractorInputProtocol, router: RouterProtocol)
}

final class AdPresenter {
    private let router: RouterProtocol
    private let interactor: AdInteractorInputProtocol
    private weak var view: AdViewProtocol?
    
    init(view: AdViewProtocol, interactor: AdInteractorInputProtocol, router: RouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension AdPresenter: AdViewPresenterProtocol {
    
}

extension AdPresenter: AdInteractorOutputProtocol {
    
}
