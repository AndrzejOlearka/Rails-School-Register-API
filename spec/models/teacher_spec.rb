require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe "#soft_destroy" do
    
    subject(:soft_destroy){teacher.soft_destroy}


    let(:user) {FactoryBot.create(:user, email: 'test@op.pl', password: 'test123')}

    let(:teacher) {FactoryBot.create(:teacher, user_id: user.id)}

    it "sets the deleted_at attribute" do
      expect { soft_destroy }.to change { teacher.deleted_at}.from(nil)
    end
  end
end
