require 'spec_helper'

describe User do
  describe "Validations" do
    it { should validate_length_of(:name).is_at_most(64) }
  end
end
