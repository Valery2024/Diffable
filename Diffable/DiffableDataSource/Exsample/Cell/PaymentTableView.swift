//
//  PaymentTableView.swift
//  Diffable
//
//  Created by Valery on 12.04.2024.
//

import UIKit
class PaymentTableView: UITableViewCell {
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupViews() {
        selectionStyle = .none
        addSubview(iconImageView)
        addSubview(nameLabel)
        
    }
    
    private func configure(_ model: PaymentModel){
        iconImageView.image = UIImage(named: model.image)
        nameLabel.text = model.name
    }
}
