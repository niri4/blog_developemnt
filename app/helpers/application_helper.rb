module ApplicationHelper

  def nested_comments(comments, style =0)
    content_tag(:div, "") do
      style +=10
      comments.map do |comment, sub_comments|
        content_tag(:div, render(comment) + nested_comments(sub_comments, 10), style: "margin: #{style}px" )
      end.join.html_safe
    end
  end
end
