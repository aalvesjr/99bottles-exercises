class Bottles
  def verse(number)
    "#{first_phrase(number)}\n#{second_phrase(number)}\n"
  end

  def verses(init, finish)
    verses = (finish..init).to_a.reverse.map do |verse_number|
      verse(verse_number)
    end

    verses.join("\n")
  end

  def song
    verses(99, 0)
  end

  private
  def bottle_text(n)
    if n <= 0
      'no more bottles'
    elsif n > 1
      "#{n} bottles"
    else
      "#{n} bottle"
    end
  end

  def take(number)
    (number == 1)? 'it' : 'one'
  end

  def first_phrase(number)
    "#{bottle_text(number).capitalize} of beer on the wall, #{bottle_text(number)} of beer."
  end

  def second_phrase(number)
    if number > 0
      "Take #{take(number)} down and pass it around, #{bottle_text(number-1)} of beer on the wall."
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end
end
