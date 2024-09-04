//
//  ExsampleTableView.swift
//  Diffable
//
//  Created by Valery on 12.04.2024.
//

import Foundation
import UIKit

class ExsampleTableView: UITableView{
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        configure()
        //setupDiffableDataSource()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure(){
        
    }
    
}
