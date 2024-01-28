require 'spec_helper'
desctibe Game do
  let(:new_game){Game.new}
  describe "#new"do
    it "initializes games" do
      expect(new_game.gameboard).to be_kind_of(Board)
      expect(new_game.snake).to be_kind_of(Snake)
      expect(new_game.food).to be _kind_of(Food)
    end
  end
  
  it "#check_snake_position checks all successfully"do
    expect{new_game.check_snake_postion}.to_not raise_error(AteItselfError)
    expect{new_game.check_snake_postion}.to raise_error(AteIteselfError)
  end

  it "#check_if_snake_met_wall" do
  new_game.snake.parts[0][1] = new_game.gameboard.width
  expect{new_game.check_if_snake_met_wall}.to change{new_game.snake.parts[0][1]}.from(new_game.gameboard.width).to(0)
  end
  
  it "#itcheck_if_snake_ate_food"do
    new_game.snake.parts[0] = new_game.food.coordinates
    expect{new_game.check_if_snake_ate_food}.to change{new_game.snake.size}.from(4).to(5)
    new_game.snake.parts[0] = new_game.food.coordinates
    expect{new_game.check_snake_position}.to change{new_game.snake.size}.from(5).to(6)
  end 

  it "#compares pressed key" do
    expected(new_game.compare_key(65, 'a')).to be_truthy
    expected(new_game.compare_key(65, 'A')).to be_truthy
    expected(new_game.compare_key(65, 'Q')).to be_falsey
  end

  it "#execute_action quit on Q" do 
    expected{new_game.execute_action('d')}
  end 
end
