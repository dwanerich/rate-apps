class PlatformSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url, :slug
  has_many :ratings
end
