##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Supersim
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Supersim < SupersimBase
            class V1 < Version
                class UsageRecordList < ListResource
                
                    ##
                    # Initialize the UsageRecordList
                    # @param [Version] version Version that contains the resource
                    # @return [UsageRecordList] UsageRecordList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/UsageRecords"
                        
                    end
                
                    ##
                    # Lists UsageRecordInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] sim SID or unique name of a Sim resource. Only show UsageRecords representing usage incurred by this Super SIM.
                    # @param [String] fleet SID or unique name of a Fleet resource. Only show UsageRecords representing usage for Super SIMs belonging to this Fleet resource at the time the usage occurred.
                    # @param [String] network SID of a Network resource. Only show UsageRecords representing usage on this network.
                    # @param [String] iso_country Alpha-2 ISO Country Code. Only show UsageRecords representing usage in this country.
                    # @param [Group] group Dimension over which to aggregate usage records. Can be: `sim`, `fleet`, `network`, `isoCountry`. Default is to not aggregate across any of these dimensions, UsageRecords will be aggregated into the time buckets described by the `Granularity` parameter.
                    # @param [Granularity] granularity Time-based grouping that UsageRecords should be aggregated by. Can be: `hour`, `day`, or `all`. Default is `all`. `all` returns one UsageRecord that describes the usage for the entire period.
                    # @param [Time] start_time Only include usage that occurred at or after this time, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format. Default is one month before the `end_time`.
                    # @param [Time] end_time Only include usage that occurred before this time (exclusive), specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format. Default is the current time.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(sim: :unset, fleet: :unset, network: :unset, iso_country: :unset, group: :unset, granularity: :unset, start_time: :unset, end_time: :unset, limit: nil, page_size: nil)
                        self.stream(
                            sim: sim,
                            fleet: fleet,
                            network: network,
                            iso_country: iso_country,
                            group: group,
                            granularity: granularity,
                            start_time: start_time,
                            end_time: end_time,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] sim SID or unique name of a Sim resource. Only show UsageRecords representing usage incurred by this Super SIM.
                    # @param [String] fleet SID or unique name of a Fleet resource. Only show UsageRecords representing usage for Super SIMs belonging to this Fleet resource at the time the usage occurred.
                    # @param [String] network SID of a Network resource. Only show UsageRecords representing usage on this network.
                    # @param [String] iso_country Alpha-2 ISO Country Code. Only show UsageRecords representing usage in this country.
                    # @param [Group] group Dimension over which to aggregate usage records. Can be: `sim`, `fleet`, `network`, `isoCountry`. Default is to not aggregate across any of these dimensions, UsageRecords will be aggregated into the time buckets described by the `Granularity` parameter.
                    # @param [Granularity] granularity Time-based grouping that UsageRecords should be aggregated by. Can be: `hour`, `day`, or `all`. Default is `all`. `all` returns one UsageRecord that describes the usage for the entire period.
                    # @param [Time] start_time Only include usage that occurred at or after this time, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format. Default is one month before the `end_time`.
                    # @param [Time] end_time Only include usage that occurred before this time (exclusive), specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format. Default is the current time.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(sim: :unset, fleet: :unset, network: :unset, iso_country: :unset, group: :unset, granularity: :unset, start_time: :unset, end_time: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            sim: sim,
                            fleet: fleet,
                            network: network,
                            iso_country: iso_country,
                            group: group,
                            granularity: granularity,
                            start_time: start_time,
                            end_time: end_time,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields UsageRecordInstance records from the API.
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
                    # Retrieve a single page of UsageRecordInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] sim SID or unique name of a Sim resource. Only show UsageRecords representing usage incurred by this Super SIM.
                    # @param [String] fleet SID or unique name of a Fleet resource. Only show UsageRecords representing usage for Super SIMs belonging to this Fleet resource at the time the usage occurred.
                    # @param [String] network SID of a Network resource. Only show UsageRecords representing usage on this network.
                    # @param [String] iso_country Alpha-2 ISO Country Code. Only show UsageRecords representing usage in this country.
                    # @param [Group] group Dimension over which to aggregate usage records. Can be: `sim`, `fleet`, `network`, `isoCountry`. Default is to not aggregate across any of these dimensions, UsageRecords will be aggregated into the time buckets described by the `Granularity` parameter.
                    # @param [Granularity] granularity Time-based grouping that UsageRecords should be aggregated by. Can be: `hour`, `day`, or `all`. Default is `all`. `all` returns one UsageRecord that describes the usage for the entire period.
                    # @param [Time] start_time Only include usage that occurred at or after this time, specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format. Default is one month before the `end_time`.
                    # @param [Time] end_time Only include usage that occurred before this time (exclusive), specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format. Default is the current time.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of UsageRecordInstance
                    def page(sim: :unset, fleet: :unset, network: :unset, iso_country: :unset, group: :unset, granularity: :unset, start_time: :unset, end_time: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'Sim' => sim,
                            'Fleet' => fleet,
                            'Network' => network,
                            'IsoCountry' => iso_country,
                            'Group' => group,
                            'Granularity' => granularity,
                            'StartTime' =>  Twilio.serialize_iso8601_datetime(start_time),
                            'EndTime' =>  Twilio.serialize_iso8601_datetime(end_time),
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })
                        headers = Twilio::Values.of({})
                        
                        

                        response = @version.page('GET', @uri, params: params, headers: headers)

                        UsageRecordPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of UsageRecordInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of UsageRecordInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    UsageRecordPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Supersim.V1.UsageRecordList>'
                    end
                end

                class UsageRecordPage < Page
                    ##
                    # Initialize the UsageRecordPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [UsageRecordPage] UsageRecordPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of UsageRecordInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [UsageRecordInstance] UsageRecordInstance
                    def get_instance(payload)
                        UsageRecordInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Supersim.V1.UsageRecordPage>'
                    end
                end
                class UsageRecordInstance < InstanceResource
                    ##
                    # Initialize the UsageRecordInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this UsageRecord
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [UsageRecordInstance] UsageRecordInstance
                    def initialize(version, payload )
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'sim_sid' => payload['sim_sid'],
                            'network_sid' => payload['network_sid'],
                            'fleet_sid' => payload['fleet_sid'],
                            'iso_country' => payload['iso_country'],
                            'period' => payload['period'],
                            'data_upload' => payload['data_upload'],
                            'data_download' => payload['data_download'],
                            'data_total' => payload['data_total'],
                            'data_total_billed' => payload['data_total_billed'],
                            'billed_unit' => payload['billed_unit'],
                        }
                    end

                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that incurred the usage.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] SID of a Sim resource to which the UsageRecord belongs. Value will only be present when either a value for the `Sim` query parameter is provided or when UsageRecords are grouped by `sim`. Otherwise, the value will be `null`.
                    def sim_sid
                        @properties['sim_sid']
                    end
                    
                    ##
                    # @return [String] SID of the Network resource the usage occurred on. Value will only be present when either a value for the `Network` query parameter is provided or when UsageRecords are grouped by `network`. Otherwise, the value will be `null`.
                    def network_sid
                        @properties['network_sid']
                    end
                    
                    ##
                    # @return [String] SID of the Fleet resource the usage occurred on. Value will only be present when either a value for the `Fleet` query parameter is provided or when UsageRecords are grouped by `fleet`. Otherwise, the value will be `null`.
                    def fleet_sid
                        @properties['fleet_sid']
                    end
                    
                    ##
                    # @return [String] Alpha-2 ISO Country Code that the usage occurred in. Value will only be present when either a value for the `IsoCountry` query parameter is provided or when UsageRecords are grouped by `isoCountry`. Otherwise, the value will be `null`.
                    def iso_country
                        @properties['iso_country']
                    end
                    
                    ##
                    # @return [Hash] The time period for which the usage is reported. The period is represented as a pair of `start_time` and `end_time` timestamps specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def period
                        @properties['period']
                    end
                    
                    ##
                    # @return [String] Total data uploaded in bytes, aggregated by the query parameters.
                    def data_upload
                        @properties['data_upload']
                    end
                    
                    ##
                    # @return [String] Total data downloaded in bytes, aggregated by the query parameters.
                    def data_download
                        @properties['data_download']
                    end
                    
                    ##
                    # @return [String] Total of data_upload and data_download.
                    def data_total
                        @properties['data_total']
                    end
                    
                    ##
                    # @return [Float] Total amount in the `billed_unit` that was charged for the data uploaded or downloaded. Will return 0 for usage prior to February 1, 2022. Value may be 0 despite `data_total` being greater than 0 if the data usage is still being processed by Twilio's billing system. Refer to [Data Usage Processing](https://www.twilio.com/docs/iot/supersim/api/usage-record-resource#data-usage-processing) for more details.
                    def data_total_billed
                        @properties['data_total_billed']
                    end
                    
                    ##
                    # @return [String] The currency in which the billed amounts are measured, specified in the 3 letter ISO 4127 format (e.g. `USD`, `EUR`, `JPY`). This can be null when data_toal_billed is 0 and we do not yet have billing information for the corresponding data usage. Refer to [Data Usage Processing](https://www.twilio.com/docs/iot/supersim/api/usage-record-resource#data-usage-processing) for more details.
                    def billed_unit
                        @properties['billed_unit']
                    end
                    
                    ##
                    # Provide a user friendly representation
                    def to_s
                        "<Twilio.Supersim.V1.UsageRecordInstance>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        "<Twilio.Supersim.V1.UsageRecordInstance>"
                    end
                end

            end
        end
    end
end
