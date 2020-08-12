=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security <aside class=\"notice\">   Before we begin a reminder that your application will need to adhere to PCI-DSS standards to operate safely   and to meet requirements set out by Visa and MasterCard and the PCI Security Standards Council including: </aside>  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CityPayApiClient::CardHolderAccountApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CardHolderAccountApi' do
  before do
    # run before each test
    @api_instance = CityPayApiClient::CardHolderAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CardHolderAccountApi' do
    it 'should create an instance of CardHolderAccountApi' do
      expect(@api_instance).to be_instance_of(CityPayApiClient::CardHolderAccountApi)
    end
  end

  # unit tests for account_card_delete_request
  # Card Deletion
  # Deletes a card from the account. The card will be marked for deletion before a subsequent purge will clear the card permanently. 
  # @param accountid The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account.
  # @param card_id The id of the card that is presented by a call to retrieve a card holder account.
  # @param [Hash] opts the optional parameters
  # @return [Acknowledgement]
  describe 'account_card_delete_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_card_register_request
  # Card Registration
  # Allows for a card to be registered for the account. The card will be added for future  processing and will be available as a tokenised value for future processing.  The card will be validated for  0. Being a valid card number (luhn check) 0. Having a valid expiry date 0. Being a valid bin value. 
  # @param accountid The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account.
  # @param register_card 
  # @param [Hash] opts the optional parameters
  # @return [CardHolderAccount]
  describe 'account_card_register_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_card_status_request
  # Card Status
  # Updates the status of a card for processing. The following values are available  | Status | Description |  |--------|-------------| | Active | The card is active for processing and can be used for charging against with a valid token | | Inactive | The card is inactive for processing and cannot be used for processing, it will require reactivation before being used to charge | | Expired | The card has expired either due to the expiry date no longer being valid or due to a replacement card being issued | 
  # @param accountid The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account.
  # @param card_id The id of the card that is presented by a call to retrieve a card holder account.
  # @param card_status 
  # @param [Hash] opts the optional parameters
  # @return [Acknowledgement]
  describe 'account_card_status_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_change_contact_request
  # Contact Details Update
  # Allows for the ability to change the contact details for an account.
  # @param accountid The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account.
  # @param contact_details 
  # @param [Hash] opts the optional parameters
  # @return [CardHolderAccount]
  describe 'account_change_contact_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_create
  # Account Create
  # Creates a new card holder account and initialises the account ready for adding cards.
  # @param account_create 
  # @param [Hash] opts the optional parameters
  # @return [CardHolderAccount]
  describe 'account_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_delete_request
  # Account Deletion
  # Allows for the deletion of an account. The account will marked for deletion and subsequent purging. No further transactions will be alowed to be processed or actioned against this account. 
  # @param accountid The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account.
  # @param [Hash] opts the optional parameters
  # @return [Acknowledgement]
  describe 'account_delete_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_retrieve_request
  # Account Retrieval
  # Allows for the retrieval of a card holder account for the given &#x60;id&#x60;. Should duplicate accounts exist for the same &#x60;id&#x60;, the first account created with that &#x60;id&#x60; will be returned.  The account can be used for tokenisation processing by listing all cards assigned to the account. The returned cards will include all &#x60;active&#x60;, &#x60;inactive&#x60; and &#x60;expired&#x60; cards. This can be used to  enable a card holder to view their wallet and make constructive choices on which card to use. 
  # @param accountid The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account.
  # @param [Hash] opts the optional parameters
  # @return [CardHolderAccount]
  describe 'account_retrieve_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_status_request
  # Account Status
  # Updates the status of an account. An account can have the following statuses applied  | Status | Description | |--------|-------------| | Active | The account is active for processing | | Disabled | The account has been disabled and cannot be used for processing. The account will require reactivation to continue procesing | 
  # @param accountid The account id that refers to the customer&#39;s account no. This value will have been provided when setting up the card holder account.
  # @param account_status 
  # @param [Hash] opts the optional parameters
  # @return [Acknowledgement]
  describe 'account_status_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for charge_request
  # Charge
  # A charge process obtains an authorisation using a tokenised value which represents a stored card  on a card holder account.  A card must previously be registered by calling &#x60;/account-register-card&#x60; with the card details  or retrieved using &#x60;/account-retrieve&#x60;  Tokens are generated whenever a previously registered list of cards are retrieved. Each token has, by design a  relatively short time to live of 30 minutes. This is both to safe guard the merchant and card holder from  replay attacks. Tokens are also restricted to your account, preventing malicious actors from stealing details for use elsewhere.    If a token is reused after it has expired it will be rejected and a new token will be required.   Tokenisation can be used for   - repeat authorisations on a previously stored card - easy authorisations just requiring CSC values to be entered - can be used for credential on file style payments - can require full 3-D Secure authentication to retain the liability shift - wallet style usage. 
  # @param charge_request 
  # @param [Hash] opts the optional parameters
  # @return [Decision]
  describe 'charge_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
