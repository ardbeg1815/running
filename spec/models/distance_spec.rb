require 'rails_helper'

RSpec.describe Distance, type: :model do
  describe '記録の入力' do
    it 'monthが空では保存できない' do
      distance = Distance.new(month: '', date: '10', distance: '10', weight: '50')
      distance.valid?
      expect(distance.errors.full_messages).to include("Month can't be blank")    
    end
    it 'dateが空では保存できない' do
      distance = Distance.new(month: '1', date: '', distance: '10', weight: '50')
      distance.valid?
      expect(distance.errors.full_messages).to include("Date can't be blank")
    end
    it 'distanceが空では保存できない' do
      distance = Distance.new(month: '1', date: '10', distance: '', weight: '50')
      distance.valid?
      expect(distance.errors.full_messages).to include("Distance can't be blank")
    end
    it 'weightが空では保存できない' do
      distance = Distance.new(month: '1', date: '10', distance: '10', weight: '')
      distance.valid?
      expect(distance.errors.full_messages).to include("Weight can't be blank")
    end
  end
end
