//
// RequestAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift



open class RequestAPI {
    /**

     - parameter onlyMine: (query) if \&quot;true\&quot;, only the requesting user requests will be replied. (optional)
     - parameter zipCode: (query) if set, only requests within the same zip code will be replied (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<[RequestEntity]>
     */
    open class func requestControllerGetAll(onlyMine: String? = nil, zipCode: String? = nil, apiResponseQueue: DispatchQueue = NexdClientAPI.apiResponseQueue) -> Observable<[RequestEntity]> {
        return Observable.create { observer -> Disposable in
            requestControllerGetAllWithRequestBuilder(onlyMine: onlyMine, zipCode: zipCode).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - GET /api/request
     - BASIC:
       - type: http
       - name: bearer
     - parameter onlyMine: (query) if \&quot;true\&quot;, only the requesting user requests will be replied. (optional)
     - parameter zipCode: (query) if set, only requests within the same zip code will be replied (optional)
     - returns: RequestBuilder<[RequestEntity]> 
     */
    open class func requestControllerGetAllWithRequestBuilder(onlyMine: String? = nil, zipCode: String? = nil) -> RequestBuilder<[RequestEntity]> {
        let path = "/api/request"
        let URLString = NexdClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "onlyMine": onlyMine?.encodeToJSON(), 
            "zipCode": zipCode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[RequestEntity]>.Type = NexdClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter requestId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<RequestEntity>
     */
    open class func requestControllerGetSingleRequest(requestId: Int, apiResponseQueue: DispatchQueue = NexdClientAPI.apiResponseQueue) -> Observable<RequestEntity> {
        return Observable.create { observer -> Disposable in
            requestControllerGetSingleRequestWithRequestBuilder(requestId: requestId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - GET /api/request/{requestId}
     - BASIC:
       - type: http
       - name: bearer
     - parameter requestId: (path)  
     - returns: RequestBuilder<RequestEntity> 
     */
    open class func requestControllerGetSingleRequestWithRequestBuilder(requestId: Int) -> RequestBuilder<RequestEntity> {
        var path = "/api/request/{requestId}"
        let requestIdPreEscape = "\(APIHelper.mapValueToPathItem(requestId))"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let URLString = NexdClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RequestEntity>.Type = NexdClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter requestFormDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<RequestEntity>
     */
    open class func requestControllerInsertRequestWithArticles(requestFormDto: RequestFormDto, apiResponseQueue: DispatchQueue = NexdClientAPI.apiResponseQueue) -> Observable<RequestEntity> {
        return Observable.create { observer -> Disposable in
            requestControllerInsertRequestWithArticlesWithRequestBuilder(requestFormDto: requestFormDto).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - POST /api/request
     - BASIC:
       - type: http
       - name: bearer
     - parameter requestFormDto: (body)  
     - returns: RequestBuilder<RequestEntity> 
     */
    open class func requestControllerInsertRequestWithArticlesWithRequestBuilder(requestFormDto: RequestFormDto) -> RequestBuilder<RequestEntity> {
        let path = "/api/request"
        let URLString = NexdClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestFormDto)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RequestEntity>.Type = NexdClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter requestId: (path)  
     - parameter articleId: (path)  
     - parameter requestArticleStatusDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<RequestEntity>
     */
    open class func requestControllerMarkArticleAsDone(requestId: Int, articleId: Int, requestArticleStatusDto: RequestArticleStatusDto, apiResponseQueue: DispatchQueue = NexdClientAPI.apiResponseQueue) -> Observable<RequestEntity> {
        return Observable.create { observer -> Disposable in
            requestControllerMarkArticleAsDoneWithRequestBuilder(requestId: requestId, articleId: articleId, requestArticleStatusDto: requestArticleStatusDto).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - PUT /api/request/{requestId}/{articleId}
     - BASIC:
       - type: http
       - name: bearer
     - parameter requestId: (path)  
     - parameter articleId: (path)  
     - parameter requestArticleStatusDto: (body)  
     - returns: RequestBuilder<RequestEntity> 
     */
    open class func requestControllerMarkArticleAsDoneWithRequestBuilder(requestId: Int, articleId: Int, requestArticleStatusDto: RequestArticleStatusDto) -> RequestBuilder<RequestEntity> {
        var path = "/api/request/{requestId}/{articleId}"
        let requestIdPreEscape = "\(APIHelper.mapValueToPathItem(requestId))"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let URLString = NexdClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestArticleStatusDto)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RequestEntity>.Type = NexdClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter requestId: (path)  
     - parameter requestFormDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<RequestEntity>
     */
    open class func requestControllerUpdateRequest(requestId: Int, requestFormDto: RequestFormDto, apiResponseQueue: DispatchQueue = NexdClientAPI.apiResponseQueue) -> Observable<RequestEntity> {
        return Observable.create { observer -> Disposable in
            requestControllerUpdateRequestWithRequestBuilder(requestId: requestId, requestFormDto: requestFormDto).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - PUT /api/request/{requestId}
     - BASIC:
       - type: http
       - name: bearer
     - parameter requestId: (path)  
     - parameter requestFormDto: (body)  
     - returns: RequestBuilder<RequestEntity> 
     */
    open class func requestControllerUpdateRequestWithRequestBuilder(requestId: Int, requestFormDto: RequestFormDto) -> RequestBuilder<RequestEntity> {
        var path = "/api/request/{requestId}"
        let requestIdPreEscape = "\(APIHelper.mapValueToPathItem(requestId))"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let URLString = NexdClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestFormDto)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RequestEntity>.Type = NexdClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
