describe 'RootViewController' do

  tests RootViewController

  describe 'It treats an input string and return the calculated result' do
    it 'Set label to good result when convert button is tapped' do

      text_field = views(UITextField)[0]

      text_field.text = '14+52*7+*'

      tap 'Convert'
      #wait for 2 seconds
      proper_wait 2

      label = views(UILabel)[1]
      label.text.should == '85'
    end
  end
end