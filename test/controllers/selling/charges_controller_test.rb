require 'test_helper'

module Selling
  class ChargesControllerTest < ActionController::TestCase
    setup do
      @sellable = sellables(:one)
    end

    test "create charge" do
      post :create, uuid: @sellable.uuid
      assert_response :success
    end
  end
end
