//
//  News.swift
//  StretchMyHeader
//
//  Created by Jamie on 2018-09-11.
//  Copyright © 2018 Jamie. All rights reserved.
//

import Foundation
import UIKit



struct News{
    
    enum CategoryColor{
        case world
        case americas
        case europe
        case middleEast
        case africa
        case asiaPacific
        
        func toString() -> String{
            switch self{
            case.world:
                return "World"
            case.americas:
                return "Americas"
            case.europe:
                return "Europe"
            case.middleEast:
                return "Middle East"
            case.africa:
                return "Africa"
            case.asiaPacific:
                return "Asia-Pacific"
            }
        }
        func toColor() -> UIColor {
        
            switch self{
            case.world:
                return #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            case.americas:
                return #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            case.europe:
                return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            case.middleEast:
                return #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
            case.africa:
                return #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            case.asiaPacific:
                return #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
            }
        }
    }
    
    let category :CategoryColor
    let headline :String
}


