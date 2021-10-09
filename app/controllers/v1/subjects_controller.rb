module V1
  class SubjectsController < ApplicationController
    def index
      conditions = [:required, :semester, :year].each_with_object({}) do |condition, hash|
        hash[condition] = params[condition] if params[condition]
      end

      if conditions
        subjects = Subject.where(conditions)
      else
        subjects = Subject.all
      end

      render(
        json: subjects,
        each_serializer: V1::SubjectSerializer
      )
    end
  end
end
