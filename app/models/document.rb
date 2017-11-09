class Document < ActiveRecord::Base
    mount_uploader :file, DocumentUploader
    belongs_to :user, required: true
end
