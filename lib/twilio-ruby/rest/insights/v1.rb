##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Insights
      class V1 < Version
        ##
        # Initialize the V1 version of Insights
        def initialize(domain)
          super
          @version = 'v1'
          @settings = nil
          @calls = nil
          @call_summaries = nil
          @conferences = nil
          @rooms = nil
        end

        ##
        # @return [Twilio::REST::Insights::V1::SettingContext]
        def settings
          @settings ||= SettingContext.new self
        end

        ##
        # @param [String] sid The sid
        # @return [Twilio::REST::Insights::V1::CallContext] if sid was passed.
        # @return [Twilio::REST::Insights::V1::CallList]
        def calls(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @calls ||= CallList.new self
          else
              CallContext.new(self, sid)
          end
        end

        ##
        # @return [Twilio::REST::Insights::V1::CallSummariesContext]
        def call_summaries
          @call_summaries ||= CallSummariesList.new self
        end

        ##
        # @param [String] conference_sid The conference_sid
        # @return [Twilio::REST::Insights::V1::ConferenceContext] if conference_sid was passed.
        # @return [Twilio::REST::Insights::V1::ConferenceList]
        def conferences(conference_sid=:unset)
          if conference_sid.nil?
              raise ArgumentError, 'conference_sid cannot be nil'
          end
          if conference_sid == :unset
              @conferences ||= ConferenceList.new self
          else
              ConferenceContext.new(self, conference_sid)
          end
        end

        ##
        # @param [String] room_sid The SID of the Room resource.
        # @return [Twilio::REST::Insights::V1::RoomContext] if room_sid was passed.
        # @return [Twilio::REST::Insights::V1::RoomList]
        def rooms(room_sid=:unset)
          if room_sid.nil?
              raise ArgumentError, 'room_sid cannot be nil'
          end
          if room_sid == :unset
              @rooms ||= RoomList.new self
          else
              RoomContext.new(self, room_sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Insights::V1>'
        end
      end
    end
  end
end