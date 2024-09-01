//
//  AdViewController.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import UIKit

final class AdViewController: UIViewController {

    var presenter: AdViewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

extension AdViewController: AdViewProtocol {
    
}
