module ActsAsRateable #:nodoc:
  module RateScopes

    # returns Rating records where rate is the record passed in.
    def for_rate(rate)
      where(rate_id: rate.id, rate_type: parent_class_name(rate))
    end

    # returns Rating records where rateable is the record passed in.
    def for_rateable(rateable)
      where(rateable_id: rateable.id, rateable_type: parent_class_name(rateable))
    end

    # returns Rating records where rate_type is the record passed in.
    def for_rate_type(rate_type)
      where(rate_type: rate_type)
    end

    # returns Rating records where followeable_type is the record passed in.
    def for_rateable_type(rateable_type)
      where(rateable_type: rateable_type)
    end

    # returns Rating records from past 2 weeks with default parameter.
    def recent(from)
      where(["created_at > ?", (from || 2.weeks.ago).to_s(:db)])
    end

    # returns Rating records in descending order.
    def descending
      order("ratings.created_at DESC")
    end

  end
end
