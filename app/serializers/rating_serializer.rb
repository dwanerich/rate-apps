class RatingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :platform_id
end
