# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/dashboard.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/dashboard/v1/dashboard_filter_pb'
require 'google/monitoring/dashboard/v1/layouts_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/dashboard.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.Dashboard" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :etag, :string, 4
      repeated :dashboard_filters, :message, 11, "google.monitoring.dashboard.v1.DashboardFilter"
      map :labels, :string, :string, 12
      oneof :layout do
        optional :grid_layout, :message, 5, "google.monitoring.dashboard.v1.GridLayout"
        optional :mosaic_layout, :message, 6, "google.monitoring.dashboard.v1.MosaicLayout"
        optional :row_layout, :message, 8, "google.monitoring.dashboard.v1.RowLayout"
        optional :column_layout, :message, 9, "google.monitoring.dashboard.v1.ColumnLayout"
      end
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          Dashboard = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.Dashboard").msgclass
        end
      end
    end
  end
end
