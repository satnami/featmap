CREATE TABLE projects (
	tenant_id uuid NOT NULL,
	id uuid NOT NULL,
	title varchar NOT NULL,
	created_by uuid,
	created_at TIMESTAMP WITH TIME ZONE not null,			
	CONSTRAINT "PK_projects_1" PRIMARY KEY (tenant_id,id),
	CONSTRAINT "FK_projects_1" FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE CASCADE,
	CONSTRAINT "FK_projects_2" FOREIGN KEY (created_by) REFERENCES members(id) ON DELETE SET NULL		
)
WITH (
	OIDS=FALSE
) ;
