# CityPayApiClient::CaptureRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**airline_data** | [**AirlineAdvice**](AirlineAdvice.md) |  | [optional] 
**amount** | **Integer** | The completion amount provided in the lowest unit of currency for the specific currency of the merchant, with a variable length to a maximum of 12 digits. No decimal points to be included. For example with GBP 75.45 use the value 7545. Please check that you do not supply divisional characters such as 1,024 in the request which may be caused by some number formatters. If no amount is supplied, the original processing amount is used.  | [optional] 
**identifier** | **String** | The identifier of the transaction to capture. If an empty value is supplied then a &#x60;trans_no&#x60; value must be supplied. | [optional] 
**merchantid** | **Integer** | Identifies the merchant account to perform the capture for. | 
**sdk** | **String** | An optional reference value for the calling client such as a version number i.e. | [optional] 
**transno** | **Integer** | The transaction number of the transaction to look up and capture. If an empty value is supplied then an identifier value must be supplied. | [optional] 

## Code Sample

```ruby
require 'CityPayApiClient'

instance = CityPayApiClient::CaptureRequest.new(airline_data: null,
                                 amount: 3600,
                                 identifier: 95b857a1-5955-4b86-963c-5a6dbfc4fb95,
                                 merchantid: 11223344,
                                 sdk: MyClient 1.3.0,
                                 transno: 78416)
```


