//
// HelpRequestArticle.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HelpRequestArticle: Codable { 


    public var id: Int64?
    public var articleId: Int64?
    public var articleCount: Int64?
    public var article: Article?
    public var articleDone: Bool?
    public var helpRequest: HelpRequest?

    public init(id: Int64?, articleId: Int64?, articleCount: Int64?, article: Article?, articleDone: Bool?, helpRequest: HelpRequest?) {
        self.id = id
        self.articleId = articleId
        self.articleCount = articleCount
        self.article = article
        self.articleDone = articleDone
        self.helpRequest = helpRequest
    }

}
