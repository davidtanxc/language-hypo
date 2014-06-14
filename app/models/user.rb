class User < ActiveRecord::Base

  TOPICS = ["Tennis", "Squash", "Table Tennis", "Badminton", "Bowling" ]
  CLASSTYPES = ["Private", "Group" ]

  attr_accessor :topics, :classtypes

  def topic_selectors
    TOPICS.collect { |topic| [(self.topic || "").include?(topic), topic] }
  end

  def topics=(value)
    self.topic = value.join(", ")
  end

  def topics
    (self.topic || "").split(", ")
  end

  def type_selectors
    CLASSTYPES.collect { |class_type| [(self.class_type || "").include?(class_type), class_type] }
  end

  def class_types=(value)
    self.class_type = value.join(", ")
  end

  def class_types
    (self.class_type || "").split(", ")
  end
end
