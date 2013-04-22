#!/usr/bin/env gem build
# encoding: utf-8

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'locomotive/version'

Gem::Specification.new do |s|
  s.name        = 'locomotive_cms'
  s.version     = Locomotive::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Didier Lafforgue']
  s.email       = %w(did@locomotivecms.com)
  s.homepage    = 'http://www.locomotivecms.com'
  s.summary     = 'A Next Generation Sexy CMS for Rails 3'
  s.description = 'LocomotiveCMS is a next generation CMS system with sexy admin tools, liquid templating, and inline editing powered by mongodb and rails 3.2'

  s.add_dependency 'rake'
  
  s.add_dependency 'rails'
  
  s.add_dependency 'devise'
  s.add_dependency 'devise-encryptable'
  s.add_dependency 'cancan'
  
  s.add_dependency 'mongo'
  s.add_dependency 'bson_ext'
  s.add_dependency 'mongoid'
  s.add_dependency 'locomotive-mongoid-tree'
  s.add_dependency 'locomotive-mongoid_migration'
  
  s.add_dependency 'custom_fields'
  
  s.add_dependency 'kaminari'
  
  s.add_dependency 'haml'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'rails-backbone'
  s.add_dependency 'codemirror-rails'
  s.add_dependency 'locomotive-tinymce-rails'
  s.add_dependency 'locomotive-aloha-rails'
  s.add_dependency 'flash_cookie_session'
  
  s.add_dependency 'locomotive_liquid'
  s.add_dependency 'formtastic'
  s.add_dependency 'responders'
  s.add_dependency 'cells'
  s.add_dependency 'RedCloth'
  s.add_dependency 'sanitize'
  s.add_dependency 'highline'
  s.add_dependency 'stringex'
  
  s.add_dependency 'carrierwave-mongoid'
  s.add_dependency 'fog'
  s.add_dependency 'dragonfly'
  s.add_dependency 'rack-cache'
  s.add_dependency 'mimetype-fu'
  
  s.add_dependency 'multi_json'
  s.add_dependency 'httparty'
  s.add_dependency 'actionmailer-with-request'

  s.add_dependency 'SystemTimer' if RUBY_VERSION =~ /1.8/

  s.files        = Dir[ 'Gemfile',
                        '{app}/**/*',
                        '{config}/**/*',
                        '{lib}/**/*',
                        '{public}/**/*',
                        '{vendor}/**/*']


  s.test_files = Dir[
      'features/**/*',
      'spec/{cells,fixtures,lib,mailers,models,requests,support}/**/*',
      'spec/dummy/Rakefile',
      'spec/dummy/config.ru',
      'spec/dummy/{app,config,lib,script}/**/*',
      'spec/dummy/public/*.html'
  ]

  s.require_path = 'lib'

  s.extra_rdoc_files = %w(LICENSE README.textile)

end
