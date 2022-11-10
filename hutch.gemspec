require File.expand_path('../lib/hutch/version', __FILE__)

Gem::Specification.new do |gem|
  if defined?(JRUBY_VERSION)
    gem.platform = 'java'
    gem.add_runtime_dependency 'march_hare', '>= 3.0.0'
  else
    gem.platform = Gem::Platform::RUBY
    gem.add_runtime_dependency 'bunny', '>= 2.19', '< 3.0'
  end
  gem.add_runtime_dependency 'carrot-top', '~> 0.0.7'
  gem.add_runtime_dependency 'multi_json', '~> 1.15'
  gem.add_runtime_dependency 'activesupport', '>= 4.2', '< 8'
  gem.add_runtime_dependency 'sd_notify', '~> 0.1', '>= 0.1.1'

  gem.name = 'hutch'
  gem.summary = 'Opinionated asynchronous inter-service communication using RabbitMQ'
  gem.description = 'Hutch is a Ruby library for enabling asynchronous inter-service communication using RabbitMQ'
  gem.version = Hutch::VERSION.dup
  gem.required_ruby_version = '>= 2.2'
  gem.authors = ['Harry Marr', 'Michael Klishin']
  gem.homepage = 'https://github.com/ruby-amqp/hutch'
  gem.require_paths = ['lib']
  gem.license = 'MIT'
  gem.executables = ['hutch']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- spec/*`.split("\n")
end
