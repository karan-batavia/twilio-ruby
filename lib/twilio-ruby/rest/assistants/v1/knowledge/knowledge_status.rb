##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Assistants
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Assistants < AssistantsBase
            class V1 < Version
                class Knowledge < InstanceContext

                     class KnowledgeStatusList < ListResource
                
                    ##
                    # Initialize the KnowledgeStatusList
                    # @param [Version] version Version that contains the resource
                    # @return [KnowledgeStatusList] KnowledgeStatusList
                    def initialize(version, id: nil)
                        super(version)
                        # Path Solution
                        @solution = { id: id }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Assistants.V1.KnowledgeStatusList>'
                    end
                end


                class KnowledgeStatusContext < InstanceContext
                    ##
                    # Initialize the KnowledgeStatusContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] id the Knowledge ID.
                    # @return [KnowledgeStatusContext] KnowledgeStatusContext
                    def initialize(version, id)
                        super(version)

                        # Path Solution
                        @solution = { id: id,  }
                        @uri = "/Knowledge/#{@solution[:id]}/Status"

                        
                    end
                    ##
                    # Fetch the KnowledgeStatusInstance
                    # @return [KnowledgeStatusInstance] Fetched KnowledgeStatusInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        KnowledgeStatusInstance.new(
                            @version,
                            payload,
                            id: @solution[:id],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Assistants.V1.KnowledgeStatusContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Assistants.V1.KnowledgeStatusContext #{context}>"
                    end
                end

                class KnowledgeStatusPage < Page
                    ##
                    # Initialize the KnowledgeStatusPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [KnowledgeStatusPage] KnowledgeStatusPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of KnowledgeStatusInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [KnowledgeStatusInstance] KnowledgeStatusInstance
                    def get_instance(payload)
                        KnowledgeStatusInstance.new(@version, payload, id: @solution[:id])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Assistants.V1.KnowledgeStatusPage>'
                    end
                end
                class KnowledgeStatusInstance < InstanceResource
                    ##
                    # Initialize the KnowledgeStatusInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this KnowledgeStatus
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [KnowledgeStatusInstance] KnowledgeStatusInstance
                    def initialize(version, payload , id: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'status' => payload['status'],
                            'last_status' => payload['last_status'],
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'id' => id  || @properties['id']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [KnowledgeStatusContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = KnowledgeStatusContext.new(@version , @params['id'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Knowledge resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The status of processing the knowledge source ('QUEUED', 'PROCESSING', 'COMPLETED', 'FAILED')
                    def status
                        @properties['status']
                    end
                    
                    ##
                    # @return [String] The last status of processing the knowledge source ('QUEUED', 'PROCESSING', 'COMPLETED', 'FAILED')
                    def last_status
                        @properties['last_status']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Knowledge was last updated specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # Fetch the KnowledgeStatusInstance
                    # @return [KnowledgeStatusInstance] Fetched KnowledgeStatusInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Assistants.V1.KnowledgeStatusInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Assistants.V1.KnowledgeStatusInstance #{values}>"
                    end
                end

             end
            end
        end
    end
end


