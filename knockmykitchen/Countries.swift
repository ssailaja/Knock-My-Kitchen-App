//
//  Countries.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 11/28/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//

import Foundation
enum SortCountries: Int, CaseIterable {
    case italian,mexican
    var description: String {
        switch(self) {
        case .italian: return "Italian"
        case .mexican: return "Mexican"
        }
    }
}
