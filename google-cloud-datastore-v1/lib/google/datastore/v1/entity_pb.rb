# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/datastore/v1/entity.proto

require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/latlng_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/datastore/v1/entity.proto", :syntax => :proto3) do
    add_message "google.datastore.v1.PartitionId" do
      optional :project_id, :string, 2
      optional :namespace_id, :string, 4
    end
    add_message "google.datastore.v1.Key" do
      optional :partition_id, :message, 1, "google.datastore.v1.PartitionId"
      repeated :path, :message, 2, "google.datastore.v1.Key.PathElement"
    end
    add_message "google.datastore.v1.Key.PathElement" do
      optional :kind, :string, 1
      oneof :id_type do
        optional :id, :int64, 2
        optional :name, :string, 3
      end
    end
    add_message "google.datastore.v1.ArrayValue" do
      repeated :values, :message, 1, "google.datastore.v1.Value"
    end
    add_message "google.datastore.v1.Value" do
      optional :meaning, :int32, 14
      optional :exclude_from_indexes, :bool, 19
      oneof :value_type do
        optional :null_value, :enum, 11, "google.protobuf.NullValue"
        optional :boolean_value, :bool, 1
        optional :integer_value, :int64, 2
        optional :double_value, :double, 3
        optional :timestamp_value, :message, 10, "google.protobuf.Timestamp"
        optional :key_value, :message, 5, "google.datastore.v1.Key"
        optional :string_value, :string, 17
        optional :blob_value, :bytes, 18
        optional :geo_point_value, :message, 8, "google.type.LatLng"
        optional :entity_value, :message, 6, "google.datastore.v1.Entity"
        optional :array_value, :message, 9, "google.datastore.v1.ArrayValue"
      end
    end
    add_message "google.datastore.v1.Entity" do
      optional :key, :message, 1, "google.datastore.v1.Key"
      map :properties, :string, :message, 3, "google.datastore.v1.Value"
    end
  end
end

module Google
  module Cloud
    module Datastore
      module V1
        PartitionId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.PartitionId").msgclass
        Key = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.Key").msgclass
        Key::PathElement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.Key.PathElement").msgclass
        ArrayValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ArrayValue").msgclass
        Value = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.Value").msgclass
        Entity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.Entity").msgclass
      end
    end
  end
end
