//
//  Assembly.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import UIKit

protocol AssemblyProtocol {
    func buildAdModule(router: RouterProtocol) -> UIViewController
}

final class Assembly: AssemblyProtocol {
    func buildAdModule(router: RouterProtocol) -> UIViewController {
        let vc = AdViewController()
        let interactor = AdInteractor()
        let presenter = AdPresenter(view: vc, interactor: interactor, router: router)
        
        vc.presenter = presenter
        interactor.presenter = presenter
        
        return vc
    }
}
