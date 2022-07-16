# frozen_string_literal: true

## Segments
Segment.delete_all
segments = YAML.load File.read('db/seeds/segments.yml')
segments['attributes'].each_with_index do |values, index|
  Segment.create! values.merge!({ index: })
end

## Regions
Region.delete_all
regions = YAML.load File.read('db/seeds/regions.yml')
regions['attributes'].each do |values|
  children = values['regions']
  values.delete('regions') unless children&.empty?

  record = Region.create!(values)

  children&.each do |c_values|
    c_values.delete('regions')
    record.regions << Region.create!(c_values)
  end
end
