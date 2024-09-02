//
//  AdPresenter.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import UIKit

protocol AdViewProtocol: AnyObject {
    func showAlert(with message: String)
}

protocol AdViewPresenterProtocol: AnyObject {
    init(view: AdViewProtocol, interactor: AdInteractorInputProtocol, router: RouterProtocol)
    func prefetchScreenInfo()
    func viewDidAppear()
}

final class AdPresenter {
    private let router: RouterProtocol
    private let interactor: AdInteractorInputProtocol
    private weak var view: AdViewProtocol?
    
    private var errorMessage: String?
    
    init(view: AdViewProtocol, interactor: AdInteractorInputProtocol, router: RouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension AdPresenter: AdViewPresenterProtocol {
    func prefetchScreenInfo() {
        interactor.parseScreenInfo()
    }
    
    func viewDidAppear() {
        guard let errorMessage else {return}
        
        view?.showAlert(with: errorMessage)
        self.errorMessage = nil
    }
}

extension AdPresenter: AdInteractorOutputProtocol {
    func errorOccured(message: String) {
        errorMessage = message
    }
}
