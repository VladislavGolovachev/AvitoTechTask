//
//  AdEntity.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 02.09.2024.
//

import Foundation

struct AdScreenResponse: Decodable {
    let result: AdScreenInfo
    let status: String
}

struct AdScreenInfo: Decodable {
    let title: String
    let buttonTitle: String
    let buttonTitleIfSelected: String
    let list: [AdElement]
    
    private enum CodingKeys: String, CodingKey {
        case title = "title"
        case buttonTitle = "actionTitle"
        case buttonTitleIfSelected = "selectedActionTitle"
        case list = "list"
    }
    
    struct AdElement: Decodable {
        let title: String
        let description: String?
        let icon: Icon
        let price: String
        let isSelected: Bool
    }
    
    struct Icon: Decodable {
        let urlString: String
        private enum CodingKeys: String, CodingKey {
            case urlString = "52x52"
        }
    }
}
