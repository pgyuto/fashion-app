class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '白色' },
    { id: 3, name: '黒色' },
    { id: 4, name: '灰色' },
    { id: 5, name: '赤色' },
    { id: 6, name: '青色' },
    { id: 7, name: '緑色' },
    { id: 8, name: '黄色' },
    { id: 9, name: '橙色' },
    { id: 10, name: '桃色' },
    { id: 11, name: '紫色' },
    { id: 12, name: '茶色' },
    { id: 13, name: '金色' },
    { id: 14, name: '銀色' },
    { id: 15, name: 'その他' }
  ]


  include ActiveHash::Associations
  has_many :items
  end