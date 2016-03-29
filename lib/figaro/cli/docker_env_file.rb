require "figaro/cli/task"

module Figaro
  class CLI < Thor
    class DockerEnvFile < Task
      def run
        File.open(options[:output], 'w+') do |file|
          configuration.each do |key, value|
            file.puts "#{key}=#{value}"
          end
        end
      end

      private

    end
  end
end

