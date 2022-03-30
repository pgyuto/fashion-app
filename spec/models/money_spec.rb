require 'rails_helper'

RSpec.describe Money, type: :model do
  describe '使用金額登録機能' do
    before do
      @money = FactoryBot.build(:money)
    end

    context '登録できる時' do
      it '全ての値が正しく存在する時' do
        expect(@money).to be_valid
      end
    end
    context '登録できない時' do
      it 'balance:必須' do
        @money.balance = ''
        @money.valid?
        expect(@money.errors.full_messages).to include("Balance can't be blank")
      end
      it 'balanceが半角数字でない場合' do
        @money.balance = '１００'
        @money.valid?
        expect(@money.errors.full_messages).to include("Balance を半角数字のみで入力してください")
      end
      it 'balanceが0以下の場合' do
        @money.balance = -100
        @money.valid?
        expect(@money.errors.full_messages).to include("Balance を¥0〜9,999,999で入力してください")
      end
      it 'balanceが999,999以上の場合' do
        @money.balance = 1000000
        @money.valid?
        expect(@money.errors.full_messages).to include("Balance を¥0〜9,999,999で入力してください")
      end
      it 'userが紐づいていない場合' do
        @money.user = nil
        @money.valid?
        expect(@money.errors.full_messages).to include("User must exist")
      end
    end
  end
end
