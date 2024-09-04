//
//  SubscribeTableViewCell.swift
//  Diffable
//
//  Created by Valery on 12.04.2024.
//

import Foundation
import UIKit
class SubscribeTableViewCell: UITableViewCell {
   static let cellId = "ProductTableViewCell"
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        
       label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .darkGray
        label.numberOfLines = 2
       label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
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
        addSubview(descriptionLabel)
    }
    //MARK: конфигурация ячеек - где каждая ячейка принимает свою модель. Она зависит от той структуры которую создали -например ниже конфигура для модели SubscraibeModel
     func  configure(_ model: SubscraibeModel) {
        iconImageView.image = UIImage(named: model.image)
        nameLabel.text = model.name
        descriptionLabel.text = model.description
    }
}
//MARK: setConctraint

extension SubscribeTableViewCell {
    private func setConstrains(){
        NSLayoutConstraint.activate([
        iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        iconImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.9),
        iconImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9),
        
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
     nameLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant:10),
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
        descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3),
        descriptionLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 10),
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
