ThinkingSphinx::Index.define :article, :with => :active_record do
  indexes subject, :sortable => true
  indexes content

  has created_at
end
