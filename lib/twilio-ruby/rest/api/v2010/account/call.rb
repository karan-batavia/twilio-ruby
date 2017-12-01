##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class CallList < ListResource
            ##
            # Initialize the CallList
            # @param [Version] version Version that contains the resource
            # @param [String] account_sid The unique id of the Account responsible for
            #   creating this Call
            # @return [CallList] CallList
            def initialize(version, account_sid: nil)
              super(version)

              # Path Solution
              @solution = {account_sid: account_sid}
              @uri = "/Accounts/#{@solution[:account_sid]}/Calls.json"

              # Components
              @feedback_summaries = nil
            end

            ##
            # Retrieve a single page of CallInstance records from the API.
            # Request is executed immediately.
            # @param [String] to The phone number, SIP address or client identifier to call.
            # @param [String] from The phone number or client identifier to use as the caller
            #   id. If using a phone number, it must be a Twilio number or a Verified outgoing
            #   caller id for your account.
            # @param [String] method The HTTP method Twilio should use when requesting the
            #   URL. Defaults to `POST`. If an `ApplicationSid` was provided, this parameter is
            #   ignored.
            # @param [String] fallback_url A URL that Twilio will request if an error occurs
            #   requesting or executing the TwiML at `Url`. If an `ApplicationSid` was provided,
            #   this parameter is ignored.
            # @param [String] fallback_method The HTTP method that Twilio should use to
            #   request the `FallbackUrl`. Must be either `GET` or `POST`. Defaults to `POST`.
            #   If an `ApplicationSid` was provided, this parameter is ignored.
            # @param [String] status_callback A URL that Twilio will request when the call
            #   ends to notify your app. If an `ApplicationSid` was provided, this parameter is
            #   ignored.
            # @param [String] status_callback_event The status_callback_event
            # @param [String] status_callback_method The HTTP method that Twilio should use to
            #   request the `StatusCallback`. Defaults to `POST`. If an `ApplicationSid` was
            #   provided, this parameter is ignored.
            # @param [String] send_digits A string of keys to dial after connecting to the
            #   number. Valid digits in the string include: any digit (`0`-`9`), '`#`', '`*`'
            #   and '`w`' (to insert a half second pause). For example, if you connected to a
            #   company phone number, and wanted to pause for one second, dial extension 1234
            #   and then the pound key, use `ww1234#`.
            # @param [String] if_machine Tell Twilio to try and determine if a machine (like
            #   voicemail) or a human has answered the call. Possible value are `Continue` and
            #   `Hangup`.
            # @param [String] timeout The integer number of seconds that Twilio should allow
            #   the phone to ring before assuming there is no answer. Default is `60` seconds,
            #   the maximum is `999` seconds. Note, you could set this to a low value, such as
            #   `15`, to hangup before reaching an answering machine or voicemail.
            # @param [Boolean] record Set this parameter to true to record the entirety of a
            #   phone call. The RecordingUrl will be sent to the StatusCallback URL. Defaults to
            #   false.
            # @param [String] recording_channels The recording_channels
            # @param [String] recording_status_callback The recording_status_callback
            # @param [String] recording_status_callback_method The
            #   recording_status_callback_method
            # @param [String] sip_auth_username The sip_auth_username
            # @param [String] sip_auth_password The sip_auth_password
            # @param [String] machine_detection Twilio will try to detect if a human, fax
            #   machine or answering machine has answered the call. Possible value are `Enable`
            #   and `DetectMessageEnd`.
            # @param [String] machine_detection_timeout The integer number of miliseconds that
            #   Twilio should wait while machine_detection is performned before timing out.
            # @param [String] url The fully qualified URL that should be consulted when the
            #   call connects. Just like when you set a URL on a phone number for handling
            #   inbound calls.
            # @param [String] application_sid The 34 character sid of the application Twilio
            #   should use to handle this phone call. If this parameter is present, Twilio will
            #   ignore all of the voice URLs passed and use the URLs set on the application.
            # @return [CallInstance] Newly created CallInstance
            def create(to: nil, from: nil, method: :unset, fallback_url: :unset, fallback_method: :unset, status_callback: :unset, status_callback_event: :unset, status_callback_method: :unset, send_digits: :unset, if_machine: :unset, timeout: :unset, record: :unset, recording_channels: :unset, recording_status_callback: :unset, recording_status_callback_method: :unset, sip_auth_username: :unset, sip_auth_password: :unset, machine_detection: :unset, machine_detection_timeout: :unset, url: :unset, application_sid: :unset)
              data = Twilio::Values.of({
                  'To' => to,
                  'From' => from,
                  'Url' => url,
                  'ApplicationSid' => application_sid,
                  'Method' => method,
                  'FallbackUrl' => fallback_url,
                  'FallbackMethod' => fallback_method,
                  'StatusCallback' => status_callback,
                  'StatusCallbackEvent' => Twilio.serialize_list(status_callback_event) { |e| e },
                  'StatusCallbackMethod' => status_callback_method,
                  'SendDigits' => send_digits,
                  'IfMachine' => if_machine,
                  'Timeout' => timeout,
                  'Record' => record,
                  'RecordingChannels' => recording_channels,
                  'RecordingStatusCallback' => recording_status_callback,
                  'RecordingStatusCallbackMethod' => recording_status_callback_method,
                  'SipAuthUsername' => sip_auth_username,
                  'SipAuthPassword' => sip_auth_password,
                  'MachineDetection' => machine_detection,
                  'MachineDetectionTimeout' => machine_detection_timeout,
              })

              payload = @version.create(
                  'POST',
                  @uri,
                  data: data
              )

              CallInstance.new(@version, payload, account_sid: @solution[:account_sid])
            end

            ##
            # Lists CallInstance records from the API as a list.
            # Unlike stream(), this operation is eager and will load `limit` records into
            # memory before returning.
            # @param [String] to Only show calls to this phone number or Client identifier
            # @param [String] from Only show calls from this phone number or Client identifier
            # @param [String] parent_call_sid Only show calls spawned by the call with this
            #   Sid
            # @param [feedback_summary.Status] status Only show calls currently in this status
            # @param [Time] start_time_before StartTime to filter on
            # @param [Time] start_time StartTime to filter on
            # @param [Time] start_time_after StartTime to filter on
            # @param [Time] end_time_before EndTime to filter on
            # @param [Time] end_time EndTime to filter on
            # @param [Time] end_time_after EndTime to filter on
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit.  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records.  If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Array] Array of up to limit results
            def list(to: :unset, from: :unset, parent_call_sid: :unset, status: :unset, start_time_before: :unset, start_time: :unset, start_time_after: :unset, end_time_before: :unset, end_time: :unset, end_time_after: :unset, limit: nil, page_size: nil)
              self.stream(
                  to: to,
                  from: from,
                  parent_call_sid: parent_call_sid,
                  status: status,
                  start_time_before: start_time_before,
                  start_time: start_time,
                  start_time_after: start_time_after,
                  end_time_before: end_time_before,
                  end_time: end_time,
                  end_time_after: end_time_after,
                  limit: limit,
                  page_size: page_size
              ).entries
            end

            ##
            # Streams CallInstance records from the API as an Enumerable.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            # @param [String] to Only show calls to this phone number or Client identifier
            # @param [String] from Only show calls from this phone number or Client identifier
            # @param [String] parent_call_sid Only show calls spawned by the call with this
            #   Sid
            # @param [feedback_summary.Status] status Only show calls currently in this status
            # @param [Time] start_time_before StartTime to filter on
            # @param [Time] start_time StartTime to filter on
            # @param [Time] start_time_after StartTime to filter on
            # @param [Time] end_time_before EndTime to filter on
            # @param [Time] end_time EndTime to filter on
            # @param [Time] end_time_after EndTime to filter on
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit. Default is no limit.
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records. If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Enumerable] Enumerable that will yield up to limit results
            def stream(to: :unset, from: :unset, parent_call_sid: :unset, status: :unset, start_time_before: :unset, start_time: :unset, start_time_after: :unset, end_time_before: :unset, end_time: :unset, end_time_after: :unset, limit: nil, page_size: nil)
              limits = @version.read_limits(limit, page_size)

              page = self.page(
                  to: to,
                  from: from,
                  parent_call_sid: parent_call_sid,
                  status: status,
                  start_time_before: start_time_before,
                  start_time: start_time,
                  start_time_after: start_time_after,
                  end_time_before: end_time_before,
                  end_time: end_time,
                  end_time_after: end_time_after,
                  page_size: limits[:page_size],
              )

              @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
            end

            ##
            # When passed a block, yields CallInstance records from the API.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            def each
              limits = @version.read_limits

              page = self.page(page_size: limits[:page_size])

              @version.stream(page,
                              limit: limits[:limit],
                              page_limit: limits[:page_limit]).each {|x| yield x}
            end

            ##
            # Retrieve a single page of CallInstance records from the API.
            # Request is executed immediately.
            # @param [String] to Only show calls to this phone number or Client identifier
            # @param [String] from Only show calls from this phone number or Client identifier
            # @param [String] parent_call_sid Only show calls spawned by the call with this
            #   Sid
            # @param [feedback_summary.Status] status Only show calls currently in this status
            # @param [Time] start_time_before StartTime to filter on
            # @param [Time] start_time StartTime to filter on
            # @param [Time] start_time_after StartTime to filter on
            # @param [Time] end_time_before EndTime to filter on
            # @param [Time] end_time EndTime to filter on
            # @param [Time] end_time_after EndTime to filter on
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            # @return [Page] Page of CallInstance
            def page(to: :unset, from: :unset, parent_call_sid: :unset, status: :unset, start_time_before: :unset, start_time: :unset, start_time_after: :unset, end_time_before: :unset, end_time: :unset, end_time_after: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
              params = Twilio::Values.of({
                  'To' => to,
                  'From' => from,
                  'ParentCallSid' => parent_call_sid,
                  'Status' => status,
                  'StartTime<' => Twilio.serialize_iso8601_datetime(start_time_before),
                  'StartTime' => Twilio.serialize_iso8601_datetime(start_time),
                  'StartTime>' => Twilio.serialize_iso8601_datetime(start_time_after),
                  'EndTime<' => Twilio.serialize_iso8601_datetime(end_time_before),
                  'EndTime' => Twilio.serialize_iso8601_datetime(end_time),
                  'EndTime>' => Twilio.serialize_iso8601_datetime(end_time_after),
                  'PageToken' => page_token,
                  'Page' => page_number,
                  'PageSize' => page_size,
              })
              response = @version.page(
                  'GET',
                  @uri,
                  params
              )
              CallPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of CallInstance records from the API.
            # Request is executed immediately.
            # @param [String] target_url API-generated URL for the requested results page
            # @return [Page] Page of CallInstance
            def get_page(target_url)
              response = @version.domain.request(
                  'GET',
                  target_url
              )
              CallPage.new(@version, response, @solution)
            end

            ##
            # Access the feedback_summaries
            # @param [String] sid The sid
            # @return [FeedbackSummaryList]
            # @return [FeedbackSummaryContext] if sid was passed.
            def feedback_summaries(sid=:unset)
              raise ArgumentError, 'sid cannot be nil' if sid.nil?

              if sid != :unset
                return FeedbackSummaryContext.new(@version, @solution[:account_sid], sid)
              end

                @feedback_summaries ||= FeedbackSummaryList.new(@version, account_sid: @solution[:account_sid])
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Api.V2010.CallList>'
            end
          end

          class CallPage < Page
            ##
            # Initialize the CallPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [CallPage] CallPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of CallInstance
            # @param [Hash] payload Payload response from the API
            # @return [CallInstance] CallInstance
            def get_instance(payload)
              CallInstance.new(@version, payload, account_sid: @solution[:account_sid])
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Api.V2010.CallPage>'
            end
          end

          class CallContext < InstanceContext
            ##
            # Initialize the CallContext
            # @param [Version] version Version that contains the resource
            # @param [String] account_sid The account_sid
            # @param [String] sid The Call Sid that uniquely identifies the Call to fetch
            # @return [CallContext] CallContext
            def initialize(version, account_sid, sid)
              super(version)

              # Path Solution
              @solution = {account_sid: account_sid, sid: sid}
              @uri = "/Accounts/#{@solution[:account_sid]}/Calls/#{@solution[:sid]}.json"

              # Dependents
              @recordings = nil
              @notifications = nil
              @feedback = nil
            end

            ##
            # Deletes the CallInstance
            # @return [Boolean] true if delete succeeds, true otherwise
            def delete
              @version.delete('delete', @uri)
            end

            ##
            # Fetch a CallInstance
            # @return [CallInstance] Fetched CallInstance
            def fetch
              params = Twilio::Values.of({})

              payload = @version.fetch(
                  'GET',
                  @uri,
                  params,
              )

              CallInstance.new(@version, payload, account_sid: @solution[:account_sid], sid: @solution[:sid])
            end

            ##
            # Update the CallInstance
            # @param [String] url A valid URL that returns TwiML. Twilio will immediately
            #   redirect the call to the new TwiML upon execution.
            # @param [String] method The HTTP method Twilio should use when requesting the
            #   URL. Defaults to `POST`.
            # @param [call.UpdateStatus] status Either `canceled` or `completed`. Specifying
            #   `canceled` will attempt to hangup calls that are queued or ringing but not
            #   affect calls already in progress. Specifying `completed` will attempt to hang up
            #   a call even if it's already in progress.
            # @param [String] fallback_url A URL that Twilio will request if an error occurs
            #   requesting or executing the TwiML at `Url`.
            # @param [String] fallback_method The HTTP method that Twilio should use to
            #   request the `FallbackUrl`. Must be either `GET` or `POST`. Defaults to `POST`.
            # @param [String] status_callback A URL that Twilio will request when the call
            #   ends to notify your app.
            # @param [String] status_callback_method The HTTP method that Twilio should use to
            #   request the `StatusCallback`. Defaults to `POST`.
            # @return [CallInstance] Updated CallInstance
            def update(url: :unset, method: :unset, status: :unset, fallback_url: :unset, fallback_method: :unset, status_callback: :unset, status_callback_method: :unset)
              data = Twilio::Values.of({
                  'Url' => url,
                  'Method' => method,
                  'Status' => status,
                  'FallbackUrl' => fallback_url,
                  'FallbackMethod' => fallback_method,
                  'StatusCallback' => status_callback,
                  'StatusCallbackMethod' => status_callback_method,
              })

              payload = @version.update(
                  'POST',
                  @uri,
                  data: data,
              )

              CallInstance.new(@version, payload, account_sid: @solution[:account_sid], sid: @solution[:sid])
            end

            ##
            # Access the recordings
            # @return [RecordingList]
            # @return [RecordingContext] if sid was passed.
            def recordings(sid=:unset)
              raise ArgumentError, 'sid cannot be nil' if sid.nil?

              if sid != :unset
                return RecordingContext.new(@version, @solution[:account_sid], @solution[:sid], sid)
              end

              unless @recordings
                @recordings = RecordingList.new(
                    @version,
                    account_sid: @solution[:account_sid],
                    call_sid: @solution[:sid],
                )
              end

              @recordings
            end

            ##
            # Access the notifications
            # @return [NotificationList]
            # @return [NotificationContext] if sid was passed.
            def notifications(sid=:unset)
              raise ArgumentError, 'sid cannot be nil' if sid.nil?

              if sid != :unset
                return NotificationContext.new(@version, @solution[:account_sid], @solution[:sid], sid)
              end

              unless @notifications
                @notifications = NotificationList.new(
                    @version,
                    account_sid: @solution[:account_sid],
                    call_sid: @solution[:sid],
                )
              end

              @notifications
            end

            ##
            # Access the feedback
            # @return [FeedbackList]
            # @return [FeedbackContext]
            def feedback
              FeedbackContext.new(@version, @solution[:account_sid], @solution[:sid])
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Api.V2010.CallContext #{context}>"
            end
          end

          class CallInstance < InstanceResource
            ##
            # Initialize the CallInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] account_sid The unique id of the Account responsible for
            #   creating this Call
            # @param [String] sid The Call Sid that uniquely identifies the Call to fetch
            # @return [CallInstance] CallInstance
            def initialize(version, payload, account_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'account_sid' => payload['account_sid'],
                  'annotation' => payload['annotation'],
                  'answered_by' => payload['answered_by'],
                  'api_version' => payload['api_version'],
                  'caller_name' => payload['caller_name'],
                  'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                  'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                  'direction' => payload['direction'],
                  'duration' => payload['duration'],
                  'end_time' => Twilio.deserialize_rfc2822(payload['end_time']),
                  'forwarded_from' => payload['forwarded_from'],
                  'from' => payload['from'],
                  'from_formatted' => payload['from_formatted'],
                  'group_sid' => payload['group_sid'],
                  'parent_call_sid' => payload['parent_call_sid'],
                  'phone_number_sid' => payload['phone_number_sid'],
                  'price' => payload['price'].to_f,
                  'price_unit' => payload['price_unit'],
                  'sid' => payload['sid'],
                  'start_time' => Twilio.deserialize_rfc2822(payload['start_time']),
                  'status' => payload['status'],
                  'subresource_uris' => payload['subresource_uris'],
                  'to' => payload['to'],
                  'to_formatted' => payload['to_formatted'],
                  'uri' => payload['uri'],
              }

              # Context
              @instance_context = nil
              @params = {'account_sid' => account_sid, 'sid' => sid || @properties['sid']}
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [CallContext] CallContext for this CallInstance
            def context
              unless @instance_context
                @instance_context = CallContext.new(@version, @params['account_sid'], @params['sid'])
              end
              @instance_context
            end

            ##
            # @return [String] The unique id of the Account responsible for creating this Call
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The annotation provided for the Call
            def annotation
              @properties['annotation']
            end

            ##
            # @return [String] If this call was initiated with answering machine detection, either `human` or `machine`. Empty otherwise.
            def answered_by
              @properties['answered_by']
            end

            ##
            # @return [String] The API Version the Call was created through
            def api_version
              @properties['api_version']
            end

            ##
            # @return [String] If this call was an incoming call to a phone number with Caller ID Lookup enabled, the caller's name. Empty otherwise.
            def caller_name
              @properties['caller_name']
            end

            ##
            # @return [Time] The date that this resource was created
            def date_created
              @properties['date_created']
            end

            ##
            # @return [Time] The date that this resource was last updated
            def date_updated
              @properties['date_updated']
            end

            ##
            # @return [String] A string describing the direction of the call. `inbound` for inbound calls, `outbound-api` for calls initiated via the REST API or `outbound-dial` for calls initiated by a `Dial` verb.
            def direction
              @properties['direction']
            end

            ##
            # @return [String] The duration
            def duration
              @properties['duration']
            end

            ##
            # @return [Time] The end time of the Call. Null if the call did not complete successfully.
            def end_time
              @properties['end_time']
            end

            ##
            # @return [String] If this Call was an incoming call forwarded from another number, the forwarding phone number (depends on carrier supporting forwarding). Empty otherwise.
            def forwarded_from
              @properties['forwarded_from']
            end

            ##
            # @return [String] The phone number, SIP address or Client identifier that made this Call. Phone numbers are in E.164 format (e.g. +16175551212). SIP addresses are formatted as `name@company.com`. Client identifiers are formatted `client:name`.
            def from
              @properties['from']
            end

            ##
            # @return [String] The phone number, SIP address or Client identifier that made this Call. Formatted for display.
            def from_formatted
              @properties['from_formatted']
            end

            ##
            # @return [String] A 34 character Group Sid associated with this Call. Empty if no Group is associated with the Call.
            def group_sid
              @properties['group_sid']
            end

            ##
            # @return [String] A 34 character string that uniquely identifies the Call that created this leg.
            def parent_call_sid
              @properties['parent_call_sid']
            end

            ##
            # @return [String] If the call was inbound, this is the Sid of the IncomingPhoneNumber that received the call. If the call was outbound, it is the Sid of the OutgoingCallerId from which the call was placed.
            def phone_number_sid
              @properties['phone_number_sid']
            end

            ##
            # @return [String] The charge for this call, in the currency associated with the account. Populated after the call is completed. May not be immediately available.
            def price
              @properties['price']
            end

            ##
            # @return [String] The currency in which `Price` is measured.
            def price_unit
              @properties['price_unit']
            end

            ##
            # @return [String] A 34 character string that uniquely identifies this resource.
            def sid
              @properties['sid']
            end

            ##
            # @return [Time] The start time of the Call. Null if the call has not yet been dialed.
            def start_time
              @properties['start_time']
            end

            ##
            # @return [recording.Status] The status
            def status
              @properties['status']
            end

            ##
            # @return [String] Call Instance Subresources
            def subresource_uris
              @properties['subresource_uris']
            end

            ##
            # @return [String] The phone number, SIP address or Client identifier that received this Call. Phone numbers are in E.164 format (e.g. +16175551212). SIP addresses are formatted as `name@company.com`. Client identifiers are formatted `client:name`.
            def to
              @properties['to']
            end

            ##
            # @return [String] The phone number, SIP address or Client identifier that received this Call. Formatted for display.
            def to_formatted
              @properties['to_formatted']
            end

            ##
            # @return [String] The URI for this resource, relative to `https://api.twilio.com`
            def uri
              @properties['uri']
            end

            ##
            # Deletes the CallInstance
            # @return [Boolean] true if delete succeeds, true otherwise
            def delete
              context.delete
            end

            ##
            # Fetch a CallInstance
            # @return [CallInstance] Fetched CallInstance
            def fetch
              context.fetch
            end

            ##
            # Update the CallInstance
            # @param [String] url A valid URL that returns TwiML. Twilio will immediately
            #   redirect the call to the new TwiML upon execution.
            # @param [String] method The HTTP method Twilio should use when requesting the
            #   URL. Defaults to `POST`.
            # @param [call.UpdateStatus] status Either `canceled` or `completed`. Specifying
            #   `canceled` will attempt to hangup calls that are queued or ringing but not
            #   affect calls already in progress. Specifying `completed` will attempt to hang up
            #   a call even if it's already in progress.
            # @param [String] fallback_url A URL that Twilio will request if an error occurs
            #   requesting or executing the TwiML at `Url`.
            # @param [String] fallback_method The HTTP method that Twilio should use to
            #   request the `FallbackUrl`. Must be either `GET` or `POST`. Defaults to `POST`.
            # @param [String] status_callback A URL that Twilio will request when the call
            #   ends to notify your app.
            # @param [String] status_callback_method The HTTP method that Twilio should use to
            #   request the `StatusCallback`. Defaults to `POST`.
            # @return [CallInstance] Updated CallInstance
            def update(url: :unset, method: :unset, status: :unset, fallback_url: :unset, fallback_method: :unset, status_callback: :unset, status_callback_method: :unset)
              context.update(
                  url: url,
                  method: method,
                  status: status,
                  fallback_url: fallback_url,
                  fallback_method: fallback_method,
                  status_callback: status_callback,
                  status_callback_method: status_callback_method,
              )
            end

            ##
            # Access the recordings
            # @return [recordings] recordings
            def recordings
              context.recordings
            end

            ##
            # Access the notifications
            # @return [notifications] notifications
            def notifications
              context.notifications
            end

            ##
            # Access the feedback
            # @return [feedback] feedback
            def feedback
              context.feedback
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Api.V2010.CallInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Api.V2010.CallInstance #{values}>"
            end
          end
        end
      end
    end
  end
end