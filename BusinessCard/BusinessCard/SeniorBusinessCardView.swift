//
//  SeniorBusinessCardView.swift
//  BusinessCard
//
//  Created by Pedro dos Santos Neto on 23/07/21.
//

import UIKit

class SeniorBusinessCardView: UIView {
    
    private let businessCardComponents: BusinessCardComponents
    private let imageHeight: CGFloat = 100
    private let defaultMargin: CGFloat = 5
    
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
        addSubview(businessCardComponents.nameLabel)
        addSubview(businessCardComponents.titleLabel)
        addSubview(businessCardComponents.photoImageView)
        addSubview(businessCardComponents.emailLabel)
    }
    
    private func setupConstraints() {
        businessCardComponents.photoImageView
            .topAnchor(equalTo: topAnchor)
            .leadingAnchor(equalTo: leadingAnchor)
            .trailingAnchor(equalTo: trailingAnchor)
            .heightAnchor(equalTo: imageHeight)

        businessCardComponents.nameLabel
            .topAnchor(equalTo: businessCardComponents.photoImageView.bottomAnchor, constant: defaultMargin)
            .leadingAnchor(equalTo: leadingAnchor, constant: defaultMargin)
            .trailingAnchor(equalTo: trailingAnchor, constant: defaultMargin)

        businessCardComponents.titleLabel
            .topAnchor(equalTo: businessCardComponents.nameLabel.bottomAnchor, constant: defaultMargin)
            .leadingAnchor(equalTo: leadingAnchor, constant: defaultMargin)
            .trailingAnchor(equalTo: trailingAnchor, constant: defaultMargin)

        businessCardComponents.phoneLabel
            .topAnchor(equalTo: businessCardComponents.titleLabel.bottomAnchor, constant: defaultMargin)
            .leadingAnchor(equalTo: leadingAnchor, constant: defaultMargin)
            .trailingAnchor(equalTo: trailingAnchor, constant: defaultMargin)

        businessCardComponents.emailLabel
            .topAnchor(equalTo: businessCardComponents.phoneLabel.bottomAnchor, constant: defaultMargin)
            .bottomAnchor(equalTo: bottomAnchor)
            .leadingAnchor(equalTo: leadingAnchor, constant: defaultMargin)
            .trailingAnchor(equalTo: trailingAnchor, constant: defaultMargin)
    }
}
//businessCardComponents.photoImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//businessCardComponents.photoImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//businessCardComponents.photoImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//businessCardComponents.phoneLabel.heightAnchor.constraint(equalToConstant: imageHeight).isActive = true
//
//businessCardComponents.nameLabel.topAnchor.constraint(equalTo: businessCardComponents.photoImageView.bottomAnchor).isActive = true
//businessCardComponents.nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//businessCardComponents.nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//
//businessCardComponents.titleLabel.topAnchor.constraint(equalTo: businessCardComponents.nameLabel.bottomAnchor).isActive = true
//businessCardComponents.titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//businessCardComponents.titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//
//businessCardComponents.phoneLabel.topAnchor.constraint(equalTo: businessCardComponents.titleLabel.bottomAnchor).isActive = true
//businessCardComponents.phoneLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//businessCardComponents.phoneLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//
//businessCardComponents.emailLabel.topAnchor.constraint(equalTo: businessCardComponents.phoneLabel.bottomAnchor).isActive = true
//businessCardComponents.emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//businessCardComponents.emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//businessCardComponents.emailLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
