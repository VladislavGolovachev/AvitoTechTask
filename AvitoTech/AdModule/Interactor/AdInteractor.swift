//
//  AdInteractor.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import Foundation

protocol AdInteractorOutputProtocol: AnyObject {
    
}

protocol AdInteractorInputProtocol: AnyObject {
    
}

final class AdInteractor: AdInteractorInputProtocol {
    weak var presenter: AdInteractorOutputProtocol?
}
