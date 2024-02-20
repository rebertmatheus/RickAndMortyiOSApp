//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 19/02/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
