module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Imobank - Investimento Imobiliário Crowdfunding"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

# Returns the meta description on a per-page basis.
  def full_meta_desc(meta_desc = '')
    base_desc = "Imobank - Investimento Imobiliário Crowdfunding"
    if meta_desc.empty?
      base_desc
    else
      meta_desc
    end
  end

 # Returns the meta keywords on a per-page basis.
  def full_meta_keywords(meta_keywords = '')
    base_keywords = "Investimento Imobiliário e em Construção - Crowdfunding"
    if meta_keywords.empty?
      base_keywords
    else
      meta_keywords
    end
  end

# Returns the robots info on a per-page basis.
  def full_robots(robots = '')
    base_robots = "INDEX, FOLLOW"
    if robots.empty?
      base_robots
    else
      robots
    end
  end

end
