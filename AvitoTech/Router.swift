//
//  Router.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import UIKit

protocol RouterProtocol {
    
}

final class Router: RouterProtocol {
    private let assembly: AssemblyProtocol
    private var rootViewController: UIViewController?
    
    init(assembly: AssemblyProtocol) {
        self.assembly = assembly
    }
    
    func initiateRootViewController() -> UIViewController {
        let vc = assembly.buildAdModule(router: self)
        rootViewController = vc
        
        return vc
    }
}
