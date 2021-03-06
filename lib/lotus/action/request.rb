require 'rack/request'

module Lotus
  module Action
    # An HTTP request based on top of Rack::Request.
    # This guarantees backwards compatibility with with Rack.
    #
    # @since x.x.x
    #
    # @see http://www.rubydoc.info/gems/rack/Rack/Request
    class Request < ::Rack::Request

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def content_type
        raise NotImplementedError, 'Please use Action#content_type'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def session
        raise NotImplementedError, 'Please include Action::Session and use Action#session'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def cookies
        raise NotImplementedError, 'Please include Action::Cookies and use Action#cookies'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def params
        raise NotImplementedError, 'Please use params passed to Action#call'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def update_param(*)
        raise NotImplementedError, 'Please use params passed to Action#call'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def delete_param(*)
        raise NotImplementedError, 'Please use params passed to Action#call'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def [](*)
        raise NotImplementedError, 'Please use params passed to Action#call'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def []=(*)
        raise NotImplementedError, 'Please use params passed to Action#call'
      end

      # @raise [NotImplementedError]
      #
      # @since x.x.x
      # @api private
      def values_at(*)
        raise NotImplementedError, 'Please use params passed to Action#call'
      end
    end
  end
end
