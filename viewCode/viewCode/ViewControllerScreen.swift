//
//  ViewControllerScreen.swift
//  viewCode
//
//  Created by Pedro dos Santos Neto on 22/07/21.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    private lazy var button: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .systemPink
        view.setTitle("Press Me", for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        
        return view
    }()
    
    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    
    let upperBox = UserGridView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.3
        flash.fromValue = 1
        flash.toValue = 0.1
        
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 2
        layer.add(flash, forKey: nil)
    }
}

extension ViewControllerScreen: CodeView {
    func buildViewHeirarchy() {
        addSubview(button)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
        
        addSubview(upperBox)
    }
    
    func setupConstraints() {
        
        upperBox.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(100)
        }

        gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(200)
            make.centerY.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalTo(self).inset(30) // self == .equalToSuperview
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
}
