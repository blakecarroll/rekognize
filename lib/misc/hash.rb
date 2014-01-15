class Hash
  def assert_valid_keys(*valid_keys)
    valid_keys.flatten!
    each_key do |k|
      raise(ArgumentError, "Unknown key #{k}") unless valid_keys.include?(k)
    end
  end
end

