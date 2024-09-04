//
//  SecondViewController.swift
//  Diffable
//
//  Created by Valery on 11.04.2024.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    private let secondTableView = SecondTableView()
    
    //OVERRAIDE
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupViews()
        
    }
    private func  setupViews(){
        view.backgroundColor = .white
       secondTableView.frame = view.frame
        view.addSubview(secondTableView)
        //secondTableView.backgroundColor = .green
        
        
        //MARK: Создание кнопok
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self,
            action: #selector(leftAddTap))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self,
            action: #selector(rightAddTap))
    }

    @objc private func leftAddTap(){
        let randomNumber = Int.random(in: 1...10)
        //дальше обращаемся
        secondTableView.firstArray.append(Row(title: "xren\(randomNumber)"))
        //secondTableView.firstArray//(Row(title: "Random number \(randomNumber)"))
        //после верхней строки-а это изменение массива нужно сдалать снимок
        secondTableView.updateDiffableDataSource()
    }
    @objc private func rightAddTap(){
        let raimond = Int.random(in:1...10)
        //дальше обращаемся
        secondTableView.secondArray.append(Row(title: "Random number \(raimond)"))
        //после верхней строки-а это изменение массива нужно сдалать снимок
        secondTableView.updateDiffableDataSource()
     
    }
                                                            
}
