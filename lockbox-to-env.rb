#!/usr/bin/env ruby

require 'yaml'

secret = YAML::load(ARGF)

raise "Doesn't look like lockbox payload" unless (secret["entries"] && secret["version_id"])

env = secret["entries"].map do |x|
  "#{x["key"]}=#{x["text_value"]}"
end.join("\n")

puts env
