require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test

  def test_1
    account_balances = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    account_balances.each do |balance|
      all_zeros = false unless balance.zero?
    end
    assert_equal true, all_zeros
  end

  def test_2
    account_balances = {
      checking: 0,
      saving: 0,
      retirement_401k: 0,
      retirement_ira: 0
    }
    all_zeros = true
    account_balances.each do |_account, balance|
      all_zeros = false unless balance.zero?
    end
    assert_equal true, all_zeros
  end

  def test_3
    words = %w[love hate fire bird call]
    all_four_letters = true
    words.each do |word|
      all_four_letters = false if word.size != 4
    end
    assert_equal true, all_four_letters
  end

  def test_4
    words = {
      one: 'love',
      two: 'hate',
      three: 'fire',
      four: 'bird',
      five: 'call'
    }
    all_four_letters = true
    words.each do |_position, word|
      all_four_letters = false if word.size != 4
    end
    assert_equal true, all_four_letters
  end

  def test_5
    statuses = %i[busy busy busy]
    all_busy = true
    statuses.each do |status|
      all_busy = false if status != :busy
    end
    assert_equal true, all_busy
  end

  def test_6
    friend_status = {
      'Megan' => :busy,
      'Sarah' => :busy,
      'Duncan' => :busy
    }
    all_busy = true
    friend_status.each do |_person, status|
      all_busy = false if status != :busy
    end
    assert_equal true, all_busy
  end

  def test_7
    zip_codes = [94_381, 831, 50_009, 36_232, 8992, 89_999, 11_110]
    all_five_digits = true
    zip_codes.each do |code|
      all_five_digits = false if code.size != 5
    end
    assert_equal false, all_five_digits
  end

  def test_8
    zip_codes = {
      'Megan' => 94_381,
      'Sarah' => 831,
      'Duncan' => 50_009,
      'Raymart' => 36_232,
      'Alec' => 89_092,
      'Cameron' => 89_999,
      'Joshua' => 11_110
    }
    all_five_digits = true
    zip_codes.each do |_person, code|
      all_five_digits = false if code.size != 5
    end
    assert_equal false, all_five_digits
  end

  def test_9
    snacks = ['GARLIC PLANTAINS', 'SNICKERDOODLES', 'Pretzels']
    all_caps = true
    snacks.each do |snack|
      all_caps = false if snack.upcase != true
    end
    assert_equal false, all_caps
  end

  def test_10
    snacks = {
      savory: 'GARLIC PLANTAINS',
      sweet: 'SNICKERDOODLES',
      salty: 'Pretzels'
    }
    all_caps = true
    snacks.each do |_type, snack|
      all_caps = false if snack.upcase != true
    end
    assert_equal false, all_caps
  end
end
