class RootViewController < UIViewController

  include UI_Elements

  def convert_input_string
    @ConvertedStringLabel.text = Stack.new(@InputTextField.text).perform.to_s
  end

  def handleSingleTap
    puts 'That should close that keyboard...'
  end

  def viewDidLoad

    @InputTextField = input_text_field(25,185)
    @InputTextField.delegate = self
    @ConvertedStringLabel = converted_string_label(220, 185)

    chooseconvertButton = select_input_Button(220,120)
    chooseconvertButton.addTarget(self, action: :'convert_input_string', forControlEvents:UIControlEventTouchUpInside)

    singleTap = UITapGestureRecognizer.alloc.initWithTarget(self, action: :'handleSingleTap')
    self.view.addGestureRecognizer(singleTap)

    view.addSubview(@InputTextField)
    view.addSubview(@ConvertedStringLabel)
    view.addSubview(chooseconvertButton)

    view.backgroundColor = UIColor.viewFlipsideBackgroundColor

  end

end