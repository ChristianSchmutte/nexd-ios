//
// HelpList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HelpList: Codable { 


    public enum Status: String, Codable, CaseIterable {
        case active = "active"
        case canceled = "canceled"
        case completed = "completed"
    }
    public var id: Int64
    public var ownerId: String?
    public var owner: User?
    public var createdAt: Date
    public var updatedAt: Date
    public var status: Status? = .active
    public var helpRequests: [HelpRequest]
    public var helpRequestsIds: [Int64]

    public init(id: Int64, ownerId: String?, owner: User?, createdAt: Date, updatedAt: Date, status: Status?, helpRequests: [HelpRequest], helpRequestsIds: [Int64]) {
        self.id = id
        self.ownerId = ownerId
        self.owner = owner
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.status = status
        self.helpRequests = helpRequests
        self.helpRequestsIds = helpRequestsIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case ownerId
        case owner
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case status
        case helpRequests
        case helpRequestsIds
    }

}