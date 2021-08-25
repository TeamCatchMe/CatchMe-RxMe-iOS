//
//  ArticleModel.swift
//  MVVM-Example
//
//  Created by Thisisme Hi on 2021/08/25.
//

import Foundation

// MARK: - ArticleModel
struct ArticleModel: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let title, articleDescription: String

    enum CodingKeys: String, CodingKey {
        case title
        case articleDescription = "description"
    }
}

