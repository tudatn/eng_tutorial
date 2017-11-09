class Document < ActiveRecord::Base
    mount_uploader :file, DocumentUploader
end
