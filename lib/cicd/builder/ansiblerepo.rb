require 'cicd/builder/chefrepo'

module CiCd
  module Builder
    _lib=File.dirname(__FILE__)
    $:.unshift(_lib) unless $:.include?(_lib)

    require 'cicd/builder/ansiblerepo/version'

    #noinspection ALL
    class AnsibleRepoBuilder < ChefRepoBuilder

      def initialize()
        super
        @default_options[:builder] = VERSION
      end

      # ---------------------------------------------------------------------------------------------------------------
      def getBuilderVersion
        {
            version:  VERSION,
            major:    MAJOR,
            minor:    MINOR,
            patch:    PATCH,
        }
      end
      # ---------------------------------------------------------------------------------------------------------------
      def run()
        $stdout.write("AnsibleRepoBuilder v#{CiCd::Builder::AnsibleRepo::VERSION}\n")
        super
      end

    end

  end
end