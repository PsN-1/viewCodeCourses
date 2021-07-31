//
//  CodeView.swift
//  viewCode
//
//  Created by Pedro dos Santos Neto on 22/07/21.
//

import Foundation
import SnapKit

protocol CodeView {
    func buildViewHeirarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CodeView {
    func setupView() {
        buildViewHeirarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
