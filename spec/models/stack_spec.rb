describe 'Stack' do

  describe '#initialize' do
    before do
      @input = '13+62*7+*'
      @subject = Stack.new(@input)
    end

    it 'should initialize string attribute' do
      @subject.string.should == @input
    end

    it 'should initialize stack attribute' do
      @subject.stack.should == []
    end
  end

  describe '#perform' do
    describe 'should return the right result' do

      it "Test '+' operator" do
        input = '13+'
        subject = Stack.new(input)
        subject.perform.should.equal 4
      end

      it "Test '*' operator" do
        input = '62*'
        subject = Stack.new(input)
        subject.perform.should.equal 12
      end

      it "'13+62*7+*' should return 76" do
        input = '13+62*7+*'
        subject = Stack.new(input)
        subject.perform.should.equal 76
      end
    end
  end
end