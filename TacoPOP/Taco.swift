//
//  Taco.swift
//  TacoPOP
//
//  Created by Brian Marquis on 7/26/17.
//  Copyright © 2017 brimarq. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellID: TacoShell!
    private var _proteinID: TacoProtein!
    private var _condimentID: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellID: TacoShell {
        return _shellID
    }
    
    var proteinID: TacoProtein {
        return _proteinID
    }
    
    var condimentID: TacoCondiment {
        return _condimentID
    }
    
    init(id: Int, productName: String, shellID: Int, proteinID: Int, condimentID: Int) {
        _id = id
        _productName = productName
        
        // Taco shell
        switch shellID {
        case 2:
            self._shellID = TacoShell.Corn
        default:
            self._shellID = TacoShell.Flour
        }
        
        // Taco protein
        switch proteinID {
        case 2:
            self._proteinID = TacoProtein.Chicken
        case 3:
            self._proteinID = TacoProtein.Brisket
        case 4:
            self._proteinID = TacoProtein.Fish
        default:
            self._proteinID = TacoProtein.Beef
        }
        
        // Taco condiments
        switch condimentID {
        case 2:
            self._condimentID = TacoCondiment.Plain
        default:
            self._condimentID = TacoCondiment.Loaded
        }
    }
}
