module ApplicationHelper
  def title
    base_title = "Take language classes in Singapore | Learn something new"
    if @title.nil?
      base_title
    else
      "#{@title}"
    end
  end

  def metades
    base_description = "Find great French, English, Korean and Chinese instructors and classes in Singapore."
    if @metades.nil?
      base_description
    else
      "#{@metades}"
    end
  end
end
