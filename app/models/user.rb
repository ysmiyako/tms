class User < ActiveRecord::Base
    mount_uploader :movie, MovieUploader
    validates_presence_of :name, :message => "は必須項目です。"
    validates_uniqueness_of :name, :message => "が重複しています。"
    
#ユーザー名による絞り込み 
scope :get_by_name, ->(name) {
where("name like ?", "%#{name}%")
}

def self.get_day(day)
  where(created_at: Time.new(day).all_day)
end

#日付による絞り込み
#scope :get_by_day, ->(day) { where("created_at ?", "Date.new{day}.beginning_of_day..Date.new{day}.end_of_day")}
 scope :get_by_day, ->(day) { where("created_at ?",  "Time.new(day).all_day")}
  paginates_per 10
end
