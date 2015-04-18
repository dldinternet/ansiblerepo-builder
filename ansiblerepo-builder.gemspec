# -*- encoding: utf-8 -*-

require File.expand_path('../lib/cicd/builder/ansiblerepo/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "ansiblerepo-builder"
  gem.version       = CiCd::Builder::AnsibleRepo::VERSION
  gem.summary       = %q{Ansible playbook repo CI/CD builder}
  gem.description   = %q{Ansible playbook repo builder for Continuous Integration/Continuous Delivery artifact promotion style deployments}
  gem.license       = "Apachev2"
  gem.authors       = ["Christo De Lange"]
  gem.email         = "rubygems@dldinternet.com"
  gem.homepage      = "https://rubygems.org/gems/ansiblerepo-builder"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'cicd-builder', '>= 0.9.46', '< 1.1'
  gem.add_dependency 'chefrepo-builder', '>= 0.9.30', '< 1.1'
  gem.add_dependency 'json', '= 1.8.1'

  gem.add_development_dependency 'bundler', '>= 1.6', '< 1.7'
  gem.add_development_dependency 'rake', '>= 10.3', '< 11'
  gem.add_development_dependency 'rubygems-tasks', '>= 0.2', '< 1.1'
end
