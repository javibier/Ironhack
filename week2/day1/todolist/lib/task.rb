class Task
	attr_reader :content, :id
    @@current_id = 1
    def initialize(content, id, created_at)
        @content = content
        @is_complete = false
        @created_at = Time.now

        @id = @@current_id
        @@current_id += 1
    end

    def make_incomplete!
    	@is_complete = false
    end

    def complete!
    	@is_complete = true
    end

    def complete!
    	if @is_complete == true
          true
        else
          false
      end

     def update_content!(new_content)
        @content = new_content
        @updated_at = Time.now
     end
end

# task = Task.new("Buy the milk")
# puts task.id

# task2 = Task.new("Wash the car")
# puts task2.id
