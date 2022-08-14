//
//  Mustache.swift
//  MrMustache
//
//  Created by Dusan Orescanin on 15/08/2022.
//

import UIKit

    struct Mustache {
        var nameMustache: String
        var descriptionMustache: String
 
        var title: String {
            return "La moustache de style \(nameMustache)"
        }
 
        var image: UIImage? {
            return UIImage(named: nameMustache)
        }
    }
