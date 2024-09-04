//
//  ExsampleViewController.swift
//  Diffable
//
//  Created by Valery on 12.04.2024.
//


import UIKit

class ExsampleViewController: UIViewController {
    
    private let exsampleTableView = ExsampleTableView()
    
    //OVERRAIDE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
    }
    private func  setupViews(){
        title = "cmd+B, cmd+R"
        view.backgroundColor = .yellow
        exsampleTableView.frame = view.frame
        view.addSubview(exsampleTableView)
        exsampleTableView.sectionIndexBackgroundColor = .blue
    }
}






//        //MARK: Создание кнопok
//        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self,
//            action: #selector(leftAddTap))
//        
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self,
//            action: #selector(rightAddTap))
   

//    @objc private func leftAddTap(){
//        let randomNumber = Int.random(in: 1...10)
//        //дальше обращаемся
//        secondTableView.firstArray.append(Row(title: "xren"))
//        //secondTableView.firstArray//(Row(title: "Random number \(randomNumber)"))
//        //после верхней строки-а это изменение массива нужно сдалать снимок
//        secondTableView.updateDiffableDataSource()
//    }
//    @objc private func rightAddTap(){
//        let raimond = Int.random(in:1...10)
//        //дальше обращаемся
//        secondTableView.secondArray.append(Row(title: "Random number \(raimond)"))
//        //после верхней строки-а это изменение массива нужно сдалать снимок
//        secondTableView.updateDiffableDataSource()
//     
//    }
                                                            

