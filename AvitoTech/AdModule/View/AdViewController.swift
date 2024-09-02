//
//  AdViewController.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 01.09.2024.
//

import UIKit
import SnapKit

final class AdViewController: UIViewController {
    var presenter: AdViewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        presenter?.prefetchScreenInfo()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewDidAppear()
    }
}

extension AdViewController: AdViewProtocol {
    func showAlert(with message: String) {
        let alert = UIAlertController(title: "Error occured",
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        
        self.present(alert, animated: true)
    }
}
