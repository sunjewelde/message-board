class Message < ActiveRecord::Base
    # 名前は必須入力かつ20文字以内
    validates :name , length: {  maximum: 20 } , presence: true
    # 内容は必須入力かつ2文字以上30文字以下
    validates :body , length: {minimum: 2 , maximum: 30 } , presence: true
    #  数字以外入力できない、0歳以上
    validates :age , numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
