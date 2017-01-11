json.array!(@pages) do |page|
  json.extract! page, :id, :string_1, :string_2, :string_3, :string_4, :string_5, :string_6, :string_7, :string_8, :string_9, :string_10, :string_11, :string_12, :string_13, :string_14, :string_15, :string_16, :text_1, :text_2, :text_3, :text_4, :text_5, :text_6, :text_7, :text_8, :text_9, :text_10, :page_name, :integer_1, :integer_2, :integer_3, :integer_4, :image_1, :image_2, :image_3, :image_4
  json.url page_url(page, format: :json)
end
