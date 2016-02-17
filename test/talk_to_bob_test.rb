require 'test_helper'

class TalkToBobTest < Minitest::Test
  def bob
    TalkToBob::Bob.new
  end

  def test_stating_something
    remark = 'Tom-ay-to, tom-aaaah-to'
    assert_equal 'Whatever.', bob.hey(remark)
  end

  def test_shouting
    remark = 'WATCH OUT!'
    assert_equal 'Whoa, chill out!', bob.hey(remark)
  end

  def test_asking_a_question
    remark = 'do i look fat?'
    assert_equal 'Sure.', bob.hey(remark)
  end

  def test_silence
    remark = '   '
    assert_equal 'Fine. Be that way!', bob.hey(remark)
  end

end
