require_relative '../encrypt'
# 1. describe -> describes the method we're testing
# 2. it -> describing the test in English
# 3. expect -> call the method and compare the result

describe '#encrypt' do
  it 'should return an empty string when give an empty string' do
    actual = encrypt('')
    expect(actual).to eq('')
  end

  it 'should return an encrypted letter' do
    actual = encrypt("E")
    expected = "B"
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted sentence with punctuation' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!"
    expect(actual).to eq(expected)
  end
end
