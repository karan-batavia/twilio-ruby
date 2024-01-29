##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Preview
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Preview < PreviewBase
            class Understand < Version
                class AssistantContext < InstanceContext
                class TaskContext < InstanceContext

                     class TaskStatisticsList < ListResource
                    ##
                    # Initialize the TaskStatisticsList
                    # @param [Version] version Version that contains the resource
                    # @return [TaskStatisticsList] TaskStatisticsList
                    def initialize(version, assistant_sid: nil, task_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { assistant_sid: assistant_sid, task_sid: task_sid }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Preview.Understand.TaskStatisticsList>'
                    end
                end


                ##
                #PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
                class TaskStatisticsContext < InstanceContext
                    ##
                    # Initialize the TaskStatisticsContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] assistant_sid The unique ID of the parent Assistant.
                    # @param [String] task_sid The unique ID of the Task associated with this Field.
                    # @return [TaskStatisticsContext] TaskStatisticsContext
                    def initialize(version, assistant_sid, task_sid)
                        super(version)

                        # Path Solution
                        @solution = { assistant_sid: assistant_sid, task_sid: task_sid,  }
                        @uri = "/Assistants/#{@solution[:assistant_sid]}/Tasks/#{@solution[:task_sid]}/Statistics"

                        
                    end
                    ##
                    # Fetch the TaskStatisticsInstance
                    # @return [TaskStatisticsInstance] Fetched TaskStatisticsInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        TaskStatisticsInstance.new(
                            @version,
                            payload,
                            assistant_sid: @solution[:assistant_sid],
                            task_sid: @solution[:task_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Preview.Understand.TaskStatisticsContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Preview.Understand.TaskStatisticsContext #{context}>"
                    end
                end

                class TaskStatisticsPage < Page
                    ##
                    # Initialize the TaskStatisticsPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [TaskStatisticsPage] TaskStatisticsPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of TaskStatisticsInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [TaskStatisticsInstance] TaskStatisticsInstance
                    def get_instance(payload)
                        TaskStatisticsInstance.new(@version, payload, assistant_sid: @solution[:assistant_sid], task_sid: @solution[:task_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Preview.Understand.TaskStatisticsPage>'
                    end
                end
                class TaskStatisticsInstance < InstanceResource
                    ##
                    # Initialize the TaskStatisticsInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this TaskStatistics
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [TaskStatisticsInstance] TaskStatisticsInstance
                    def initialize(version, payload , assistant_sid: nil, task_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'assistant_sid' => payload['assistant_sid'],
                            'task_sid' => payload['task_sid'],
                            'samples_count' => payload['samples_count'] == nil ? payload['samples_count'] : payload['samples_count'].to_i,
                            'fields_count' => payload['fields_count'] == nil ? payload['fields_count'] : payload['fields_count'].to_i,
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'assistant_sid' => assistant_sid  || @properties['assistant_sid']  ,'task_sid' => task_sid  || @properties['task_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [TaskStatisticsContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = TaskStatisticsContext.new(@version , @params['assistant_sid'], @params['task_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique ID of the Account that created this Field.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The unique ID of the parent Assistant.
                    def assistant_sid
                        @properties['assistant_sid']
                    end
                    
                    ##
                    # @return [String] The unique ID of the Task associated with this Field.
                    def task_sid
                        @properties['task_sid']
                    end
                    
                    ##
                    # @return [String] The total number of Samples associated with this Task.
                    def samples_count
                        @properties['samples_count']
                    end
                    
                    ##
                    # @return [String] The total number of Fields associated with this Task.
                    def fields_count
                        @properties['fields_count']
                    end
                    
                    ##
                    # @return [String] 
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the TaskStatisticsInstance
                    # @return [TaskStatisticsInstance] Fetched TaskStatisticsInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Preview.Understand.TaskStatisticsInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Preview.Understand.TaskStatisticsInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


