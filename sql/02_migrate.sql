ALTER TABLE visit_history DROP INDEX tenant_id_idx;
ALTER TABLE visit_history ADD INDEX tenant_competition_idx (tenant_id, competition_id);
