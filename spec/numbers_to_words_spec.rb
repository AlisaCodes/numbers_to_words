require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do

  it('translates single digit numbers to words') do
    expect((5).numbers_to_words()).to(eq('five'))
  end

  it('translates double digit from 10 - 19 to words') do
    expect((12).numbers_to_words()).to(eq('twelve'))
  end

  it('translate double digit numbers from 20 - 99 to words') do
    expect((32).numbers_to_words()).to(eq('thirty two'))
  end

end
