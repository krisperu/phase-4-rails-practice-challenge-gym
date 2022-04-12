class TotalMembershipSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :total_memberships

    def total_memberships
        self.object.memberships.sum(:charges)
    end
end