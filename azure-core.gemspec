#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'date'

require File.expand_path('../lib/azure/core/version', __FILE__)

Gem::Specification.new do |s|
  s.name    = 'azure-core'
  s.version = Azure::Core::Version
  s.authors     = ['Microsoft Corporation', 'AppFog']
  s.email       = 'azureruby@microsoft.com'
  s.description = 'Microsoft Azure Client Core Library for Ruby SDK'
  s.summary     = 'Core library to be consumed by Ruby SDK gems'
  s.homepage    = 'http://github.com/Azure/azure-ruby-asm-core'
  s.license     = 'Apache License, Version 2.0'
  s.files       = `git ls-files`.split("\n").reject { |f|  f.start_with?("test/unit") }

  s.required_ruby_version = '>= 1.9.3'

  s.add_runtime_dependency('faraday',                 '~> 0.9')
  s.add_runtime_dependency('faraday_middleware',      '~> 0.10')
  s.add_runtime_dependency('nokogiri',                '~> 1.6')

  s.add_development_dependency('dotenv',              '~> 2.0')
  s.add_development_dependency('minitest',            '~> 5')
  s.add_development_dependency('minitest-reporters',  '~> 1')
  s.add_development_dependency('mocha',               '~> 1.0')
  s.add_development_dependency('rake',                '~> 10.0')
  s.add_development_dependency('timecop',             '~> 0.7')
  s.add_development_dependency('bundler',             '~> 1.11')

end
