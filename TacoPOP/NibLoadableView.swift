//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Brian Marquis on 7/27/17.
//  Copyright © 2017 brimarq. All rights reserved.
//

import UIKit

// When using nib files, conforming to this protocol allows the use of the name of the nib instead of having to keep up with the string using load nib named.
protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
    return String(describing: self)
    }
}
