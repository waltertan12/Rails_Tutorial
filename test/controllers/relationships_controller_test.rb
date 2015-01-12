require 'test_helper'

class RelationshipsControllerTest < ActionController::TestCase

  test "create shoul require logged-in user" do
    assert_no_difference 'Relationship.count' do
      post :create
    end
    assert_redirected_to login_url
  end
  
  test "destroy should require logged-in user" do
    assert_no_difference 'Relationship.count' do
      delete :destroy, id: relationships(:one)
    end
  end

end
