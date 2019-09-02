class VisitorsController < ApplicationController
  def index
    @student_with_total =Mark.group('student_id').order('sum_individualMark DESC').sum('individualMark')
    @students_rank = []
    @rank = 0
    @same_count = 1
    @student_with_total.select do |k,v|
      @rank_hash = {}
      @rank_hash["student_id"] = k
      @rank_hash["student_name"] =  Student.where(:id => k).pluck(:name).first
      @rank_hash["student_total"] = v
      
      if @previous_total != v
        if @same_count==1
          @rank = @rank+1
        else
          @rank = @rank+ @same_count
          @same_count =1
        end
      else
        @rank = @rank
        @same_count += 1
      end
      @rank_hash["student_rank"] = @rank
      @students_rank.push(@rank_hash)
      @previous_total = v
   end
    puts '===============>'
    puts @students_rank
  end
end
