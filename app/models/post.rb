class Post < ApplicationRecord
    def created_at
        attributes['created_at'].strftime('%l:%M%P %B %-d, %Y')
      end
end
