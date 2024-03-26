##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Verify
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Verify < VerifyBase
            class V2 < Version
                class FormList < ListResource
                
                    ##
                    # Initialize the FormList
                    # @param [Version] version Version that contains the resource
                    # @return [FormList] FormList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Verify.V2.FormList>'
                    end
                end


                class FormContext < InstanceContext
                    ##
                    # Initialize the FormContext
                    # @param [Version] version Version that contains the resource
                    # @param [FormTypes] form_type The Type of this Form. Currently only `form-push` is supported.
                    # @return [FormContext] FormContext
                    def initialize(version, form_type)
                        super(version)

                        # Path Solution
                        @solution = { form_type: form_type,  }
                        @uri = "/Forms/#{@solution[:form_type]}"

                        
                    end
                    ##
                    # Fetch the FormInstance
                    # @return [FormInstance] Fetched FormInstance
                    def fetch

                        
                        payload = @version.fetch('GET', @uri)
                        FormInstance.new(
                            @version,
                            payload,
                            form_type: @solution[:form_type],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Verify.V2.FormContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Verify.V2.FormContext #{context}>"
                    end
                end

                class FormPage < Page
                    ##
                    # Initialize the FormPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [FormPage] FormPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of FormInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [FormInstance] FormInstance
                    def get_instance(payload)
                        FormInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Verify.V2.FormPage>'
                    end
                end
                class FormInstance < InstanceResource
                    ##
                    # Initialize the FormInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Form
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [FormInstance] FormInstance
                    def initialize(version, payload , form_type: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'form_type' => payload['form_type'],
                            'forms' => payload['forms'],
                            'form_meta' => payload['form_meta'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'form_type' => form_type  || @properties['form_type']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [FormContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = FormContext.new(@version , @params['form_type'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [FormTypes] 
                    def form_type
                        @properties['form_type']
                    end
                    
                    ##
                    # @return [Hash] Object that contains the available forms for this type. This available forms are given in the standard [JSON Schema](https://json-schema.org/) format
                    def forms
                        @properties['forms']
                    end
                    
                    ##
                    # @return [Hash] Additional information for the available forms for this type. E.g. The separator string used for `binding` in a Factor push.
                    def form_meta
                        @properties['form_meta']
                    end
                    
                    ##
                    # @return [String] The URL to access the forms for this type.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the FormInstance
                    # @return [FormInstance] Fetched FormInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Verify.V2.FormInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Verify.V2.FormInstance #{values}>"
                    end
                end

            end
        end
    end
end
