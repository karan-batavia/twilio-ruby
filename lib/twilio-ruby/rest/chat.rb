##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

module Twilio
  module REST
    class Chat < Domain
      ##
      # Initialize the Chat Domain
      def initialize(twilio)
        super

        @base_url = 'https://chat.twilio.com'
        @host = 'chat.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
        @v2 = nil
      end

      ##
      # Version v1 of chat
      def v1
        @v1 ||= V1.new self
      end

      ##
      # Version v2 of chat
      def v2
        @v2 ||= V2.new self
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this
      #   resource.
      # @return [Twilio::REST::Chat::V2::CredentialInstance] if sid was passed.
      # @return [Twilio::REST::Chat::V2::CredentialList]
      def credentials(sid=:unset)
        self.v2.credentials(sid)
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this
      #   resource.
      # @return [Twilio::REST::Chat::V2::ServiceInstance] if sid was passed.
      # @return [Twilio::REST::Chat::V2::ServiceList]
      def services(sid=:unset)
        self.v2.services(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Chat>'
      end
    end
  end
end