# Swift5 API client for OpenAPIClient

Simple API Description

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec from a remote server, you can easily generate an API client.

- API version: 1.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArticlesAPI* | [**articlesControllerFindAll**](docs/ArticlesAPI.md#articlescontrollerfindall) | **GET** /api/articles | 
*ArticlesAPI* | [**articlesControllerInsertOne**](docs/ArticlesAPI.md#articlescontrollerinsertone) | **POST** /api/articles | 
*AuthenticationAPI* | [**authControllerLogin**](docs/AuthenticationAPI.md#authcontrollerlogin) | **POST** /api/auth/login | 
*AuthenticationAPI* | [**authControllerRegister**](docs/AuthenticationAPI.md#authcontrollerregister) | **POST** /api/auth/register | 
*CallsAPI* | [**callControllerDownload**](docs/CallsAPI.md#callcontrollerdownload) | **GET** /api/call/download/{id} | 
*CallsAPI* | [**callControllerIndex**](docs/CallsAPI.md#callcontrollerindex) | **GET** /api/call | 
*CallsAPI* | [**callControllerInitUpload**](docs/CallsAPI.md#callcontrollerinitupload) | **GET** /api/call/upload | 
*CallsAPI* | [**callControllerTranslated**](docs/CallsAPI.md#callcontrollertranslated) | **PUT** /api/call/translated/{id} | 
*CallsAPI* | [**callControllerUpload**](docs/CallsAPI.md#callcontrollerupload) | **POST** /api/call/upload/{id} | 
*CallsAPI* | [**callControllerWebhook**](docs/CallsAPI.md#callcontrollerwebhook) | **GET** /api/call/webhook | 
*DefaultAPI* | [**appControllerRoot**](docs/DefaultAPI.md#appcontrollerroot) | **GET** /api | 
*RequestAPI* | [**requestControllerGetAll**](docs/RequestAPI.md#requestcontrollergetall) | **GET** /api/request | 
*RequestAPI* | [**requestControllerGetSingleRequest**](docs/RequestAPI.md#requestcontrollergetsinglerequest) | **GET** /api/request/{requestId} | 
*RequestAPI* | [**requestControllerInsertRequestWithArticles**](docs/RequestAPI.md#requestcontrollerinsertrequestwitharticles) | **POST** /api/request | 
*RequestAPI* | [**requestControllerMarkArticleAsDone**](docs/RequestAPI.md#requestcontrollermarkarticleasdone) | **PUT** /api/request/{requestId}/{articleId} | 
*RequestAPI* | [**requestControllerUpdateRequest**](docs/RequestAPI.md#requestcontrollerupdaterequest) | **PUT** /api/request/{requestId} | 
*ShoppingListAPI* | [**shoppingListControllerAddRequestToList**](docs/ShoppingListAPI.md#shoppinglistcontrolleraddrequesttolist) | **PUT** /api/shopping-list/{shoppingListId}/{requestId} | 
*ShoppingListAPI* | [**shoppingListControllerDeleteRequestFromList**](docs/ShoppingListAPI.md#shoppinglistcontrollerdeleterequestfromlist) | **DELETE** /api/shopping-list/{shoppingListId}/{requestId} | 
*ShoppingListAPI* | [**shoppingListControllerFindOne**](docs/ShoppingListAPI.md#shoppinglistcontrollerfindone) | **GET** /api/shopping-list/{id} | 
*ShoppingListAPI* | [**shoppingListControllerGetUserLists**](docs/ShoppingListAPI.md#shoppinglistcontrollergetuserlists) | **GET** /api/shopping-list | 
*ShoppingListAPI* | [**shoppingListControllerInsertNewShoppingList**](docs/ShoppingListAPI.md#shoppinglistcontrollerinsertnewshoppinglist) | **POST** /api/shopping-list | 
*ShoppingListAPI* | [**shoppingListControllerUpdateShoppingList**](docs/ShoppingListAPI.md#shoppinglistcontrollerupdateshoppinglist) | **PUT** /api/shopping-list/{id} | 
*UserAPI* | [**userControllerFindOne**](docs/UserAPI.md#usercontrollerfindone) | **GET** /api/user/{id} | 
*UserAPI* | [**userControllerGetAll**](docs/UserAPI.md#usercontrollergetall) | **GET** /api/user | 
*UserAPI* | [**userControllerUpdate**](docs/UserAPI.md#usercontrollerupdate) | **PUT** /api/user/{id} | 


## Documentation For Models

 - [Article](docs/Article.md)
 - [CreateArticleDto](docs/CreateArticleDto.md)
 - [CreateRequestArticleDto](docs/CreateRequestArticleDto.md)
 - [LoginPayload](docs/LoginPayload.md)
 - [RegisterPayload](docs/RegisterPayload.md)
 - [RequestArticle](docs/RequestArticle.md)
 - [RequestArticleStatusDto](docs/RequestArticleStatusDto.md)
 - [RequestEntity](docs/RequestEntity.md)
 - [RequestFormDto](docs/RequestFormDto.md)
 - [ResponseTokenDto](docs/ResponseTokenDto.md)
 - [ShoppingList](docs/ShoppingList.md)
 - [ShoppingListFormDto](docs/ShoppingListFormDto.md)
 - [ShoppingListRequest](docs/ShoppingListRequest.md)
 - [UpdateUserDto](docs/UpdateUserDto.md)
 - [User](docs/User.md)


## Documentation For Authorization


## bearer

- **Type**: HTTP basic authentication


## Author


