class CounterReflex < ApplicationReflex
  def increment
    @count = element.dataset[:count].to_i
    morph '#counter', @count
  end
end