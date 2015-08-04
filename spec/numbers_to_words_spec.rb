require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do

  it('translates single digit numbers to words') do
    expect((5).numbers_to_words()).to(eq('five'))
  end

end
