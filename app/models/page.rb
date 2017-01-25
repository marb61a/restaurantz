class Page < ApplicationRecord
    mount_uploader :image_1, PageUploader 
    mount_uploader :image_2, PageUploader 
    mount_uploader :image_3, PageUploader 
    mount_uploader :image_4, PageUploader 
end
