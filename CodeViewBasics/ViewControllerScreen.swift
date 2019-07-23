//
//  ViewControllerScreen.swift
//  CodeViewBasics
//
//  Created by Bruno Lopes on 22/07/19.
//  Copyright © 2019 Bruno Lopes. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("fetch", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let gridBox = GridBoxView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewControllerScreen: CodeView {
    func buildViewHierarchy() {
        addSubview(button)
        addSubview(gridBox)
    }
    
    func setupConstraints() {
        
        button.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalTo(self).inset(40)
        }
        
        gridBox.snp.makeConstraints { (make) in
            make.height.width.equalTo(200)
            make.center.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
    

}
