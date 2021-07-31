//
//  UserGridView.swift
//  viewCode
//
//  Created by Pedro dos Santos Neto on 22/07/21.
//

import UIKit

final class UserGridView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var textView1: UILabel = {
        let view = UILabel()
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var textView2: UILabel = {
        let view = UILabel()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var textView3: UILabel = {
        let view = UILabel()
        view.backgroundColor = .purple
        return view
    }()
    
    lazy var textView4: UILabel = {
        let view = UILabel()
        view.backgroundColor = .cyan
        return view
    }()
    
    lazy var outerContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fill
        view.spacing = 8.0
        
        return view
    }()
    
    lazy var innerContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        
        return view
    }()
    
    lazy var verticalContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8.0
        
        return view
    }()
}

extension UserGridView: CodeView {
    
    func buildViewHeirarchy() {
        
        innerContainer.addArrangedSubview(textView3)
        innerContainer.addArrangedSubview(textView4)
        
        verticalContainer.addArrangedSubview(textView1)
        verticalContainer.addArrangedSubview(textView2)
        verticalContainer.addArrangedSubview(innerContainer)
        
        outerContainer.addArrangedSubview(imageView)
        outerContainer.addArrangedSubview(verticalContainer)
        addSubview(outerContainer)
    
    }
    
    func setupConstraints() {
        
        imageView.snp.makeConstraints { make in
            make.width.equalTo(outerContainer.snp.width).dividedBy(3)
        }
        
        outerContainer.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalToSuperview()
        }
        
    }
    
    func setupAdditionalConfiguration() {
        
    }
    
    
    
}
