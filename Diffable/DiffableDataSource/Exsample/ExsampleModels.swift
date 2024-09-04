//
//  ExsampleModels.swift
//  Diffable
//
//  Created by Valery on 12.04.2024.
//

import Foundation

//MARK: Создаем енам с названием для 3 секций
enum ExsampleSection {
    case subscribeType
    case payment
    case discount
}
//  -----здесь создаею енам для строки. И  повсей вероятности
enum ExsampleRow: Hashable {
    case subscraibeType(SubscraibeModel)
    case payment(PaymentModel)
    case discount(DiscountModel)
}
//создаем структуру (заполниение секции -строки ExsampleRow.subscraibeType) для
struct SubscraibeModel: Hashable {
    let image: String
    let name: String
    let description: String
}

//создаем структуру для заполнения секции-строкиExsampleRow.payment
struct PaymentModel: Hashable {
    let image: String
    let name: String
}
//
struct DiscountModel: Hashable {
    let image: String
    let name: String
}
