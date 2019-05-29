//
//  Cellable.swift
//  Workshop3
//
//  Created by Konstantin Portnov on 5/29/19.
//  Copyright © 2019 Konstantin Portnov. All rights reserved.
//

import Foundation

protocol Cellable {
    static func nibName() -> String
    static func reuseIdentifier() -> String
}
