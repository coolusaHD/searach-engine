ALTER TABLE jobs
MODIFY COLUMN parent_id BIGINT DEFAULT NULL,
ADD CONSTRAINT FK_job_document_id
FOREIGN KEY (parent_id) REFERENCES documents (id)
ON DELETE CASCADE
ON UPDATE CASCADE;