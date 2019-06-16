require "json"

INPUT = gets.chomp

class InvalidTextError < StandardError;end
class NotFoundAsciiError < StandardError;end
  
class Answer
  
  def initialize(input)
    @input = input
    raise InvalidTextError, "文字を入力してください" if @input.empty? || @input =~ /^\s+$/
    raise NotFoundAsciiError, "ASCIIでの印字不可能の文字が入っています。" unless @input =~ /\p{ascii}+/ 
  end 
  
  def to_rot13
    @input.chars.inject("") do |text,char|
      text << case char
        when /^[a-m]*$/i
          char.ord + 13 
        when /^[n-z]*$/i
          char.ord - 13 
        else 
          char.ord 
        end 
        text
    end 
  end
  
end

answer = Answer.new(INPUT)



My_informations = {
  github: "Kohei-Suzuki22",
  twitter: "bhkbb2",
  answer: "#{answer.to_rot13}",
  homepage: "https://household-app.herokuapp.com/"
}


puts JSON.pretty_generate(My_informations)

