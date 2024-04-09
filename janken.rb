def janken
    puts "じゃんけん"
    janken_hand = ["グー", "チョキ", "パー"]
    com_num = rand(3)
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_num = gets.to_i

    if player_num == 3
        puts "戦わない"
        return false
    elsif player_num > 3
        puts "0〜3の数字を入力してください"
        puts "--------------"
        return true
    end

    puts "ホイ！"
    puts "--------------"
    puts "あなた:#{janken_hand[player_num]}を出しました"
    puts "相手:#{janken_hand[com_num]}を出しました"
    puts "--------------"

    if player_num == com_num
        puts "あいこで..."
        return aiko
    elsif (player_num == 0 && com_num == 1) || (player_num == 1 && com_num == 2) || (player_num == 2 && com_num == 0)
        puts "じゃんけんに勝ちました"
        @result = "win"
        return attimuite
    else
        puts "じゃんけんに負けました"
        @result = "lose"
        return attimuite
    end
    
end

def aiko
    janken_hand = ["グー", "チョキ", "パー"]
    com_num = rand(3)
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_num = gets.to_i

    if player_num == 3
        puts "戦わない"
        return false
    elsif player_num > 3
        puts "0〜3の数字を入力してください"
        puts "--------------"
        return true
    end

    puts "ショ！"
    puts "--------------"
    puts "あなた:#{janken_hand[player_num]}を出しました"
    puts "相手:#{janken_hand[com_num]}を出しました"
    puts "--------------"

    if player_num == com_num
        puts "あいこで..."
        return aiko
    elsif (player_num == 0 && com_num == 1) || (player_num == 1 && com_num == 2) || (player_num == 2 && com_num == 0)
        puts "じゃんけんに勝ちました"
        @result = "win"
        return attimuite
    else
        puts "じゃんけんに負けました"
        @result = "lose"
        return attimuite
    end
end


def attimuite
    directions = ["上", "下", "左", "右"]
    com_direction = rand(4)
    puts "あっち向いて〜"
    puts "0(上),1(下),2(左),3(右)"
    player_direction = gets.to_i

    if player_direction > 3
        puts "0〜3の数字を入力してください"
        puts "--------------"
        return attimuite
    end

    puts "ホイ！"
    puts "--------------"
    puts "あなた:#{directions[player_direction]}"
    puts "相手:#{directions[com_direction]}"
    puts "--------------"

    if player_direction == com_direction && @result == "win"
        puts "あなたの勝ちです"
        return false
    elsif player_direction == com_direction && @result == "lose"
        puts "あなたの負けです"
        return false
    else

        return true
    end
end


next_game = true

while next_game
    next_game = janken
end