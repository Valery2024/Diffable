//
//  ExsampleDataSource.swift
//  Diffable
//
//  Created by Valery on 12.04.2024.
//

import UIKit
//MARK: этот класс подписанный под указанный протокол обязан иметь дженерики
class ExsampleDataSource: UITableViewDiffableDataSource<ExsampleSection, ExsampleRow> {
    //напишем инициализатор  и скажем ему что будет какая то таблвью  и далее обращаемся к инициализатору супер класса- и в параметрах указываем  tableView и раскрываем кложур. Далее делаем идентификаторы для елементов,  xcode  подскажет(нужно фиксануть) и далее  каждом кейсу нужно создавать ячейку согласно моделям для каждого елемента. Важно -нужно создать три класса с ячейками-как это делать не знаю но думаю что справлюсь/
    init(tableView: UITableView){
    super.init(tableView: tableView) { tableView, indexPath, itemIdentifier in
          switch itemIdentifier {
                
          case .subscraibeType(let model):
              let cell = tableView.dequeueReusableCell(withIdentifier: SubscribeTableViewCell.cellId, for: indexPath) as? SubscribeTableViewCell
              cell?.configure(model)
              return cell
          case .payment(let model):
              let cell = tableView.dequeueReusableCell(withIdentifier: PaymentTableViewCell.cellId, for: indexPath) as? PaymentTableViewCell
              cell?.configure(model)
              return cell
          case .discount():
              let cell = UITableView.dequeueReusableCell(withIdentifier: DiscountTableViewCell.cellId,)
          }
        }
    }
}
