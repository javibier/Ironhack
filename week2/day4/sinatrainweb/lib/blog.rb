class Blog
  attr_accessor :posts


    def initialize
      @posts = []
      @page_start = 0
      @page_end = 9
    end

    # def posts 
    #   return @posts
    # end

    def add_post(new_post)
      @posts.push(new_post)
    end

    def go_next
      @page_start += 1
      @page_end += 1
    end

    def go_prev
      @page_start -= 1
      @page_end -= 1
    end

      def print_all_posts
        puts ""
        all_posts = @posts[@page_start..@page_end]
        all_posts.each do |the_post|
          the_post.print
      end
    end

    def sort_all_posts
        @posts.sort { |a, b| b.date<=>a.date}
    end
end