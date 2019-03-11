CREATE TABLE milestones (
	tenant_id uuid NOT NULL,
	project_id uuid NOT NULL,
	id uuid NOT NULL,	
	index varchar not null,	
	title varchar NOT NULL,	
	created_by uuid,
	created_at TIMESTAMP WITH TIME ZONE not null,			
	CONSTRAINT "PK_milestones" PRIMARY KEY (tenant_id,id),
	CONSTRAINT "UN_milestones" UNIQUE (tenant_id,project_id, index),
	CONSTRAINT "FK_milestones_1" FOREIGN KEY (tenant_id, project_id) REFERENCES projects(tenant_id, id) ON DELETE CASCADE,
	CONSTRAINT "FK_milestones_2" FOREIGN KEY (created_by) REFERENCES members(id) ON DELETE SET NULL			
)
WITH (
	OIDS=FALSE
) ;
