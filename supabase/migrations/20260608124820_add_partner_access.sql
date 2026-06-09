-- Restaura acesso de partner aos projetos (todos os projetos públicos/ativos)
DROP POLICY IF EXISTS "Users view accessible projects" ON projects;

CREATE POLICY "Users view accessible projects"
  ON projects FOR SELECT
  TO authenticated
  USING (
    -- Dono sempre vê seus projetos
    owner_id = auth.uid()
    -- Admin vê tudo
    OR EXISTS (SELECT 1 FROM profiles WHERE profiles.id = auth.uid() AND profiles.role = 'admin')
    -- Professor vê projetos das suas turmas
    OR EXISTS (
      SELECT 1 FROM class_professors
      WHERE class_professors.professor_id = auth.uid()
      AND class_professors.class_id = projects.class_id
    )
    -- Empresa parceira vê todos os projetos
    OR EXISTS (SELECT 1 FROM profiles WHERE profiles.id = auth.uid() AND profiles.role = 'partner')
  );