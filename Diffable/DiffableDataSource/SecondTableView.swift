//
//  SecondTableView.swift
//  Diffable
//
//  Created by Valery on 11.04.2024.
//

import Foundation
import UIKit


//MARK: Clacc
class SecondTableView: UITableView {
  //ниже в коде создаем экземпляр класса и обозночаем тип Diffable и сразу же нам выдает что это дженерик и поэтому нужно заполнить его типами какие он запрашивает или добавить свой, а именно нужно установить
    var diffableDataSource: UITableViewDiffableDataSource< Section, Row>?
    var firstArray: [Row] = []
    var secondArray: [Row] = []
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        configure()
        setupDiffableDataSource()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure(){
        register(UITableViewCell.self, forCellReuseIdentifier: "celka")
       // register(UITableViewCell.self, forCellReuseIdentifier: "secondCell")
        //dataSource = self
    }
    //MARK: здесь в инициализации нужно связать таблицу с DiffableDataSource. И self означает что идет обращение к UITableView, далее раскрываем кложур(комплишен блок)здесь имеются значения которые нам подходдят. Снимок(snapshot) это состояние таблицы в определенный момент времени-например имеется массив, идет изменение в массиве и DiffableDataSource включается в работы сравнивает старый снимок с новым и выдает результат,
    private func setupDiffableDataSource(){
        diffableDataSource = UITableViewDiffableDataSource(tableView: self, cellProvider: { tableView, indexPath, itemIdentifier in
            let cell = tableView.dequeueReusableCell(withIdentifier: "celka", for: indexPath)
            cell.backgroundColor = .systemYellow
            return cell
        })
    }
    
    //метод для обновления дата соурсч
    //apply-Обновляет пользовательский интерфейс, чтобы отразить состояние данных в моментальном снимке, при необходимости анимируя изменения пользовательского интерфейса и запуская обработчик завершения. имеет параметры (snapshot-снимок Моментальный снимок, отражающий новое состояние данных в табличном представлении, animatingDifferences-анимация различий -Если значение true, система анимирует обновления табличного представления. Если значение false, система не анимирует обновления табличного представления, completion-Замыкание, выполняемое по завершении анимации. Это замыкание не имеет возвращаемого значения и не принимает параметров. Система вызывает это замыкание из основной очереди)
    func updateDiffableDataSource(){
        var snapshot = NSDiffableDataSourceSnapshot<Section, Row>()
        //наблюдаем за секциями  таким способоь
        snapshot.appendSections([.first, .second])
        //теперь нужно определить на основании чего они будут строиться,  для этого создадим два пустых массива и используем их здесь
        snapshot.appendItems(firstArray, toSection: .first)
        snapshot.appendItems(secondArray, toSection: .second)
        //дальше делаем снимок с помощь
        diffableDataSource?.apply(snapshot, animatingDifferences: true)
    }
}
//MARK: UITableViewDataSource

//extension SecondTableView: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        section == 0 ? 3 : 5
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        switch indexPath.section {
//        case 0:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
//            cell.textLabel?.text = "First"
//            return cell
//        default:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath)
//            cell.textLabel?.text = "Second"
//            return cell
//        }
//        
//    }
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        2
//    }
//    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        <#code#>
//    }
//}
