//
//  ArticleListViewModel.swift
//  MVVM-Example
//
//  Created by Thisisme Hi on 2021/08/25.
//

import Foundation

// TableView가 필요로 하는 numberOfRowInSection에 리턴해 줄 함수와
// cellForRowAt에 넣어줄 함수, numberOfSection까지 정의

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ Index: Int) -> ArticleViewModel {
        let article = self.articles[Index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String? {
        return self.article.title
    }
    
    var description: String? {
        return self.article.articleDescription
    }
}
