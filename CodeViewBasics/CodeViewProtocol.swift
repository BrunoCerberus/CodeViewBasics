//
//  CodeViewProtocol.swift
//  CodeViewBasics
//
//  Created by Bruno Lopes on 23/07/19.
//  Copyright © 2019 Bruno Lopes. All rights reserved.
//

import Foundation
import SnapKit

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

//code template
extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
