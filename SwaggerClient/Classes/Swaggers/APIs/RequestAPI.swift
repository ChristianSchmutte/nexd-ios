//
// RequestAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import RxSwift


open class RequestAPI {
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func requestControllerGetAll(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        requestControllerGetAllWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     - returns: Observable<Void>
     */
    open class func requestControllerGetAll() -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            requestControllerGetAll() { data, error in
                if let error = error {
                    observer.on(.error(error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     - GET /api/request
     - 

     - :
       - type: http
       - name: bearer

     - returns: RequestBuilder<Void> 
     */
    open class func requestControllerGetAllWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/api/request"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func requestControllerInsertRequestWithArticles(body: CreateRequestDto, completion: @escaping ((_ data: Request?,_ error: Error?) -> Void)) {
        requestControllerInsertRequestWithArticlesWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     - parameter body: (body)  
     - returns: Observable<Request>
     */
    open class func requestControllerInsertRequestWithArticles(body: CreateRequestDto) -> Observable<Request> {
        return Observable.create { observer -> Disposable in
            requestControllerInsertRequestWithArticles(body: body) { data, error in
                if let error = error {
                    observer.on(.error(error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     - POST /api/request
     - 

     - :
       - type: http
       - name: bearer
     - examples: [{contentType=application/json, example={
  "requester" : 6.027456183070403,
  "zipCode" : "zipCode",
  "address" : "address",
  "phoneNumber" : "phoneNumber",
  "additionalRequest" : "additionalRequest",
  "city" : "city",
  "deliveryComment" : "deliveryComment",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0.8008281904610115,
  "priority" : "priority",
  "articles" : [ { }, { } ]
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<Request> 
     */
    open class func requestControllerInsertRequestWithArticlesWithRequestBuilder(body: CreateRequestDto) -> RequestBuilder<Request> {
        let path = "/api/request"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Request>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}