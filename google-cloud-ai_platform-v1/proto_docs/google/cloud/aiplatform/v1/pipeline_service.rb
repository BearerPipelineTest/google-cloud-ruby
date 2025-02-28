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


module Google
  module Cloud
    module AIPlatform
      module V1
        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#create_training_pipeline PipelineService.CreateTrainingPipeline}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the TrainingPipeline in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] training_pipeline
        #   @return [::Google::Cloud::AIPlatform::V1::TrainingPipeline]
        #     Required. The TrainingPipeline to create.
        class CreateTrainingPipelineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#get_training_pipeline PipelineService.GetTrainingPipeline}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the TrainingPipeline resource.
        #     Format:
        #     `projects/{project}/locations/{location}/trainingPipelines/{training_pipeline}`
        class GetTrainingPipelineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#list_training_pipelines PipelineService.ListTrainingPipelines}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the TrainingPipelines from.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #
        #     Supported fields:
        #
        #       * `display_name` supports `=`, `!=` comparisons, and `:` wildcard.
        #       * `state` supports `=`, `!=` comparisons.
        #       * `training_task_definition` `=`, `!=` comparisons, and `:` wildcard.
        #       * `create_time` supports `=`, `!=`,`<`, `<=`,`>`, `>=` comparisons.
        #         `create_time` must be in RFC 3339 format.
        #
        #     Some examples of using the filter are:
        #
        #       * `state="PIPELINE_STATE_SUCCEEDED" AND display_name:"my_pipeline_*"`
        #       * `state!="PIPELINE_STATE_FAILED" OR display_name="my_pipeline"`
        #       * `NOT display_name="my_pipeline"`
        #       * `create_time>"2021-05-18T00:00:00Z"`
        #       * `training_task_definition:"*automl_text_classification*"`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesResponse#next_page_token ListTrainingPipelinesResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::PipelineService::Client#list_training_pipelines PipelineService.ListTrainingPipelines} call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListTrainingPipelinesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#list_training_pipelines PipelineService.ListTrainingPipelines}
        # @!attribute [rw] training_pipelines
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::TrainingPipeline>]
        #     List of TrainingPipelines in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesRequest#page_token ListTrainingPipelinesRequest.page_token} to obtain that page.
        class ListTrainingPipelinesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#delete_training_pipeline PipelineService.DeleteTrainingPipeline}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the TrainingPipeline resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/trainingPipelines/{training_pipeline}`
        class DeleteTrainingPipelineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#cancel_training_pipeline PipelineService.CancelTrainingPipeline}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the TrainingPipeline to cancel.
        #     Format:
        #     `projects/{project}/locations/{location}/trainingPipelines/{training_pipeline}`
        class CancelTrainingPipelineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#create_pipeline_job PipelineService.CreatePipelineJob}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the PipelineJob in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] pipeline_job
        #   @return [::Google::Cloud::AIPlatform::V1::PipelineJob]
        #     Required. The PipelineJob to create.
        # @!attribute [rw] pipeline_job_id
        #   @return [::String]
        #     The ID to use for the PipelineJob, which will become the final component of
        #     the PipelineJob name. If not provided, an ID will be automatically
        #     generated.
        #
        #     This value should be less than 128 characters, and valid characters
        #     are /[a-z][0-9]-/.
        class CreatePipelineJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#get_pipeline_job PipelineService.GetPipelineJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the PipelineJob resource.
        #     Format:
        #     `projects/{project}/locations/{location}/pipelineJobs/{pipeline_job}`
        class GetPipelineJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#list_pipeline_jobs PipelineService.ListPipelineJobs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the PipelineJobs from.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Lists the PipelineJobs that match the filter expression. The following
        #     fields are supported:
        #
        #     * `pipeline_name`: Supports `=` and `!=` comparisons.
        #     * `display_name`: Supports `=`, `!=` comparisons, and `:` wildcard.
        #     * `pipeline_job_user_id`: Supports `=`, `!=` comparisons, and `:` wildcard.
        #       for example, can check if pipeline's display_name contains *step* by
        #       doing display_name:\"*step*\"
        #     * `state`: Supports `=` and `!=` comparisons.
        #     * `create_time`: Supports `=`, `!=`, `<`, `>`, `<=`, and `>=` comparisons.
        #       Values must be in RFC 3339 format.
        #     * `update_time`: Supports `=`, `!=`, `<`, `>`, `<=`, and `>=` comparisons.
        #       Values must be in RFC 3339 format.
        #     * `end_time`: Supports `=`, `!=`, `<`, `>`, `<=`, and `>=` comparisons.
        #       Values must be in RFC 3339 format.
        #     * `labels`: Supports key-value equality and key presence.
        #     * `template_uri`: Supports `=`, `!=` comparisons, and `:` wildcard.
        #     * `template_metadata.version`: Supports `=`, `!=` comparisons, and `:`
        #       wildcard.
        #
        #     Filter expressions can be combined together using logical operators
        #     (`AND` & `OR`).
        #     For example: `pipeline_name="test" AND create_time>"2020-05-18T13:30:00Z"`.
        #
        #     The syntax to define filter expression is based on
        #     https://google.aip.dev/160.
        #
        #     Examples:
        #
        #     * `create_time>"2021-05-18T00:00:00Z" OR
        #       update_time>"2020-05-18T00:00:00Z"` PipelineJobs created or updated
        #       after 2020-05-18 00:00:00 UTC.
        #     * `labels.env = "prod"`
        #       PipelineJobs with label "env" set to "prod".
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListPipelineJobsResponse#next_page_token ListPipelineJobsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::PipelineService::Client#list_pipeline_jobs PipelineService.ListPipelineJobs} call.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by. The default sort order is in
        #     ascending order. Use "desc" after a field name for descending. You can have
        #     multiple order_by fields provided e.g. "create_time desc, end_time",
        #     "end_time, start_time, update_time" For example, using "create_time desc,
        #     end_time" will order results by create time in descending order, and if
        #     there are multiple jobs having the same create time, order them by the end
        #     time in ascending order. if order_by is not specified, it will order by
        #     default order is create time in descending order. Supported fields:
        #
        #       * `create_time`
        #       * `update_time`
        #       * `end_time`
        #       * `start_time`
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListPipelineJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#list_pipeline_jobs PipelineService.ListPipelineJobs}
        # @!attribute [rw] pipeline_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::PipelineJob>]
        #     List of PipelineJobs in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListPipelineJobsRequest#page_token ListPipelineJobsRequest.page_token} to obtain that page.
        class ListPipelineJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#delete_pipeline_job PipelineService.DeletePipelineJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the PipelineJob resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/pipelineJobs/{pipeline_job}`
        class DeletePipelineJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::PipelineService::Client#cancel_pipeline_job PipelineService.CancelPipelineJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the PipelineJob to cancel.
        #     Format:
        #     `projects/{project}/locations/{location}/pipelineJobs/{pipeline_job}`
        class CancelPipelineJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
