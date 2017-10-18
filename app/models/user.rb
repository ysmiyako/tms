class User < ActiveRecord::Base
    mount_uploader :movie, MovieUploader
    validates_presence_of :name, :message => "は必須項目です。"
    validates_uniqueness_of :name, :message => "が重複しています。"
    
#ユーザー名による絞り込み 
scope :get_by_name, ->(name) {
where("name like ?", "%#{name}%")
}
#公開可否による絞り込み

#日付による絞り込み

  
  paginates_per 10
end
