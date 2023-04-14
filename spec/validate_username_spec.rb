require './lib/validate_username'

describe 'validate_username' do
  it 'does allow a valid username' do
    result = validate_username('bob')
    expect(result).to be(true)
  end

  it 'does not allow an empty username' do
    result = validate_username('')
    expect(result).to be(false)
  end

  it 'does not allow usernames shorter than 3 chars' do
    result = validate_username('aa')
    expect(result).to be(false)

    result = validate_username('aaa')
    expect(result).to be(true)
  end

  it 'does not allow usernames longer than 30 chars' do
    result = validate_username('a' * 31)
    expect(result).to be(false)

    result = validate_username('a' * 30)
    expect(result).to be(true)
  end

  # Acceptance Criteria for valid username:
  # - allows simple and clear username
  # - does not allow an empty username
  # - does not allow username shorter than 3 chars
  # - does not allow username longer than 30 chars
  # - optional: does not allow numbers
  #
  # remember: Red - Green - Refactor!
end
