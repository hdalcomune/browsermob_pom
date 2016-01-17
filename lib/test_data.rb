module TestData
  def self.target_ids
    @target_ids ||= YAML::load_file("config/data/product_data.yml")
  end
end
