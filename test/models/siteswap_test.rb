require 'test_helper'

class SiteswapTest < ActiveSupport::TestCase
  test "siteswap difficulty  must be between 1 and 10" do
  siteswap = siteswaps(:one)

  siteswap.difficulty = -1
  assert siteswap.invalid?
  assert siteswap.errors[:difficulty].any?

  siteswap.difficulty = 0
  assert siteswap.invalid?
  assert siteswap.errors[:difficulty].any?

  siteswap.difficulty = 1
  assert siteswap.valid?
  assert siteswap.errors[:difficulty].none?
  
  siteswap.difficulty = 11
  assert siteswap.invalid?
  assert siteswap.errors[:difficulty].any?

  siteswap.difficulty = 10
  assert siteswap.valid?
  assert siteswap.errors[:difficulty].none?

  siteswap.ball_count = 2
  assert siteswap.invalid?
  assert siteswap.errors[:ball_count].any?
  
  siteswap.ball_count = 15
  assert siteswap.invalid?
  assert siteswap.errors[:ball_count].any?

  siteswap.ball_count = 5
  assert siteswap.valid?
  assert siteswap.errors[:ball_count].none?

  end
end
