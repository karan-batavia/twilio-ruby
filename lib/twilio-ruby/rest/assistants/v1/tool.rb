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
                class ToolList < ListResource
                
                    class AssistantsV1ServiceCreatePolicyRequest
                            # @param [description]: [String] The description of the policy.
                            # @param [id]: [String] The Policy ID.
                            # @param [name]: [String] The name of the policy.
                            # @param [policy_details]: [Hash] 
                            # @param [type]: [String] The description of the policy.
                        attr_accessor :description, :id, :name, :policy_details, :type
                        def initialize(payload)
                                @description = payload["description"]
                                @id = payload["id"]
                                @name = payload["name"]
                                @policy_details = payload["policy_details"]
                                @type = payload["type"]
                        end
                        def to_json(options = {})
                        {
                                "description": @description,
                                "id": @id,
                                "name": @name,
                                "policy_details": @policy_details,
                                "type": @type,
                        }.to_json(options)
                        end
                    end

                    class AssistantsV1ServiceCreateToolRequest
                            # @param [assistant_id]: [String] The Assistant ID.
                            # @param [description]: [String] The description of the tool.
                            # @param [enabled]: [Boolean] True if the tool is enabled.
                            # @param [meta]: [Hash] The metadata related to method, url, input_schema to used with the Tool.
                            # @param [name]: [String] The name of the tool.
                            # @param [policy]: [ToolList.AssistantsV1ServiceCreatePolicyRequest] 
                            # @param [type]: [String] The description of the tool.
                        attr_accessor :assistant_id, :description, :enabled, :meta, :name, :policy, :type
                        def initialize(payload)
                                @assistant_id = payload["assistant_id"]
                                @description = payload["description"]
                                @enabled = payload["enabled"]
                                @meta = payload["meta"]
                                @name = payload["name"]
                                @policy = payload["policy"]
                                @type = payload["type"]
                        end
                        def to_json(options = {})
                        {
                                "assistant_id": @assistant_id,
                                "description": @description,
                                "enabled": @enabled,
                                "meta": @meta,
                                "name": @name,
                                "policy": @policy,
                                "type": @type,
                        }.to_json(options)
                        end
                    end

                    class AssistantsV1ServiceUpdateToolRequest
                            # @param [assistant_id]: [String] The Assistant ID.
                            # @param [description]: [String] The description of the tool.
                            # @param [enabled]: [Boolean] True if the tool is enabled.
                            # @param [meta]: [Hash] The metadata related to method, url, input_schema to used with the Tool.
                            # @param [name]: [String] The name of the tool.
                            # @param [policy]: [ToolList.AssistantsV1ServiceCreatePolicyRequest] 
                            # @param [type]: [String] The type of the tool.
                        attr_accessor :assistant_id, :description, :enabled, :meta, :name, :policy, :type
                        def initialize(payload)
                                @assistant_id = payload["assistant_id"]
                                @description = payload["description"]
                                @enabled = payload["enabled"]
                                @meta = payload["meta"]
                                @name = payload["name"]
                                @policy = payload["policy"]
                                @type = payload["type"]
                        end
                        def to_json(options = {})
                        {
                                "assistant_id": @assistant_id,
                                "description": @description,
                                "enabled": @enabled,
                                "meta": @meta,
                                "name": @name,
                                "policy": @policy,
                                "type": @type,
                        }.to_json(options)
                        end
                    end


                    class AssistantsV1ServiceCreatePolicyRequest
                            # @param [description]: [String] The description of the policy.
                            # @param [id]: [String] The Policy ID.
                            # @param [name]: [String] The name of the policy.
                            # @param [policy_details]: [Hash] 
                            # @param [type]: [String] The description of the policy.
                        attr_accessor :description, :id, :name, :policy_details, :type
                        def initialize(payload)
                                @description = payload["description"]
                                @id = payload["id"]
                                @name = payload["name"]
                                @policy_details = payload["policy_details"]
                                @type = payload["type"]
                        end
                        def to_json(options = {})
                        {
                                "description": @description,
                                "id": @id,
                                "name": @name,
                                "policy_details": @policy_details,
                                "type": @type,
                        }.to_json(options)
                        end
                    end

                    class AssistantsV1ServiceCreateToolRequest
                            # @param [assistant_id]: [String] The Assistant ID.
                            # @param [description]: [String] The description of the tool.
                            # @param [enabled]: [Boolean] True if the tool is enabled.
                            # @param [meta]: [Hash] The metadata related to method, url, input_schema to used with the Tool.
                            # @param [name]: [String] The name of the tool.
                            # @param [policy]: [ToolList.AssistantsV1ServiceCreatePolicyRequest] 
                            # @param [type]: [String] The description of the tool.
                        attr_accessor :assistant_id, :description, :enabled, :meta, :name, :policy, :type
                        def initialize(payload)
                                @assistant_id = payload["assistant_id"]
                                @description = payload["description"]
                                @enabled = payload["enabled"]
                                @meta = payload["meta"]
                                @name = payload["name"]
                                @policy = payload["policy"]
                                @type = payload["type"]
                        end
                        def to_json(options = {})
                        {
                                "assistant_id": @assistant_id,
                                "description": @description,
                                "enabled": @enabled,
                                "meta": @meta,
                                "name": @name,
                                "policy": @policy,
                                "type": @type,
                        }.to_json(options)
                        end
                    end

                    class AssistantsV1ServiceUpdateToolRequest
                            # @param [assistant_id]: [String] The Assistant ID.
                            # @param [description]: [String] The description of the tool.
                            # @param [enabled]: [Boolean] True if the tool is enabled.
                            # @param [meta]: [Hash] The metadata related to method, url, input_schema to used with the Tool.
                            # @param [name]: [String] The name of the tool.
                            # @param [policy]: [ToolList.AssistantsV1ServiceCreatePolicyRequest] 
                            # @param [type]: [String] The type of the tool.
                        attr_accessor :assistant_id, :description, :enabled, :meta, :name, :policy, :type
                        def initialize(payload)
                                @assistant_id = payload["assistant_id"]
                                @description = payload["description"]
                                @enabled = payload["enabled"]
                                @meta = payload["meta"]
                                @name = payload["name"]
                                @policy = payload["policy"]
                                @type = payload["type"]
                        end
                        def to_json(options = {})
                        {
                                "assistant_id": @assistant_id,
                                "description": @description,
                                "enabled": @enabled,
                                "meta": @meta,
                                "name": @name,
                                "policy": @policy,
                                "type": @type,
                        }.to_json(options)
                        end
                    end


                    ##
                    # Initialize the ToolList
                    # @param [Version] version Version that contains the resource
                    # @return [ToolList] ToolList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Tools"
                        
                    end
                    ##
                    # Create the ToolInstance
                    # @param [AssistantsV1ServiceCreateToolRequest] assistants_v1_service_create_tool_request 
                    # @return [ToolInstance] Created ToolInstance
                    def create(assistants_v1_service_create_tool_request: nil
                    )

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        headers['Content-Type'] = 'application/json'
                        
                        
                        
                        
                        payload = @version.create('POST', @uri, headers: headers, data: assistants_v1_service_create_tool_request.to_json)
                        ToolInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists ToolInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] assistant_id 
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(assistant_id: :unset, limit: nil, page_size: nil)
                        self.stream(
                            assistant_id: assistant_id,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] assistant_id 
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(assistant_id: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            assistant_id: assistant_id,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields ToolInstance records from the API.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    def each
                        limits = @version.read_limits

                        page = self.page(page_size: limits[:page_size], )

                        @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
                    end

                    ##
                    # Retrieve a single page of ToolInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] assistant_id 
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of ToolInstance
                    def page(assistant_id: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'AssistantId' => assistant_id,
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })
                        headers = Twilio::Values.of({})
                        
                        

                        response = @version.page('GET', @uri, params: params, headers: headers)

                        ToolPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of ToolInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of ToolInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    ToolPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Assistants.V1.ToolList>'
                    end
                end


                class ToolContext < InstanceContext
                    ##
                    # Initialize the ToolContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] id 
                    # @return [ToolContext] ToolContext
                    def initialize(version, id)
                        super(version)

                        # Path Solution
                        @solution = { id: id,  }
                        @uri = "/Tools/#{@solution[:id]}"

                        
                    end
                    ##
                    # Delete the ToolInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        @version.delete('DELETE', @uri, headers: headers)
                    end

                    ##
                    # Fetch the ToolInstance
                    # @return [ToolInstance] Fetched ToolInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        ToolInstance.new(
                            @version,
                            payload,
                            id: @solution[:id],
                        )
                    end

                    ##
                    # Update the ToolInstance
                    # @param [AssistantsV1ServiceUpdateToolRequest] assistants_v1_service_update_tool_request 
                    # @return [ToolInstance] Updated ToolInstance
                    def update(assistants_v1_service_update_tool_request: :unset
                    )

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        headers['Content-Type'] = 'application/json'
                        
                        
                        
                        
                        payload = @version.update('PUT', @uri, headers: headers, data: assistants_v1_service_update_tool_request.to_json)
                        ToolInstance.new(
                            @version,
                            payload,
                            id: @solution[:id],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Assistants.V1.ToolContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Assistants.V1.ToolContext #{context}>"
                    end
                end

                class ToolPage < Page
                    ##
                    # Initialize the ToolPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [ToolPage] ToolPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of ToolInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [ToolInstance] ToolInstance
                    def get_instance(payload)
                        ToolInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Assistants.V1.ToolPage>'
                    end
                end
                class ToolInstance < InstanceResource
                    ##
                    # Initialize the ToolInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Tool
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [ToolInstance] ToolInstance
                    def initialize(version, payload , id: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'description' => payload['description'],
                            'enabled' => payload['enabled'],
                            'id' => payload['id'],
                            'meta' => payload['meta'],
                            'name' => payload['name'],
                            'requires_auth' => payload['requires_auth'],
                            'type' => payload['type'],
                            'url' => payload['url'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'policies' => payload['policies'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'id' => id  || @properties['id']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [ToolContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = ToolContext.new(@version , @params['id'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Tool resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The description of the tool.
                    def description
                        @properties['description']
                    end
                    
                    ##
                    # @return [Boolean] True if the tool is enabled.
                    def enabled
                        @properties['enabled']
                    end
                    
                    ##
                    # @return [String] The tool ID.
                    def id
                        @properties['id']
                    end
                    
                    ##
                    # @return [Hash] The metadata related to method, url, input_schema to used with the Tool.
                    def meta
                        @properties['meta']
                    end
                    
                    ##
                    # @return [String] The name of the tool.
                    def name
                        @properties['name']
                    end
                    
                    ##
                    # @return [Boolean] The authentication requirement for the tool.
                    def requires_auth
                        @properties['requires_auth']
                    end
                    
                    ##
                    # @return [String] The type of the tool. ('WEBHOOK')
                    def type
                        @properties['type']
                    end
                    
                    ##
                    # @return [String] The url of the tool resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Tool was created specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Tool was last updated specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [Array<AssistantsV1ServicePolicy>] The Policies associated with the tool.
                    def policies
                        @properties['policies']
                    end
                    
                    ##
                    # Delete the ToolInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the ToolInstance
                    # @return [ToolInstance] Fetched ToolInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the ToolInstance
                    # @param [AssistantsV1ServiceUpdateToolRequest] assistants_v1_service_update_tool_request 
                    # @return [ToolInstance] Updated ToolInstance
                    def update(assistants_v1_service_update_tool_request: :unset
                    )

                        context.update(
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Assistants.V1.ToolInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Assistants.V1.ToolInstance #{values}>"
                    end
                end

            end
        end
    end
end
