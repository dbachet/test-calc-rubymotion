module UI_Elements

  def select_input_Button (xPosition,yPosition)

    button = UIButton.buttonWithType(UIButtonTypeCustom)
    button.frame = CGRectMake(xPosition,yPosition,85,73)
    button.setBackgroundImage (UIImage.imageNamed("btnSelect.png"),forState:UIControlStateNormal)
    button.setTitle("Convert",forState:UIControlStateNormal)
    button

  end


  def input_text_field (xPosition,yPosition)

    textField = UITextField.alloc.initWithFrame(CGRectMake(xPosition,yPosition, 170, 30))
    textField.borderStyle = UITextBorderStyleRoundedRect
    textField.font = UIFont.systemFontOfSize(15)

    textField

  end

  def converted_string_label (xPosition,yPosition)

    label = UILabel.alloc.initWithFrame(CGRectMake(xPosition,yPosition, 170, 30))
    label.font = UIFont.systemFontOfSize(15)
    label.backgroundColor = UIColor.viewFlipsideBackgroundColor
    label.textColor = UIColor.whiteColor

    label

  end

end