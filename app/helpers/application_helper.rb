module ApplicationHelper
  
  def parse_markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true, :line_numbers => :table)
    markdown.render(text)
  end

end
