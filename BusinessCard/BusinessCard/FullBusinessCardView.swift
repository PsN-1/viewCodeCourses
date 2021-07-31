//
//  FullBusinessCardView.swift
//  BusinessCard
//
//  Created by Pedro dos Santos Neto on 23/07/21.
//

import UIKit

class FullBusinessCardView: UIView {
    private let businessCardComponents: BusinessCardComponents
    private let imageSize: CGFloat = 80
    private let defaultMargin: CGFloat = 5
    
    private let rightContentContainer: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init(businessCardComponents: BusinessCardComponents) {
        self.businessCardComponents = businessCardComponents
        super.init(frame: .zero)
        setupViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViewHierarchy() {
        addSubview(businessCardComponents.photoImageView)
        addSubview(rightContentContainer)
        rightContentContainer.addSubview(businessCardComponents.nameLabel)
        rightContentContainer.addSubview(businessCardComponents.titleLabel)
        rightContentContainer.addSubview(businessCardComponents.emailLabel)
        rightContentContainer.addSubview(businessCardComponents.phoneLabel)
    }
    
    private func setupConstraints() {
        businessCardComponents.photoImageView
            .topAnchor(equalTo: topAnchor)
            .leadingAnchor(equalTo: leadingAnchor, constant: defaultMargin)
            .widthAnchor(equalTo: imageSize)
            .heightAnchor(equalTo: imageSize)
        
        rightContentContainer
            .topAnchor(equalTo: businessCardComponents.photoImageView.topAnchor)
            .heightAnchor(equalTo: imageSize)
            .leadingAnchor(equalTo: businessCardComponents.photoImageView.trailingAnchor)
            .trailingAnchor(equalTo: trailingAnchor, constant: defaultMargin)
        
        businessCardComponents.nameLabel
            .topAnchor(equalTo: rightContentContainer.topAnchor)
            .leadingAnchor(equalTo: rightContentContainer.leadingAnchor)
            .trailingAnchor(equalTo: rightContentContainer.trailingAnchor)

        businessCardComponents.titleLabel
            .topAnchor(equalTo: businessCardComponents.nameLabel.bottomAnchor)
            .leadingAnchor(equalTo: rightContentContainer.leadingAnchor)
            .trailingAnchor(equalTo: rightContentContainer.trailingAnchor)

        businessCardComponents.phoneLabel
            .topAnchor(equalTo: businessCardComponents.titleLabel.bottomAnchor)
            .leadingAnchor(equalTo: rightContentContainer.leadingAnchor)
            .trailingAnchor(equalTo: rightContentContainer.trailingAnchor)

        businessCardComponents.emailLabel
            .topAnchor(equalTo: businessCardComponents.phoneLabel.bottomAnchor)
            .leadingAnchor(equalTo: rightContentContainer.leadingAnchor)
            .trailingAnchor(equalTo: rightContentContainer.trailingAnchor)
    }
}
