//
//  AdInteractor.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import Foundation

protocol AdInteractorOutputProtocol: AnyObject {
    func errorOccured(message: String)
}

protocol AdInteractorInputProtocol: AnyObject {
    func parseScreenInfo()
}

final class AdInteractor: AdInteractorInputProtocol {
    weak var presenter: AdInteractorOutputProtocol?
    
    func parseScreenInfo() {
        NetworkService.shared.getAdScreenInfo { [weak self] result in
            switch result {
            case .success(let screenInfo):
                DataManager.shared.setStorage(screenInfo)
            case .failure(let error):
                self?.presenter?.errorOccured(message: error.localizedDescription)
            }
        }
    }
}
