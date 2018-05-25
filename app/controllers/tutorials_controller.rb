
class TutorialsController < ApplicationController

  include TutorialsHelper

  def index
    @tutorials = getAllArticles
    @range2 = a_range
    @a, *, @b = getValues.hash()
    @c = TutorialsHelper.getName

    # @tutorials = "1";
    render layout: "tutorial"
  end

  def getValues
    [12,2,3,100]
  end

  def getAllArticles
    Article.all.limit(10)
  end

  def a_range
    ('one'..'ten').to_a
  end

  def mytutorial
    ::Hello
  end

  def show
    @tutorials = params
  end
end
