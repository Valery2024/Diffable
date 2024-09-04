//
//  TableViewModels.swift
//  Diffable
//
//  Created by Valery on 11.04.2024.
//

import Foundation

//MARK: здесь делаем для Diffable дженерики
enum Section {
    case first
    case second 
}

//MARK: две ячейки с одним идентификатором не может быть-это ведет к ошибке

struct Row: Hashable {
    //let id:
  let title: String
}
