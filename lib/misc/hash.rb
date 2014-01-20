require File.expand_path('../object', __FILE__)

class Hash
  def assert_valid_keys(*valid_keys)
    valid_keys.flatten!
    each_key {|k| raise(ArgumentError, "Unknown key #{k}") unless valid_keys.include?(k)}
  end

  def to_params(namespace=nil)
    collect{|k, v| v.to_query(namespace ? "#{namespace}[#{k}]" : k)}.sort * '&'
  end
end
