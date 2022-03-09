# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/security/private_ca/v1/version"

require "google/iam/v1/iam_policy/credentials"
require "google/iam/v1/iam_policy/client"

module Google
  module Iam
    module V1
      ##
      # ## API Overview
      #
      # Manages Identity and Access Management (IAM) policies.
      #
      # Any implementation of an API that offers access control features
      # implements the google.iam.v1.IAMPolicy interface.
      #
      # ## Data model
      #
      # Access control is applied when a principal (user or service account), takes
      # some action on a resource exposed by a service. Resources, identified by
      # URI-like names, are the unit of access control specification. Service
      # implementations can choose the granularity of access control and the
      # supported permissions for their resources.
      # For example one database service may allow access control to be
      # specified only at the Table level, whereas another might allow access control
      # to also be specified at the Column level.
      #
      # ## Policy Structure
      #
      # See google.iam.v1.Policy
      #
      # This is intentionally not a CRUD style API because access control policies
      # are created and deleted implicitly with the resources to which they are
      # attached.
      #
      # To load this service and instantiate a client:
      #
      #     require "google/iam/v1/iam_policy"
      #     client = ::Google::Iam::V1::IAMPolicy::Client.new
      #
      module IAMPolicy
      end
    end
  end
end

helper_path = ::File.join __dir__, "iam_policy", "helpers.rb"
require "google/iam/v1/iam_policy/helpers" if ::File.file? helper_path
