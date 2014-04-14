class Chef::Recipe::DatabagUtil
  
  def self.get_data_bag_item_safely(key, id)
    return begin
      Chef::Recipe::data_bag_item(key, id)
    # if can't get data_bag_item, returns {} (default value is an empty string)
    rescue Net::HTTPServerException
      Hash.new("")
    end
  end
end
