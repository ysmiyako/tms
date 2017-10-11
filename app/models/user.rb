class User < ActiveRecord::Base
    validates_presence_of :name, :message => "は必須項目です。"
    validates_uniqueness_of :name, :message => "が重複しています。"
    
#ユーザー名による絞り込み 
scope :get_by_name, ->(name) {
where("name like ?", "%#{name}%")
}
 
end
