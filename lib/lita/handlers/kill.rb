module Lita
  module Handlers
    class Kill < Handler
      route(/^kill\s+(.+)/, :echo, help: { "kill TEXT" => "Echoes back TEXT." })

      def kill(response)
        response.reply(response.matches)
      end
    end

    Lita.register_handler(Kill)
  end
end
