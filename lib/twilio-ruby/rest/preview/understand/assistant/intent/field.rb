##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

module Twilio
  module REST
    class Preview < Domain
      class Understand < Version
        class AssistantContext < InstanceContext
          class IntentContext < InstanceContext
            ##
            # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
            class FieldList < ListResource
              ##
              # Initialize the FieldList
              # @param [Version] version Version that contains the resource
              # @param [String] assistant_sid The unique ID of the parent Assistant.
              # @param [String] intent_sid The unique ID of the Intent associated with this
              #   Field.
              # @return [FieldList] FieldList
              def initialize(version, assistant_sid: nil, intent_sid: nil)
                super(version)

                # Path Solution
                @solution = {assistant_sid: assistant_sid, intent_sid: intent_sid}
                @uri = "/Assistants/#{@solution[:assistant_sid]}/Intents/#{@solution[:intent_sid]}/Fields"
              end

              ##
              # Lists FieldInstance records from the API as a list.
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
                self.stream(limit: limit, page_size: page_size).entries
              end

              ##
              # Streams FieldInstance records from the API as an Enumerable.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #    guarantees to never return more than limit. Default is no limit.
              # @param [Integer] page_size Number of records to fetch per request, when
              #    not set will use the default value of 50 records. If no page_size is defined
              #    but a limit is defined, stream() will attempt to read the limit with the most
              #    efficient page size, i.e. min(limit, 1000)
              # @return [Enumerable] Enumerable that will yield up to limit results
              def stream(limit: nil, page_size: nil)
                limits = @version.read_limits(limit, page_size)

                page = self.page(page_size: limits[:page_size], )

                @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
              end

              ##
              # When passed a block, yields FieldInstance records from the API.
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
              # Retrieve a single page of FieldInstance records from the API.
              # Request is executed immediately.
              # @param [String] page_token PageToken provided by the API
              # @param [Integer] page_number Page Number, this value is simply for client state
              # @param [Integer] page_size Number of records to return, defaults to 50
              # @return [Page] Page of FieldInstance
              def page(page_token: :unset, page_number: :unset, page_size: :unset)
                params = Twilio::Values.of({
                    'PageToken' => page_token,
                    'Page' => page_number,
                    'PageSize' => page_size,
                })
                response = @version.page(
                    'GET',
                    @uri,
                    params
                )
                FieldPage.new(@version, response, @solution)
              end

              ##
              # Retrieve a single page of FieldInstance records from the API.
              # Request is executed immediately.
              # @param [String] target_url API-generated URL for the requested results page
              # @return [Page] Page of FieldInstance
              def get_page(target_url)
                response = @version.domain.request(
                    'GET',
                    target_url
                )
                FieldPage.new(@version, response, @solution)
              end

              ##
              # Retrieve a single page of FieldInstance records from the API.
              # Request is executed immediately.
              # @param [String] field_type The unique name or sid of the FieldType
              # @param [String] unique_name A user-provided string that uniquely identifies this
              #   resource as an alternative to the sid. Unique up to 64 characters long.
              # @return [FieldInstance] Newly created FieldInstance
              def create(field_type: nil, unique_name: nil)
                data = Twilio::Values.of({'FieldType' => field_type, 'UniqueName' => unique_name, })

                payload = @version.create(
                    'POST',
                    @uri,
                    data: data
                )

                FieldInstance.new(
                    @version,
                    payload,
                    assistant_sid: @solution[:assistant_sid],
                    intent_sid: @solution[:intent_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Preview.Understand.FieldList>'
              end
            end

            ##
            # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
            class FieldPage < Page
              ##
              # Initialize the FieldPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [FieldPage] FieldPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of FieldInstance
              # @param [Hash] payload Payload response from the API
              # @return [FieldInstance] FieldInstance
              def get_instance(payload)
                FieldInstance.new(
                    @version,
                    payload,
                    assistant_sid: @solution[:assistant_sid],
                    intent_sid: @solution[:intent_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Preview.Understand.FieldPage>'
              end
            end

            ##
            # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
            class FieldContext < InstanceContext
              ##
              # Initialize the FieldContext
              # @param [Version] version Version that contains the resource
              # @param [String] assistant_sid The assistant_sid
              # @param [String] intent_sid The intent_sid
              # @param [String] sid The sid
              # @return [FieldContext] FieldContext
              def initialize(version, assistant_sid, intent_sid, sid)
                super(version)

                # Path Solution
                @solution = {assistant_sid: assistant_sid, intent_sid: intent_sid, sid: sid, }
                @uri = "/Assistants/#{@solution[:assistant_sid]}/Intents/#{@solution[:intent_sid]}/Fields/#{@solution[:sid]}"
              end

              ##
              # Fetch a FieldInstance
              # @return [FieldInstance] Fetched FieldInstance
              def fetch
                params = Twilio::Values.of({})

                payload = @version.fetch(
                    'GET',
                    @uri,
                    params,
                )

                FieldInstance.new(
                    @version,
                    payload,
                    assistant_sid: @solution[:assistant_sid],
                    intent_sid: @solution[:intent_sid],
                    sid: @solution[:sid],
                )
              end

              ##
              # Deletes the FieldInstance
              # @return [Boolean] true if delete succeeds, true otherwise
              def delete
                @version.delete('delete', @uri)
              end

              ##
              # Provide a user friendly representation
              def to_s
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Preview.Understand.FieldContext #{context}>"
              end
            end

            ##
            # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
            class FieldInstance < InstanceResource
              ##
              # Initialize the FieldInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] assistant_sid The unique ID of the parent Assistant.
              # @param [String] intent_sid The unique ID of the Intent associated with this
              #   Field.
              # @param [String] sid The sid
              # @return [FieldInstance] FieldInstance
              def initialize(version, payload, assistant_sid: nil, intent_sid: nil, sid: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'account_sid' => payload['account_sid'],
                    'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                    'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                    'field_type' => payload['field_type'],
                    'intent_sid' => payload['intent_sid'],
                    'assistant_sid' => payload['assistant_sid'],
                    'sid' => payload['sid'],
                    'unique_name' => payload['unique_name'],
                    'url' => payload['url'],
                }

                # Context
                @instance_context = nil
                @params = {
                    'assistant_sid' => assistant_sid,
                    'intent_sid' => intent_sid,
                    'sid' => sid || @properties['sid'],
                }
              end

              ##
              # Generate an instance context for the instance, the context is capable of
              # performing various actions.  All instance actions are proxied to the context
              # @return [FieldContext] FieldContext for this FieldInstance
              def context
                unless @instance_context
                  @instance_context = FieldContext.new(
                      @version,
                      @params['assistant_sid'],
                      @params['intent_sid'],
                      @params['sid'],
                  )
                end
                @instance_context
              end

              ##
              # @return [String] The unique ID of the Account that created this Field.
              def account_sid
                @properties['account_sid']
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
              # @return [String] The Field Type of this field. Can be the Field Type unique_name or the Field Type sid.
              def field_type
                @properties['field_type']
              end

              ##
              # @return [String] The unique ID of the Intent associated with this Field.
              def intent_sid
                @properties['intent_sid']
              end

              ##
              # @return [String] The unique ID of the parent Assistant.
              def assistant_sid
                @properties['assistant_sid']
              end

              ##
              # @return [String] A 34 character string that uniquely identifies this resource.
              def sid
                @properties['sid']
              end

              ##
              # @return [String] A user-provided string that uniquely identifies this resource as an alternative to the sid. Unique up to 64 characters long.
              def unique_name
                @properties['unique_name']
              end

              ##
              # @return [String] The url
              def url
                @properties['url']
              end

              ##
              # Fetch a FieldInstance
              # @return [FieldInstance] Fetched FieldInstance
              def fetch
                context.fetch
              end

              ##
              # Deletes the FieldInstance
              # @return [Boolean] true if delete succeeds, true otherwise
              def delete
                context.delete
              end

              ##
              # Provide a user friendly representation
              def to_s
                values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Preview.Understand.FieldInstance #{values}>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Preview.Understand.FieldInstance #{values}>"
              end
            end
          end
        end
      end
    end
  end
end