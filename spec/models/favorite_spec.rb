require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'お気に入り登録機能' do
    before do
      @favorite = FactoryBot.build(:favorite)
    end

    context '登録できるとき' do
      it '全ての値が正しく入力できれば登録できる' do
        expect(@favorite).to be_valid
      end
    end

    context '登録できないとき' do
      it 'ユーザーが紐づいていないと登録できない' do
        @favorite.user = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include('User must exist')
      end
      it 'itemが紐づいていないと登録できない' do
        @favorite.item = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include('Item must exist')
      end
      it '同じユーザーが同じitemを２回は登録できない' do
        @favorite.save
        after_favorite = FactoryBot.build(:favorite)
        after_favorite.user = @favorite.user
        after_favorite.item = @favorite.item
        after_favorite.valid?
        expect(after_favorite.errors.full_messages).to include('Item has already been taken')
      end
    end
  end
end
