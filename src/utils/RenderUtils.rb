module RenderUtils
  def self.render(content)
    return render_many(content) if content.is_a?(Array)

    render_one(content)
  end

  def self.render_one(content)
    content.to_json
  end

  def self.render_many(content)
    {
      data: content
    }.to_json
  end
end
