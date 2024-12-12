##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Flex
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class FlexApi < FlexApiBase
            class V2 < Version
                class FlexUserList < ListResource
                
                    ##
                    # Initialize the FlexUserList
                    # @param [Version] version Version that contains the resource
                    # @return [FlexUserList] FlexUserList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.FlexApi.V2.FlexUserList>'
                    end
                end


                class FlexUserContext < InstanceContext
                    ##
                    # Initialize the FlexUserContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] instance_sid The unique ID created by Twilio to identify a Flex instance.
                    # @param [String] flex_user_sid The unique id for the flex user.
                    # @return [FlexUserContext] FlexUserContext
                    def initialize(version, instance_sid, flex_user_sid)
                        super(version)

                        # Path Solution
                        @solution = { instance_sid: instance_sid, flex_user_sid: flex_user_sid,  }
                        @uri = "/Instances/#{@solution[:instance_sid]}/Users/#{@solution[:flex_user_sid]}"

                        
                    end
                    ##
                    # Fetch the FlexUserInstance
                    # @return [FlexUserInstance] Fetched FlexUserInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        FlexUserInstance.new(
                            @version,
                            payload,
                            instance_sid: @solution[:instance_sid],
                            flex_user_sid: @solution[:flex_user_sid],
                        )
                    end

                    ##
                    # Update the FlexUserInstance
                    # @param [String] first_name First name of the User.
                    # @param [String] last_name Last name of the User.
                    # @param [String] email Email of the User.
                    # @param [String] friendly_name Friendly name of the User.
                    # @param [String] user_sid The unique SID identifier of the Twilio Unified User.
                    # @param [String] locale The locale preference of the user.
                    # @return [FlexUserInstance] Updated FlexUserInstance
                    def update(
                        first_name: :unset, 
                        last_name: :unset, 
                        email: :unset, 
                        friendly_name: :unset, 
                        user_sid: :unset, 
                        locale: :unset
                    )

                        data = Twilio::Values.of({
                            'FirstName' => first_name,
                            'LastName' => last_name,
                            'Email' => email,
                            'FriendlyName' => friendly_name,
                            'UserSid' => user_sid,
                            'Locale' => locale,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        FlexUserInstance.new(
                            @version,
                            payload,
                            instance_sid: @solution[:instance_sid],
                            flex_user_sid: @solution[:flex_user_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V2.FlexUserContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V2.FlexUserContext #{context}>"
                    end
                end

                class FlexUserPage < Page
                    ##
                    # Initialize the FlexUserPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [FlexUserPage] FlexUserPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of FlexUserInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [FlexUserInstance] FlexUserInstance
                    def get_instance(payload)
                        FlexUserInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.FlexApi.V2.FlexUserPage>'
                    end
                end
                class FlexUserInstance < InstanceResource
                    ##
                    # Initialize the FlexUserInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this FlexUser
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [FlexUserInstance] FlexUserInstance
                    def initialize(version, payload , instance_sid: nil, flex_user_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'instance_sid' => payload['instance_sid'],
                            'user_sid' => payload['user_sid'],
                            'flex_user_sid' => payload['flex_user_sid'],
                            'worker_sid' => payload['worker_sid'],
                            'workspace_sid' => payload['workspace_sid'],
                            'flex_team_sid' => payload['flex_team_sid'],
                            'first_name' => payload['first_name'],
                            'last_name' => payload['last_name'],
                            'username' => payload['username'],
                            'email' => payload['email'],
                            'friendly_name' => payload['friendly_name'],
                            'locale' => payload['locale'],
                            'roles' => payload['roles'],
                            'created_date' => Twilio.deserialize_iso8601_datetime(payload['created_date']),
                            'updated_date' => Twilio.deserialize_iso8601_datetime(payload['updated_date']),
                            'version' => payload['version'] == nil ? payload['version'] : payload['version'].to_i,
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'instance_sid' => instance_sid  || @properties['instance_sid']  ,'flex_user_sid' => flex_user_sid  || @properties['flex_user_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [FlexUserContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = FlexUserContext.new(@version , @params['instance_sid'], @params['flex_user_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique SID of the account that created the resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The unique ID created by Twilio to identify a Flex instance.
                    def instance_sid
                        @properties['instance_sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the Twilio Unified User.
                    def user_sid
                        @properties['user_sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the Flex User.
                    def flex_user_sid
                        @properties['flex_user_sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the worker.
                    def worker_sid
                        @properties['worker_sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the workspace.
                    def workspace_sid
                        @properties['workspace_sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the Flex Team.
                    def flex_team_sid
                        @properties['flex_team_sid']
                    end
                    
                    ##
                    # @return [String] First name of the User.
                    def first_name
                        @properties['first_name']
                    end
                    
                    ##
                    # @return [String] Last name of the User.
                    def last_name
                        @properties['last_name']
                    end
                    
                    ##
                    # @return [String] Username of the User.
                    def username
                        @properties['username']
                    end
                    
                    ##
                    # @return [String] Email of the User.
                    def email
                        @properties['email']
                    end
                    
                    ##
                    # @return [String] Friendly name of the User.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] The locale preference of the user.
                    def locale
                        @properties['locale']
                    end
                    
                    ##
                    # @return [Array<String>] The roles of the user.
                    def roles
                        @properties['roles']
                    end
                    
                    ##
                    # @return [Time] The date that this user was created, given in ISO 8601 format.
                    def created_date
                        @properties['created_date']
                    end
                    
                    ##
                    # @return [Time] The date that this user was updated, given in ISO 8601 format.
                    def updated_date
                        @properties['updated_date']
                    end
                    
                    ##
                    # @return [String] The current version of the user.
                    def version
                        @properties['version']
                    end
                    
                    ##
                    # @return [String] 
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the FlexUserInstance
                    # @return [FlexUserInstance] Fetched FlexUserInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the FlexUserInstance
                    # @param [String] first_name First name of the User.
                    # @param [String] last_name Last name of the User.
                    # @param [String] email Email of the User.
                    # @param [String] friendly_name Friendly name of the User.
                    # @param [String] user_sid The unique SID identifier of the Twilio Unified User.
                    # @param [String] locale The locale preference of the user.
                    # @return [FlexUserInstance] Updated FlexUserInstance
                    def update(
                        first_name: :unset, 
                        last_name: :unset, 
                        email: :unset, 
                        friendly_name: :unset, 
                        user_sid: :unset, 
                        locale: :unset
                    )

                        context.update(
                            first_name: first_name, 
                            last_name: last_name, 
                            email: email, 
                            friendly_name: friendly_name, 
                            user_sid: user_sid, 
                            locale: locale, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V2.FlexUserInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V2.FlexUserInstance #{values}>"
                    end
                end

            end
        end
    end
end
