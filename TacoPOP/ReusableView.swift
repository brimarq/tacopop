//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Brian Marquis on 7/26/17.
//  Copyright © 2017 brimarq. All rights reserved.
//

import UIKit


// This solves the problem of having to keep up with reuse identifiers. That can be a source of bugs due to possible typos. When conforming to this protocol, the reuse identifier simply takes the name of the respective class.
protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

