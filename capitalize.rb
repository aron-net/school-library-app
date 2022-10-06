require './base_decorator'
class CapitalizaDecorator < Decorator
    def correct_name
        @nameable.correct_name.capitalize
    end
end