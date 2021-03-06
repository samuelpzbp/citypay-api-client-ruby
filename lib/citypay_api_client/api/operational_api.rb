=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security <aside class=\"notice\">   Before we begin a reminder that your application will need to adhere to PCI-DSS standards to operate safely   and to meet requirements set out by Visa and MasterCard and the PCI Security Standards Council including: </aside>  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module CityPayApiClient
  class OperationalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Merchants Request
    # An operational request to list current merchants for a client.  ### Sorting  Sorting can be performed by include a query parameter i.e. `/merchants/?sort=merchantid`  Fields that can be sorted are `merchantid` or `name`. 
    # @param clientid [String] The client id to return merchants for, specifying \&quot;default\&quot; will use the value in your api key.
    # @param [Hash] opts the optional parameters
    # @return [ListMerchantsResponse]
    def list_merchants_request(clientid, opts = {})
      data, _status_code, _headers = list_merchants_request_with_http_info(clientid, opts)
      data
    end

    # List Merchants Request
    # An operational request to list current merchants for a client.  ### Sorting  Sorting can be performed by include a query parameter i.e. &#x60;/merchants/?sort&#x3D;merchantid&#x60;  Fields that can be sorted are &#x60;merchantid&#x60; or &#x60;name&#x60;. 
    # @param clientid [String] The client id to return merchants for, specifying \&quot;default\&quot; will use the value in your api key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListMerchantsResponse, Integer, Hash)>] ListMerchantsResponse data, response status code and response headers
    def list_merchants_request_with_http_info(clientid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationalApi.list_merchants_request ...'
      end
      # verify the required parameter 'clientid' is set
      if @api_client.config.client_side_validation && clientid.nil?
        fail ArgumentError, "Missing the required parameter 'clientid' when calling OperationalApi.list_merchants_request"
      end
      # resource path
      local_var_path = '/merchants/{clientid}'.sub('{' + 'clientid' + '}', CGI.escape(clientid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ListMerchantsResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationalApi#list_merchants_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ping Request
    # A ping request which performs a connection and authentication test to the CityPay API server. The request will return a standard Acknowledgement with a response code `044` to signify a successful ping.  The ping call is useful to confirm that you will be able to access  the API from behind any firewalls and that the permission model is granting access from your source. 
    # @param ping [Ping] 
    # @param [Hash] opts the optional parameters
    # @return [Acknowledgement]
    def ping_request(ping, opts = {})
      data, _status_code, _headers = ping_request_with_http_info(ping, opts)
      data
    end

    # Ping Request
    # A ping request which performs a connection and authentication test to the CityPay API server. The request will return a standard Acknowledgement with a response code &#x60;044&#x60; to signify a successful ping.  The ping call is useful to confirm that you will be able to access  the API from behind any firewalls and that the permission model is granting access from your source. 
    # @param ping [Ping] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Acknowledgement, Integer, Hash)>] Acknowledgement data, response status code and response headers
    def ping_request_with_http_info(ping, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationalApi.ping_request ...'
      end
      # verify the required parameter 'ping' is set
      if @api_client.config.client_side_validation && ping.nil?
        fail ArgumentError, "Missing the required parameter 'ping' when calling OperationalApi.ping_request"
      end
      # resource path
      local_var_path = '/ping'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(ping) 

      # return_type
      return_type = opts[:return_type] || 'Acknowledgement' 

      # auth_names
      auth_names = opts[:auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationalApi#ping_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
