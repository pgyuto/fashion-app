require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '服の登録機能' do
    before do
      @item = FactoryBot.build(:item)
    end

    context '登録できるとき' do
      it '全ての値が正しく入力できれば登録できる' do
        expect(@item).to be_valid
      end
      it 'メーカーの値が空でも登録できる' do
        @item.maker = ''
        expect(@item).to be_valid
      end
    end

    context '登録できないとき' do
      it 'text:必須' do
        @item.text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end
      it 'category_id:必須' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'image:必須' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'color_id:必須' do
        @item.color_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Color can't be blank")
      end
      it 'ユーザーが紐づいていないと登録できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
      it 'category_idが1だと登録できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'color_idが1だと登録できない' do
        @item.color_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Color can't be blank")
      end
    end
  end
end
