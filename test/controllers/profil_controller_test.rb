require 'test_helper'

class ProfilControllerTest < ActionDispatch::IntegrationTest
  test "should get perso" do
    get profil_perso_url
    assert_response :success
  end

end
