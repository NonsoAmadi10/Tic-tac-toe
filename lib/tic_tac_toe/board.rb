# lib/tic_tac_toe/board.rb
module TicTacToe
    class Board
        attr_accessor :grid
      def initialize(input={})
        @grid = input.fetch(:grid, default_grid)
      end

      def get_cell(x, y)
        grid[y][x]
      end

      def set_cell(x, y, value)
        get_cell(x, y).value = value
      end

      def game_over
        return :winner if winner?
        return :draw if draw?
        false
      end

      
      def play
        puts "#{current_player.name} has randomly been selected as the first player"
        while true
          board.formatted_grid
          puts ""
          puts solicit_move
          x, y = get_move
          board.set_cell(x, y, current_player.color)
          if board.game_over
            puts game_over_message
            board.formatted_grid
            return
          else
            switch_players
          end
        end
      end
      

      private 
      def default_grid
        Array.new(3) { Array.new(3) { Cell.new }}
      end

      def winning_position_values(winning_position)
        winning_position.map { |cell| cell.value }
      end
  
      def winning_positions
        grid + # rows
        grid.transpose + # columns
        diagonals # two diagonals
      end
  
      def diagonals
        [
          [get_cell(0, 0), get_cell(1, 1), get_cell(2, 2)],
          [get_cell(0, 2), get_cell(1, 1), get_cell(2, 0)]
        ]
      end

      def draw?
        grid.flatten.map { |cell| cell.value }.none_empty?
      end

      def winner?
        winning_positions.each do |winning_position|
          next if winning_position_values(winning_position).all_empty?
          return true if winning_position_values(winning_position).all_same?
        end
        false
      end

    end
end