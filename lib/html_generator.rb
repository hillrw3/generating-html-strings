class HTMLGenerator

  def initialize(wrapper = nil)
    @wrapper = wrapper
  end

  def wrapper(output)
    if @wrapper != nil
      "#{@wrapper.sub("CONTENT", output)}"
    else
      output
    end
  end

  def section(string)
    output = "<section>#{string}</section>"
    wrapper(output)
  end

  def unordered_list(list_items)
    string_variable = "<ul>"
    list_items.each do |list_item|
       string_variable += "<li>" + list_item + "</li>"
    end
    output = string_variable + "</ul>"
    wrapper(output)
  end

  def button(string, class_hash = {})
    if class_hash != {}
      output = "<button class='#{class_hash[:class]}'>#{string}</button>"
      wrapper(output)
    else
      output = "<button>#{string}</button>"
      wrapper(output)
    end
  end

end