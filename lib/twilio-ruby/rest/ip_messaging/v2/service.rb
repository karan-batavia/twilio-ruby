##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Ip_messaging
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class IpMessaging < IpMessagingBase
            class V2 < Version
                class ServiceList < ListResource
                
                    ##
                    # Initialize the ServiceList
                    # @param [Version] version Version that contains the resource
                    # @return [ServiceList] ServiceList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Services"
                        
                    end
                    ##
                    # Create the ServiceInstance
                    # @param [String] friendly_name 
                    # @return [ServiceInstance] Created ServiceInstance
                    def create(
                        friendly_name: nil
                    )

                        data = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.create('POST', @uri, data: data, headers: headers)
                        ServiceInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists ServiceInstance records from the API as a list.
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
                    # When passed a block, yields ServiceInstance records from the API.
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
                    # Retrieve a single page of ServiceInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of ServiceInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })
                        headers = Twilio::Values.of({})
                        
                        

                        response = @version.page('GET', @uri, params: params, headers: headers)

                        ServicePage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of ServiceInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of ServiceInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    ServicePage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.IpMessaging.V2.ServiceList>'
                    end
                end


                class ServiceContext < InstanceContext
                    ##
                    # Initialize the ServiceContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] sid 
                    # @return [ServiceContext] ServiceContext
                    def initialize(version, sid)
                        super(version)

                        # Path Solution
                        @solution = { sid: sid,  }
                        @uri = "/Services/#{@solution[:sid]}"

                        # Dependents
                        @bindings = nil
                        @channels = nil
                        @roles = nil
                        @users = nil
                    end
                    ##
                    # Delete the ServiceInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        @version.delete('DELETE', @uri, headers: headers)
                    end

                    ##
                    # Fetch the ServiceInstance
                    # @return [ServiceInstance] Fetched ServiceInstance
                    def fetch

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.fetch('GET', @uri, headers: headers)
                        ServiceInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the ServiceInstance
                    # @param [String] friendly_name 
                    # @param [String] default_service_role_sid 
                    # @param [String] default_channel_role_sid 
                    # @param [String] default_channel_creator_role_sid 
                    # @param [Boolean] read_status_enabled 
                    # @param [Boolean] reachability_enabled 
                    # @param [String] typing_indicator_timeout 
                    # @param [String] consumption_report_interval 
                    # @param [Boolean] notifications_new_message_enabled 
                    # @param [String] notifications_new_message_template 
                    # @param [String] notifications_new_message_sound 
                    # @param [Boolean] notifications_new_message_badge_count_enabled 
                    # @param [Boolean] notifications_added_to_channel_enabled 
                    # @param [String] notifications_added_to_channel_template 
                    # @param [String] notifications_added_to_channel_sound 
                    # @param [Boolean] notifications_removed_from_channel_enabled 
                    # @param [String] notifications_removed_from_channel_template 
                    # @param [String] notifications_removed_from_channel_sound 
                    # @param [Boolean] notifications_invited_to_channel_enabled 
                    # @param [String] notifications_invited_to_channel_template 
                    # @param [String] notifications_invited_to_channel_sound 
                    # @param [String] pre_webhook_url 
                    # @param [String] post_webhook_url 
                    # @param [String] webhook_method 
                    # @param [Array[String]] webhook_filters 
                    # @param [String] limits_channel_members 
                    # @param [String] limits_user_channels 
                    # @param [String] media_compatibility_message 
                    # @param [String] pre_webhook_retry_count 
                    # @param [String] post_webhook_retry_count 
                    # @param [Boolean] notifications_log_enabled 
                    # @return [ServiceInstance] Updated ServiceInstance
                    def update(
                        friendly_name: :unset, 
                        default_service_role_sid: :unset, 
                        default_channel_role_sid: :unset, 
                        default_channel_creator_role_sid: :unset, 
                        read_status_enabled: :unset, 
                        reachability_enabled: :unset, 
                        typing_indicator_timeout: :unset, 
                        consumption_report_interval: :unset, 
                        notifications_new_message_enabled: :unset, 
                        notifications_new_message_template: :unset, 
                        notifications_new_message_sound: :unset, 
                        notifications_new_message_badge_count_enabled: :unset, 
                        notifications_added_to_channel_enabled: :unset, 
                        notifications_added_to_channel_template: :unset, 
                        notifications_added_to_channel_sound: :unset, 
                        notifications_removed_from_channel_enabled: :unset, 
                        notifications_removed_from_channel_template: :unset, 
                        notifications_removed_from_channel_sound: :unset, 
                        notifications_invited_to_channel_enabled: :unset, 
                        notifications_invited_to_channel_template: :unset, 
                        notifications_invited_to_channel_sound: :unset, 
                        pre_webhook_url: :unset, 
                        post_webhook_url: :unset, 
                        webhook_method: :unset, 
                        webhook_filters: :unset, 
                        limits_channel_members: :unset, 
                        limits_user_channels: :unset, 
                        media_compatibility_message: :unset, 
                        pre_webhook_retry_count: :unset, 
                        post_webhook_retry_count: :unset, 
                        notifications_log_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'DefaultServiceRoleSid' => default_service_role_sid,
                            'DefaultChannelRoleSid' => default_channel_role_sid,
                            'DefaultChannelCreatorRoleSid' => default_channel_creator_role_sid,
                            'ReadStatusEnabled' => read_status_enabled,
                            'ReachabilityEnabled' => reachability_enabled,
                            'TypingIndicatorTimeout' => typing_indicator_timeout,
                            'ConsumptionReportInterval' => consumption_report_interval,
                            'Notifications.NewMessage.Enabled' => notifications_new_message_enabled,
                            'Notifications.NewMessage.Template' => notifications_new_message_template,
                            'Notifications.NewMessage.Sound' => notifications_new_message_sound,
                            'Notifications.NewMessage.BadgeCountEnabled' => notifications_new_message_badge_count_enabled,
                            'Notifications.AddedToChannel.Enabled' => notifications_added_to_channel_enabled,
                            'Notifications.AddedToChannel.Template' => notifications_added_to_channel_template,
                            'Notifications.AddedToChannel.Sound' => notifications_added_to_channel_sound,
                            'Notifications.RemovedFromChannel.Enabled' => notifications_removed_from_channel_enabled,
                            'Notifications.RemovedFromChannel.Template' => notifications_removed_from_channel_template,
                            'Notifications.RemovedFromChannel.Sound' => notifications_removed_from_channel_sound,
                            'Notifications.InvitedToChannel.Enabled' => notifications_invited_to_channel_enabled,
                            'Notifications.InvitedToChannel.Template' => notifications_invited_to_channel_template,
                            'Notifications.InvitedToChannel.Sound' => notifications_invited_to_channel_sound,
                            'PreWebhookUrl' => pre_webhook_url,
                            'PostWebhookUrl' => post_webhook_url,
                            'WebhookMethod' => webhook_method,
                            'WebhookFilters' => Twilio.serialize_list(webhook_filters) { |e| e },
                            'Limits.ChannelMembers' => limits_channel_members,
                            'Limits.UserChannels' => limits_user_channels,
                            'Media.CompatibilityMessage' => media_compatibility_message,
                            'PreWebhookRetryCount' => pre_webhook_retry_count,
                            'PostWebhookRetryCount' => post_webhook_retry_count,
                            'Notifications.LogEnabled' => notifications_log_enabled,
                        })

                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        ServiceInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Access the bindings
                    # @return [BindingList]
                    # @return [BindingContext] if sid was passed.
                    def bindings(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return BindingContext.new(@version, @solution[:sid],sid )
                        end

                        unless @bindings
                            @bindings = BindingList.new(
                                @version, service_sid: @solution[:sid], )
                        end

                     @bindings
                    end
                    ##
                    # Access the channels
                    # @return [ChannelList]
                    # @return [ChannelContext] if sid was passed.
                    def channels(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return ChannelContext.new(@version, @solution[:sid],sid )
                        end

                        unless @channels
                            @channels = ChannelList.new(
                                @version, service_sid: @solution[:sid], )
                        end

                     @channels
                    end
                    ##
                    # Access the roles
                    # @return [RoleList]
                    # @return [RoleContext] if sid was passed.
                    def roles(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return RoleContext.new(@version, @solution[:sid],sid )
                        end

                        unless @roles
                            @roles = RoleList.new(
                                @version, service_sid: @solution[:sid], )
                        end

                     @roles
                    end
                    ##
                    # Access the users
                    # @return [UserList]
                    # @return [UserContext] if sid was passed.
                    def users(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return UserContext.new(@version, @solution[:sid],sid )
                        end

                        unless @users
                            @users = UserList.new(
                                @version, service_sid: @solution[:sid], )
                        end

                     @users
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.IpMessaging.V2.ServiceContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.IpMessaging.V2.ServiceContext #{context}>"
                    end
                end

                class ServicePage < Page
                    ##
                    # Initialize the ServicePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [ServicePage] ServicePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of ServiceInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [ServiceInstance] ServiceInstance
                    def get_instance(payload)
                        ServiceInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.IpMessaging.V2.ServicePage>'
                    end
                end
                class ServiceInstance < InstanceResource
                    ##
                    # Initialize the ServiceInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Service
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [ServiceInstance] ServiceInstance
                    def initialize(version, payload , sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'friendly_name' => payload['friendly_name'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'default_service_role_sid' => payload['default_service_role_sid'],
                            'default_channel_role_sid' => payload['default_channel_role_sid'],
                            'default_channel_creator_role_sid' => payload['default_channel_creator_role_sid'],
                            'read_status_enabled' => payload['read_status_enabled'],
                            'reachability_enabled' => payload['reachability_enabled'],
                            'typing_indicator_timeout' => payload['typing_indicator_timeout'] == nil ? payload['typing_indicator_timeout'] : payload['typing_indicator_timeout'].to_i,
                            'consumption_report_interval' => payload['consumption_report_interval'] == nil ? payload['consumption_report_interval'] : payload['consumption_report_interval'].to_i,
                            'limits' => payload['limits'],
                            'pre_webhook_url' => payload['pre_webhook_url'],
                            'post_webhook_url' => payload['post_webhook_url'],
                            'webhook_method' => payload['webhook_method'],
                            'webhook_filters' => payload['webhook_filters'],
                            'pre_webhook_retry_count' => payload['pre_webhook_retry_count'] == nil ? payload['pre_webhook_retry_count'] : payload['pre_webhook_retry_count'].to_i,
                            'post_webhook_retry_count' => payload['post_webhook_retry_count'] == nil ? payload['post_webhook_retry_count'] : payload['post_webhook_retry_count'].to_i,
                            'notifications' => payload['notifications'],
                            'media' => payload['media'],
                            'url' => payload['url'],
                            'links' => payload['links'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [ServiceContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = ServiceContext.new(@version , @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] 
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] 
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] 
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [Time] 
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] 
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] 
                    def default_service_role_sid
                        @properties['default_service_role_sid']
                    end
                    
                    ##
                    # @return [String] 
                    def default_channel_role_sid
                        @properties['default_channel_role_sid']
                    end
                    
                    ##
                    # @return [String] 
                    def default_channel_creator_role_sid
                        @properties['default_channel_creator_role_sid']
                    end
                    
                    ##
                    # @return [Boolean] 
                    def read_status_enabled
                        @properties['read_status_enabled']
                    end
                    
                    ##
                    # @return [Boolean] 
                    def reachability_enabled
                        @properties['reachability_enabled']
                    end
                    
                    ##
                    # @return [String] 
                    def typing_indicator_timeout
                        @properties['typing_indicator_timeout']
                    end
                    
                    ##
                    # @return [String] 
                    def consumption_report_interval
                        @properties['consumption_report_interval']
                    end
                    
                    ##
                    # @return [Hash] 
                    def limits
                        @properties['limits']
                    end
                    
                    ##
                    # @return [String] 
                    def pre_webhook_url
                        @properties['pre_webhook_url']
                    end
                    
                    ##
                    # @return [String] 
                    def post_webhook_url
                        @properties['post_webhook_url']
                    end
                    
                    ##
                    # @return [String] 
                    def webhook_method
                        @properties['webhook_method']
                    end
                    
                    ##
                    # @return [Array<String>] 
                    def webhook_filters
                        @properties['webhook_filters']
                    end
                    
                    ##
                    # @return [String] 
                    def pre_webhook_retry_count
                        @properties['pre_webhook_retry_count']
                    end
                    
                    ##
                    # @return [String] 
                    def post_webhook_retry_count
                        @properties['post_webhook_retry_count']
                    end
                    
                    ##
                    # @return [Hash] 
                    def notifications
                        @properties['notifications']
                    end
                    
                    ##
                    # @return [Hash] 
                    def media
                        @properties['media']
                    end
                    
                    ##
                    # @return [String] 
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Hash] 
                    def links
                        @properties['links']
                    end
                    
                    ##
                    # Delete the ServiceInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the ServiceInstance
                    # @return [ServiceInstance] Fetched ServiceInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the ServiceInstance
                    # @param [String] friendly_name 
                    # @param [String] default_service_role_sid 
                    # @param [String] default_channel_role_sid 
                    # @param [String] default_channel_creator_role_sid 
                    # @param [Boolean] read_status_enabled 
                    # @param [Boolean] reachability_enabled 
                    # @param [String] typing_indicator_timeout 
                    # @param [String] consumption_report_interval 
                    # @param [Boolean] notifications_new_message_enabled 
                    # @param [String] notifications_new_message_template 
                    # @param [String] notifications_new_message_sound 
                    # @param [Boolean] notifications_new_message_badge_count_enabled 
                    # @param [Boolean] notifications_added_to_channel_enabled 
                    # @param [String] notifications_added_to_channel_template 
                    # @param [String] notifications_added_to_channel_sound 
                    # @param [Boolean] notifications_removed_from_channel_enabled 
                    # @param [String] notifications_removed_from_channel_template 
                    # @param [String] notifications_removed_from_channel_sound 
                    # @param [Boolean] notifications_invited_to_channel_enabled 
                    # @param [String] notifications_invited_to_channel_template 
                    # @param [String] notifications_invited_to_channel_sound 
                    # @param [String] pre_webhook_url 
                    # @param [String] post_webhook_url 
                    # @param [String] webhook_method 
                    # @param [Array[String]] webhook_filters 
                    # @param [String] limits_channel_members 
                    # @param [String] limits_user_channels 
                    # @param [String] media_compatibility_message 
                    # @param [String] pre_webhook_retry_count 
                    # @param [String] post_webhook_retry_count 
                    # @param [Boolean] notifications_log_enabled 
                    # @return [ServiceInstance] Updated ServiceInstance
                    def update(
                        friendly_name: :unset, 
                        default_service_role_sid: :unset, 
                        default_channel_role_sid: :unset, 
                        default_channel_creator_role_sid: :unset, 
                        read_status_enabled: :unset, 
                        reachability_enabled: :unset, 
                        typing_indicator_timeout: :unset, 
                        consumption_report_interval: :unset, 
                        notifications_new_message_enabled: :unset, 
                        notifications_new_message_template: :unset, 
                        notifications_new_message_sound: :unset, 
                        notifications_new_message_badge_count_enabled: :unset, 
                        notifications_added_to_channel_enabled: :unset, 
                        notifications_added_to_channel_template: :unset, 
                        notifications_added_to_channel_sound: :unset, 
                        notifications_removed_from_channel_enabled: :unset, 
                        notifications_removed_from_channel_template: :unset, 
                        notifications_removed_from_channel_sound: :unset, 
                        notifications_invited_to_channel_enabled: :unset, 
                        notifications_invited_to_channel_template: :unset, 
                        notifications_invited_to_channel_sound: :unset, 
                        pre_webhook_url: :unset, 
                        post_webhook_url: :unset, 
                        webhook_method: :unset, 
                        webhook_filters: :unset, 
                        limits_channel_members: :unset, 
                        limits_user_channels: :unset, 
                        media_compatibility_message: :unset, 
                        pre_webhook_retry_count: :unset, 
                        post_webhook_retry_count: :unset, 
                        notifications_log_enabled: :unset
                    )

                        context.update(
                            friendly_name: friendly_name, 
                            default_service_role_sid: default_service_role_sid, 
                            default_channel_role_sid: default_channel_role_sid, 
                            default_channel_creator_role_sid: default_channel_creator_role_sid, 
                            read_status_enabled: read_status_enabled, 
                            reachability_enabled: reachability_enabled, 
                            typing_indicator_timeout: typing_indicator_timeout, 
                            consumption_report_interval: consumption_report_interval, 
                            notifications_new_message_enabled: notifications_new_message_enabled, 
                            notifications_new_message_template: notifications_new_message_template, 
                            notifications_new_message_sound: notifications_new_message_sound, 
                            notifications_new_message_badge_count_enabled: notifications_new_message_badge_count_enabled, 
                            notifications_added_to_channel_enabled: notifications_added_to_channel_enabled, 
                            notifications_added_to_channel_template: notifications_added_to_channel_template, 
                            notifications_added_to_channel_sound: notifications_added_to_channel_sound, 
                            notifications_removed_from_channel_enabled: notifications_removed_from_channel_enabled, 
                            notifications_removed_from_channel_template: notifications_removed_from_channel_template, 
                            notifications_removed_from_channel_sound: notifications_removed_from_channel_sound, 
                            notifications_invited_to_channel_enabled: notifications_invited_to_channel_enabled, 
                            notifications_invited_to_channel_template: notifications_invited_to_channel_template, 
                            notifications_invited_to_channel_sound: notifications_invited_to_channel_sound, 
                            pre_webhook_url: pre_webhook_url, 
                            post_webhook_url: post_webhook_url, 
                            webhook_method: webhook_method, 
                            webhook_filters: webhook_filters, 
                            limits_channel_members: limits_channel_members, 
                            limits_user_channels: limits_user_channels, 
                            media_compatibility_message: media_compatibility_message, 
                            pre_webhook_retry_count: pre_webhook_retry_count, 
                            post_webhook_retry_count: post_webhook_retry_count, 
                            notifications_log_enabled: notifications_log_enabled, 
                        )
                    end

                    ##
                    # Access the bindings
                    # @return [bindings] bindings
                    def bindings
                        context.bindings
                    end

                    ##
                    # Access the channels
                    # @return [channels] channels
                    def channels
                        context.channels
                    end

                    ##
                    # Access the roles
                    # @return [roles] roles
                    def roles
                        context.roles
                    end

                    ##
                    # Access the users
                    # @return [users] users
                    def users
                        context.users
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.IpMessaging.V2.ServiceInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.IpMessaging.V2.ServiceInstance #{values}>"
                    end
                end

            end
        end
    end
end
