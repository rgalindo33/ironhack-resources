require "talk_to_bob/version"

module TalkToBob
  class Bob

    RESPONSES = {
      anything: 'Whatever.',
      shouting: 'Whoa, chill out!',
      question: 'Sure.',
      silence: 'Fine. Be that way!'
    }

    def hey(phrase)
      RESPONSES[type_of_answer(phrase)]
    end

  private
    def type_of_answer(phrase)
      case phrase
        when /\?$/
          :question
        when /\A\s*\z/
          :silence
        when /^[^a-z]+$/
          :shouting
        else
          :anything
      end
    end
  end
end
