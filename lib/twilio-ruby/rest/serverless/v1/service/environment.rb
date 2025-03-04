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

                     class EnvironmentList < ListResource
                
                    ##
                    # Initialize the EnvironmentList
                    # @param [Version] version Version that contains the resource
                    # @return [EnvironmentList] EnvironmentList
                    def initialize(version, service_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { service_sid: service_sid }
                        @uri = "/Services/#{@solution[:service_sid]}/Environments"
                        
                    end
                    ##
                    # Create the EnvironmentInstance
                    # @param [String] unique_name A user-defined string that uniquely identifies the Environment resource. It can be a maximum of 100 characters.
                    # @param [String] domain_suffix A URL-friendly name that represents the environment and forms part of the domain name. It can be a maximum of 16 characters.
                    # @return [EnvironmentInstance] Created EnvironmentInstance
                    def create(
                        unique_name: nil, 
                        domain_suffix: :unset
                    )

                        data = Twilio::Values.of({
                            'UniqueName' => unique_name,
                            'DomainSuffix' => domain_suffix,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.create('POST', @uri, data: data, headers: headers)
                        EnvironmentInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                        )
                    end

                
                    ##
                    # Lists EnvironmentInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(limit: nil, page_size: nil)
                        self.stream(
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields EnvironmentInstance records from the API.
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
                    # Retrieve a single page of EnvironmentInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of EnvironmentInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })
                        headers = Twilio::Values.of({})
                        
                        

                        response = @version.page('GET', @uri, params: params, headers: headers)

                        EnvironmentPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of EnvironmentInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of EnvironmentInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    EnvironmentPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Serverless.V1.EnvironmentList>'
                    end
                end


                class EnvironmentContext < InstanceContext
                    ##
                    # Initialize the EnvironmentContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] service_sid The SID of the Service to fetch the Environment resource from.
                    # @param [String] sid The SID of the Environment resource to fetch.
                    # @return [EnvironmentContext] EnvironmentContext
                    def initialize(version, service_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { service_sid: service_sid, sid: sid,  }
                        @uri = "/Services/#{@solution[:service_sid]}/Environments/#{@solution[:sid]}"

                        # Dependents
                        @logs = nil
                        @variables = nil
                        @deployments = nil
                    end
                    ##
                    # Delete the EnvironmentInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        @version.delete('DELETE', @uri, headers: headers)
                    end

                    ##
                    # Fetch the EnvironmentInstance
                    # @return [EnvironmentInstance] Fetched EnvironmentInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        EnvironmentInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Access the logs
                    # @return [LogList]
                    # @return [LogContext] if sid was passed.
                    def logs(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return LogContext.new(@version, @solution[:service_sid], @solution[:sid],sid )
                        end

                        unless @logs
                            @logs = LogList.new(
                                @version, service_sid: @solution[:service_sid], environment_sid: @solution[:sid], )
                        end

                     @logs
                    end
                    ##
                    # Access the variables
                    # @return [VariableList]
                    # @return [VariableContext] if sid was passed.
                    def variables(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return VariableContext.new(@version, @solution[:service_sid], @solution[:sid],sid )
                        end

                        unless @variables
                            @variables = VariableList.new(
                                @version, service_sid: @solution[:service_sid], environment_sid: @solution[:sid], )
                        end

                     @variables
                    end
                    ##
                    # Access the deployments
                    # @return [DeploymentList]
                    # @return [DeploymentContext] if sid was passed.
                    def deployments(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return DeploymentContext.new(@version, @solution[:service_sid], @solution[:sid],sid )
                        end

                        unless @deployments
                            @deployments = DeploymentList.new(
                                @version, service_sid: @solution[:service_sid], environment_sid: @solution[:sid], )
                        end

                     @deployments
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Serverless.V1.EnvironmentContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Serverless.V1.EnvironmentContext #{context}>"
                    end
                end

                class EnvironmentPage < Page
                    ##
                    # Initialize the EnvironmentPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [EnvironmentPage] EnvironmentPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of EnvironmentInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [EnvironmentInstance] EnvironmentInstance
                    def get_instance(payload)
                        EnvironmentInstance.new(@version, payload, service_sid: @solution[:service_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Serverless.V1.EnvironmentPage>'
                    end
                end
                class EnvironmentInstance < InstanceResource
                    ##
                    # Initialize the EnvironmentInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Environment
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [EnvironmentInstance] EnvironmentInstance
                    def initialize(version, payload , service_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'service_sid' => payload['service_sid'],
                            'build_sid' => payload['build_sid'],
                            'unique_name' => payload['unique_name'],
                            'domain_suffix' => payload['domain_suffix'],
                            'domain_name' => payload['domain_name'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                            'links' => payload['links'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'service_sid' => service_sid  || @properties['service_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [EnvironmentContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = EnvironmentContext.new(@version , @params['service_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Environment resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Environment resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the Service that the Environment resource is associated with.
                    def service_sid
                        @properties['service_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the build deployed in the environment.
                    def build_sid
                        @properties['build_sid']
                    end
                    
                    ##
                    # @return [String] A user-defined string that uniquely identifies the Environment resource.
                    def unique_name
                        @properties['unique_name']
                    end
                    
                    ##
                    # @return [String] A URL-friendly name that represents the environment and forms part of the domain name.
                    def domain_suffix
                        @properties['domain_suffix']
                    end
                    
                    ##
                    # @return [String] The domain name for all Functions and Assets deployed in the Environment, using the Service unique name, a randomly-generated Service suffix, and an optional Environment domain suffix.
                    def domain_name
                        @properties['domain_name']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Environment resource was created specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the Environment resource was last updated specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Environment resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Hash] The URLs of the Environment resource's nested resources.
                    def links
                        @properties['links']
                    end
                    
                    ##
                    # Delete the EnvironmentInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the EnvironmentInstance
                    # @return [EnvironmentInstance] Fetched EnvironmentInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Access the logs
                    # @return [logs] logs
                    def logs
                        context.logs
                    end

                    ##
                    # Access the variables
                    # @return [variables] variables
                    def variables
                        context.variables
                    end

                    ##
                    # Access the deployments
                    # @return [deployments] deployments
                    def deployments
                        context.deployments
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Serverless.V1.EnvironmentInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Serverless.V1.EnvironmentInstance #{values}>"
                    end
                end

             end
            end
        end
    end
end


