require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name:"Example User", email:"when@gmail.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "name shouldn't be too long (max 15)" do
    @user.name = "a" * 16
    assert_not @user.valid?
  end

  test "email shouldn't be too long (max 255)" do
    @user.email = "a"* 252 + "@gmail.com"
    puts assert_not @user.valid?
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com user@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid."
    end
  end

  test "email valiation shouldn't accept invalid addresses" do
    invalid_addresses = %w[“user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com”]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address} shouldn't be valid"
    end
  end

  test "email addresses should be unique" do
    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    @user.save
    assert_not dup_user.valid?
  end


end
