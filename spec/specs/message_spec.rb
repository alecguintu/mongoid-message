require 'spec_helper'

describe Mongoid::Message do

  describe User do

    before do
      @bonnie = User.create(:name => 'Bonnie')
      @clyde = User.create(:name => 'Clyde')
      @alec = User.create(:name => 'Alec')

      #@gang = Group.create(:name => 'Gang')
    end

    it "should do nothing" do
      @alec.send_msg("Lorem Ipsum", [@bonnie], "Test Subject")
    end

  end
end
