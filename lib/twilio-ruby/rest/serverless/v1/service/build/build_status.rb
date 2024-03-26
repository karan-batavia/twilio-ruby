##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Serverless
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Serverless < ServerlessBase
            class V1 < Version
                class ServiceContext < InstanceContext
                class BuildContext < InstanceContext

                     class BuildStatusList < ListResource
                
                    ##
                    # Initialize the BuildStatusList
                    # @param [Version] version Version that contains the resource
                    # @return [BuildStatusList] BuildStatusList
                    def initialize(version, service_sid: nil, sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { service_sid: service_sid, sid: sid }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Serverless.V1.BuildStatusList>'
                    end
                end


                class BuildStatusContext < InstanceContext
                    ##
                    # Initialize the BuildStatusContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] service_sid The SID of the Service to fetch the Build resource from.
                    # @param [String] sid The SID of the Build resource to fetch.
                    # @return [BuildStatusContext] BuildStatusContext
                    def initialize(version, service_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { service_sid: service_sid, sid: sid,  }
                        @uri = "/Services/#{@solution[:service_sid]}/Builds/#{@solution[:sid]}/Status"

                        
                    end
                    ##
                    # Fetch the BuildStatusInstance
                    # @return [BuildStatusInstance] Fetched BuildStatusInstance
                    def fetch

                        
                        payload = @version.fetch('GET', @uri)
                        BuildStatusInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Serverless.V1.BuildStatusContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Serverless.V1.BuildStatusContext #{context}>"
                    end
                end

                class BuildStatusPage < Page
                    ##
                    # Initialize the BuildStatusPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [BuildStatusPage] BuildStatusPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of BuildStatusInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [BuildStatusInstance] BuildStatusInstance
                    def get_instance(payload)
                        BuildStatusInstance.new(@version, payload, service_sid: @solution[:service_sid], sid: @solution[:sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Serverless.V1.BuildStatusPage>'
                    end
                end
                class BuildStatusInstance < InstanceResource
                    ##
                    # Initialize the BuildStatusInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this BuildStatus
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [BuildStatusInstance] BuildStatusInstance
                    def initialize(version, payload , service_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'service_sid' => payload['service_sid'],
                            'status' => payload['status'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'service_sid' => service_sid  || @properties['service_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [BuildStatusContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = BuildStatusContext.new(@version , @params['service_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Build resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Build resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the Service that the Build resource is associated with.
                    def service_sid
                        @properties['service_sid']
                    end
                    
                    ##
                    # @return [Status] 
                    def status
                        @properties['status']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Build Status resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the BuildStatusInstance
                    # @return [BuildStatusInstance] Fetched BuildStatusInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Serverless.V1.BuildStatusInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Serverless.V1.BuildStatusInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


