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
    
    enum categoryColor{
        case World
        case Americas
        case Europe
        case MiddleEast
        case Africa
        case AsiaPacific
        
        func toString() -> String{
            switch self{
            case.World:
                return "World"
            case.Americas:
                return "Americas"
            case.Europe:
                return "Europe"
            case.MiddleEast:
                return "Middle East"
            case.Africa:
                return "Africa"
            case.AsiaPacific:
                return "Asia-Pacific"
            }
        }
        func toColor() -> UIColor {
        
            switch self{
            case.World:
                return #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            case.Americas:
                return #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            case.Europe:
                return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            case.MiddleEast:
                return #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
            case.Africa:
                return #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            case.AsiaPacific:
                return #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
                
            }
        }
    }
    
    let category :String
    let headline :String
}


