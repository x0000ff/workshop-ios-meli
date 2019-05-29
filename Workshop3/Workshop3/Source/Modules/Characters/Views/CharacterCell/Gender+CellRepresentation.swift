//
//  Gender+CellRepresentation.swift
//  Workshop3
//
//  Created by Konstantin Portnov on 5/29/19.
//  Copyright © 2019 Konstantin Portnov. All rights reserved.
//

import Foundation

extension Gender {
    
    func chracterCellStringRepresentation() -> String? {
        switch self {
        case .Female:
            return "Mujer"
        case .Male:
            return "Hombre"
        }
    }
    
}
