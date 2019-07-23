//
//  GridBoxView.swift
//  CodeViewBasics
//
//  Created by Bruno Lopes on 23/07/19.
//  Copyright © 2019 Bruno Lopes. All rights reserved.
//

import UIKit

final class GridBoxView: UIView {
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension GridBoxView: CodeView {
    func buildViewHierarchy() {
        addSubview(imageView)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.top.left.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
    
    
}

