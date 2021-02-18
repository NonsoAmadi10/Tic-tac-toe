# The tic-tac-toe board has 3 rows with 3 columns each, so the grid consists of 9 cells.
# Each cell can be blank, “X”, or “O”.

module TicTacToe
    class Cell
      attr_accessor :value
      def initialize(value = "")
        @value = value
      end
    end
end