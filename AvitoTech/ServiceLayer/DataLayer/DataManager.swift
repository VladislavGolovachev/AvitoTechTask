//
//  DataManager.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 02.09.2024.
//

import Foundation

protocol DataManagerProtocol {
    func screenInfo() -> AdScreenInfo?
}

final class DataManager: DataManagerProtocol {
    static let shared = DataManager()
    private init() {}
    
    private var storage: AdScreenInfo?
    
    func screenInfo() -> AdScreenInfo? {
        return storage
    }
    
    func setStorage(_ storage: AdScreenInfo) {
        self.storage = storage
    }
}
