class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アウター' },
    { id: 3, name: 'トップス' },
    { id: 4, name: 'ボトムス' },
    { id: 5, name: '靴' },
    { id: 6, name: 'その他' }
  ]
  end