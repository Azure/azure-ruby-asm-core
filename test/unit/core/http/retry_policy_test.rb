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
require 'test_helper'
require 'azure/core/http/retry_policy'

describe Azure::Core::Http::RetryPolicy do
  it 'uses blocks as retry logic' do
    retry_policy = Azure::Core::Http::RetryPolicy.new do |a,b| true end
    retry_policy.should_retry?(nil, nil).must_equal true
  end
  
  it 'uses retry policy as retry logic with expected error' do
    retry_policy = Azure::Core::FixtureRetryPolicy.new
    retry_policy.should_retry?(nil, {:error => 'Error: Retry'}).must_equal true
  end

  it 'uses retry policy as retry logic with unexpect error' do
    retry_policy = Azure::Core::FixtureRetryPolicy.new
    retry_policy.should_retry?(nil, {:error => 'Error: No retry'}).must_equal false
  end

  describe "NewUriRetryPolicy retries with a new URL" do
    subject { Azure::Core::NewUriRetryPolicy.new }

    let(:verb) { :put }
    let(:uri) { URI.parse "http://foo.com" }
    let(:new_uri) { URI.parse "http://bar.com" }
    let(:request) { Azure::Core::Http::HttpRequest.new verb, uri, {} }
    let(:response) { Azure::Core::Http::HttpResponse.new nil, uri }

    before {
      request.stubs(:call).returns(response)
      response.stubs(:success?).returns(true)
    }

    it "retries with a new URL" do
      subject.call request, request
      request.uri.must_equal new_uri
    end
  end
end
