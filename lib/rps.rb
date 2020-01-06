# frozen_string_literal: true

# :nodoc:
class RPS
  CASES = {
    rock: {
      paper: 'p2 wins',
      rock: 'draw',
      scissors: 'p1 wins'
    },
    paper: {
      paper: 'draw',
      rock: 'p1 wins',
      scissors: 'p2 wins'
    },
    scissors: {
      paper: 'p1 wins',
      rock: 'p2 wins',
      scissors: 'draw'
    }
  }.freeze
  def play(first, second)
    CASES[first][second]
  end
end
