# Azure::Core

[![Build Status](https://travis-ci.org/Azure/azure-ruby-asm-core.png?branch=master)](https://travis-ci.org/Azure/azure-ruby-asm-core) 

This project provides a Ruby package with core functionality consumed by Azure SDK gems.

## Important Announcement

As of February 2021, Azure Resource Management SDK for Ruby **has entered a retirement phase and is no longer officially supported by Microsoft**. Here is the complete list of packages that are affected by this. We are committed to making critical security and bug fixes for libraries in this repo until **December 31, 2021**. After that date, this repo will no longer be maintained.  

For current users of the Azure Resource Management SDK for Ruby, we have prepared a **migration guide** that points outlines different alternative approaches you can take moving forward. Please [check the guide here](https://github.com/Azure/azure-sdk-for-ruby/blob/master/docs/README.md). 

Thank you for your support so far. Should you have any question, please feel free to open an issue on GitHub. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'azure-core'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install azure-core

### Notice
For ruby version >= 1.9.3 && < 2.2.0, please install compatible Nokogiri(version >= 1.6.8), otherwise the installation using old version of bundler or all version of rubygems will report failure.

## Usage
```ruby
 require 'azure/core'
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake test` to run the tests.

## Provide Feedback

If you encounter any bugs with the library please file an issue.

# Code of Conduct 
This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
