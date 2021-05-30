module Deletable 
    extend ActiveSupport::Concern

    included do 
        default_scope -> {where(deleted_at: nil)}
        scope :with_deleted, -> {unscope(where: :deleted_at)}
        scope :only_deleted, -> {with_deleted.where.not(deleted_at: nil)}
    
        def soft_destroy
            update_column("deleted_at", Time.now)
        end
    end
end