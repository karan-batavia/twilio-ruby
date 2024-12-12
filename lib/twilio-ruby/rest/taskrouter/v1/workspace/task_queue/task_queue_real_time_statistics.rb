##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Taskrouter
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Taskrouter < TaskrouterBase
            class V1 < Version
                class WorkspaceContext < InstanceContext
                class TaskQueueContext < InstanceContext

                     class TaskQueueRealTimeStatisticsList < ListResource
                
                    ##
                    # Initialize the TaskQueueRealTimeStatisticsList
                    # @param [Version] version Version that contains the resource
                    # @return [TaskQueueRealTimeStatisticsList] TaskQueueRealTimeStatisticsList
                    def initialize(version, workspace_sid: nil, task_queue_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { workspace_sid: workspace_sid, task_queue_sid: task_queue_sid }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Taskrouter.V1.TaskQueueRealTimeStatisticsList>'
                    end
                end


                class TaskQueueRealTimeStatisticsContext < InstanceContext
                    ##
                    # Initialize the TaskQueueRealTimeStatisticsContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] workspace_sid The SID of the Workspace with the TaskQueue to fetch.
                    # @param [String] task_queue_sid The SID of the TaskQueue for which to fetch statistics.
                    # @return [TaskQueueRealTimeStatisticsContext] TaskQueueRealTimeStatisticsContext
                    def initialize(version, workspace_sid, task_queue_sid)
                        super(version)

                        # Path Solution
                        @solution = { workspace_sid: workspace_sid, task_queue_sid: task_queue_sid,  }
                        @uri = "/Workspaces/#{@solution[:workspace_sid]}/TaskQueues/#{@solution[:task_queue_sid]}/RealTimeStatistics"

                        
                    end
                    ##
                    # Fetch the TaskQueueRealTimeStatisticsInstance
                    # @param [String] task_channel The TaskChannel for which to fetch statistics. Can be the TaskChannel's SID or its `unique_name`, such as `voice`, `sms`, or `default`.
                    # @return [TaskQueueRealTimeStatisticsInstance] Fetched TaskQueueRealTimeStatisticsInstance
                    def fetch(
                        task_channel: :unset
                    )

                        params = Twilio::Values.of({
                            'TaskChannel' => task_channel,
                        })
                        headers = Twilio::Values.of({'Content-Type' => 'application/x-www-form-urlencoded', })
                        
                        
                        
                        
                        
                        payload = @version.fetch('GET', @uri, params: params, headers: headers)
                        TaskQueueRealTimeStatisticsInstance.new(
                            @version,
                            payload,
                            workspace_sid: @solution[:workspace_sid],
                            task_queue_sid: @solution[:task_queue_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Taskrouter.V1.TaskQueueRealTimeStatisticsContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Taskrouter.V1.TaskQueueRealTimeStatisticsContext #{context}>"
                    end
                end

                class TaskQueueRealTimeStatisticsPage < Page
                    ##
                    # Initialize the TaskQueueRealTimeStatisticsPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [TaskQueueRealTimeStatisticsPage] TaskQueueRealTimeStatisticsPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of TaskQueueRealTimeStatisticsInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [TaskQueueRealTimeStatisticsInstance] TaskQueueRealTimeStatisticsInstance
                    def get_instance(payload)
                        TaskQueueRealTimeStatisticsInstance.new(@version, payload, workspace_sid: @solution[:workspace_sid], task_queue_sid: @solution[:task_queue_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Taskrouter.V1.TaskQueueRealTimeStatisticsPage>'
                    end
                end
                class TaskQueueRealTimeStatisticsInstance < InstanceResource
                    ##
                    # Initialize the TaskQueueRealTimeStatisticsInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this TaskQueueRealTimeStatistics
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [TaskQueueRealTimeStatisticsInstance] TaskQueueRealTimeStatisticsInstance
                    def initialize(version, payload , workspace_sid: nil, task_queue_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'activity_statistics' => payload['activity_statistics'],
                            'longest_task_waiting_age' => payload['longest_task_waiting_age'] == nil ? payload['longest_task_waiting_age'] : payload['longest_task_waiting_age'].to_i,
                            'longest_task_waiting_sid' => payload['longest_task_waiting_sid'],
                            'longest_relative_task_age_in_queue' => payload['longest_relative_task_age_in_queue'] == nil ? payload['longest_relative_task_age_in_queue'] : payload['longest_relative_task_age_in_queue'].to_i,
                            'longest_relative_task_sid_in_queue' => payload['longest_relative_task_sid_in_queue'],
                            'task_queue_sid' => payload['task_queue_sid'],
                            'tasks_by_priority' => payload['tasks_by_priority'],
                            'tasks_by_status' => payload['tasks_by_status'],
                            'total_available_workers' => payload['total_available_workers'] == nil ? payload['total_available_workers'] : payload['total_available_workers'].to_i,
                            'total_eligible_workers' => payload['total_eligible_workers'] == nil ? payload['total_eligible_workers'] : payload['total_eligible_workers'].to_i,
                            'total_tasks' => payload['total_tasks'] == nil ? payload['total_tasks'] : payload['total_tasks'].to_i,
                            'workspace_sid' => payload['workspace_sid'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'workspace_sid' => workspace_sid  || @properties['workspace_sid']  ,'task_queue_sid' => task_queue_sid  || @properties['task_queue_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [TaskQueueRealTimeStatisticsContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = TaskQueueRealTimeStatisticsContext.new(@version , @params['workspace_sid'], @params['task_queue_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the TaskQueue resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [Array<Hash>] The number of current Workers by Activity.
                    def activity_statistics
                        @properties['activity_statistics']
                    end
                    
                    ##
                    # @return [String] The age of the longest waiting Task.
                    def longest_task_waiting_age
                        @properties['longest_task_waiting_age']
                    end
                    
                    ##
                    # @return [String] The SID of the longest waiting Task.
                    def longest_task_waiting_sid
                        @properties['longest_task_waiting_sid']
                    end
                    
                    ##
                    # @return [String] The relative age in the TaskQueue for the longest waiting Task. Calculation is based on the time when the Task entered the TaskQueue.
                    def longest_relative_task_age_in_queue
                        @properties['longest_relative_task_age_in_queue']
                    end
                    
                    ##
                    # @return [String] The Task SID of the Task waiting in the TaskQueue the longest. Calculation is based on the time when the Task entered the TaskQueue.
                    def longest_relative_task_sid_in_queue
                        @properties['longest_relative_task_sid_in_queue']
                    end
                    
                    ##
                    # @return [String] The SID of the TaskQueue from which these statistics were calculated.
                    def task_queue_sid
                        @properties['task_queue_sid']
                    end
                    
                    ##
                    # @return [Hash] The number of Tasks by priority. For example: `{\"0\": \"10\", \"99\": \"5\"}` shows 10 Tasks at priority 0 and 5 at priority 99.
                    def tasks_by_priority
                        @properties['tasks_by_priority']
                    end
                    
                    ##
                    # @return [Hash] The number of Tasks by their current status. For example: `{\"pending\": \"1\", \"reserved\": \"3\", \"assigned\": \"2\", \"completed\": \"5\"}`.
                    def tasks_by_status
                        @properties['tasks_by_status']
                    end
                    
                    ##
                    # @return [String] The total number of Workers in the TaskQueue with an `available` status. Workers with an `available` status may already have active interactions or may have none.
                    def total_available_workers
                        @properties['total_available_workers']
                    end
                    
                    ##
                    # @return [String] The total number of Workers eligible for Tasks in the TaskQueue, independent of their Activity state.
                    def total_eligible_workers
                        @properties['total_eligible_workers']
                    end
                    
                    ##
                    # @return [String] The total number of Tasks.
                    def total_tasks
                        @properties['total_tasks']
                    end
                    
                    ##
                    # @return [String] The SID of the Workspace that contains the TaskQueue.
                    def workspace_sid
                        @properties['workspace_sid']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the TaskQueue statistics resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the TaskQueueRealTimeStatisticsInstance
                    # @param [String] task_channel The TaskChannel for which to fetch statistics. Can be the TaskChannel's SID or its `unique_name`, such as `voice`, `sms`, or `default`.
                    # @return [TaskQueueRealTimeStatisticsInstance] Fetched TaskQueueRealTimeStatisticsInstance
                    def fetch(
                        task_channel: :unset
                    )

                        context.fetch(
                            task_channel: task_channel, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Taskrouter.V1.TaskQueueRealTimeStatisticsInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Taskrouter.V1.TaskQueueRealTimeStatisticsInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


