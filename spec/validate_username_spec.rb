require './lib/validate_username'

describe 'validate_username' do
  it 'allows a valid username' do
    result = validate_username('bob')
    expect(result).to be true
  end

  # xit 'does not allow an empty username' do
  #     result = validate_username('')
  #     expect(result).to be false
  # end

  # xit 'does not allow usernames shorter than 3 chars'
  # xit 'does not allow usernames longer than 30 chars'
end
