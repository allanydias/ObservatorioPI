# 🎓 Observatório PI (English Version)

> A web platform to centralize the management, evaluation, and visibility of Integrative Projects (PIs) at Faculdade SENAC. Developed as a Capstone Project for the Software Requirements Engineering course.

[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Senac](https://img.shields.io/badge/Institution-Senac%20College-blue)](https://www.senac.br/)
[![LGPD](https://img.shields.io/badge/Compliance-LGPD%20Ready-blueviolet)](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm)
[![Deploy](https://img.shields.io/badge/Deploy-Vercel-black)](https://observatorio-pi-eight.vercel.app)

---

## 📋 Project Overview

**Observatório PI** solves the problem of fragmented academic project delivery. Projects were previously submitted via Microsoft Teams, making version control, structured evaluation, and portfolio visibility difficult for students, professors, and partner companies.

### Access Profiles

| Profile | Capabilities |
|---|---|
| **Student** | Create, submit projects and add group members |
| **Professor** | Evaluate projects with rubric, feedback and score |
| **Admin** | Manage users, classes and approvals |
| **Partner Company** | View portfolio of approved projects |

### Key Features

- ✅ **Integrated AI Mentor** (Groq — LLaMA 3.3 70B) personalized per user profile
- ✅ Structured evaluation with criteria and scoring
- ✅ Public portfolio filterable by class, course and year
- ✅ LGPD compliance (data consent)
- ✅ Row Level Security (RLS) — each profile only accesses what belongs to them

---

## 🔒 LGPD & Data Privacy Compliance (Lei Geral de Proteção de Dados)

Because this application processes personal data of students, professors, and companies, privacy was a core requirement of this project, in compliance with Brazilian Federal Law nº 13.709/2018 (LGPD).

### Implemented Privacy Standards

- **Legal Basis (Art. 7º):** Data collection is bound to the **explicit consent** of the user at registration, recorded in the `privacy_consents` table.
- **Data Minimization:** Only data necessary for functionality is collected and stored.
- **User Rights (Art. 18):** The system implements a settings panel where users can view and update their personal data.
- **Security (Art. 46):** Passwords are managed by Supabase Auth with secure hashing. Database access is protected by Row Level Security (RLS), preventing unauthorized cross-profile access.
- **Access Control (RBAC):** Each profile exclusively accesses resources authorized for their role.

---

## 🛠 Tech Stack

| Category | Tool |
|---|---|
| Framework | Next.js 13.5 (App Router) |
| Language | TypeScript |
| Styling | Tailwind CSS + Shadcn/UI |
| Database | Supabase (PostgreSQL) |
| Authentication | Supabase Auth |
| AI | Groq API — LLaMA 3.3 70B |
| Deploy | Vercel |
| Project Management | Trello |
| Prototyping | Figma |

---

## ⚙️ Getting Started (Local Development)

### Prerequisites

- [Node.js 18+](https://nodejs.org/)
- [Supabase](https://supabase.com/) account with a project created
- [Groq](https://console.groq.com/keys) API key

### 1. Clone the repository

```bash
git clone https://github.com/allanydias/ObservatorioPI.git
cd ObservatorioPI
```

### 2. Install dependencies

```bash
npm install
```

### 3. Set up environment variables

```bash
cp .env.exemplo .env
```

```env
NEXT_PUBLIC_SUPABASE_URL=https://xxxxxxxxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key_here
GROQ_API_KEY=gsk_your_groq_key_here
```

### 4. Run the project

```bash
npm run dev
```

Access at `http://localhost:3000`

---

## 📊 Core API Endpoints

| Method | Endpoint | Description | Profile |
|---|---|---|---|
| POST | `/api/chat` | Send message to AI Mentor | All |
| GET | `/dashboard/projetos` | List user projects | All |
| POST | `/dashboard/projetos/novo` | Submit new project | Student |
| PUT | `/dashboard/projetos/[id]/editar` | Edit existing project | Student |
| POST | `/dashboard/avaliacoes` | Register evaluation with score | Professor |
| GET | `/dashboard/usuarios` | Manage platform users | Admin |
| GET | `/dashboard/turmas` | Manage classes | Admin |

---

## 📐 Business Rules

- Only Admin can create user accounts
- Students can only view and edit their own projects
- Professors can only evaluate projects from their assigned classes
- Only approved projects appear in the public portfolio
- Partner companies can only view approved/featured projects
- AI Mentor responses are personalized based on the logged-in user's profile (student, professor, partner, admin)

---

## 📈 Future Improvements

If we had another semester, we would implement:

- **Project versioning:** complete change history identifying which group member was responsible for each submission
- **File upload:** Supabase Storage integration for PDF, DOCX and PPTX files
- **Email notifications:** Resend integration for automatic evaluation alerts
- **Advanced reports:** PDF/CSV data export for administrators
- **Mobile app:** React Native version for project tracking on mobile devices

---

## 🔬 Research, Technology & Society

### Problem Definition

At Faculdade SENAC, Integrative Projects were delivered via Microsoft Teams, causing fragmented submissions across channels and classes, students added to incorrect groups, and no clear accountability when only one group member submitted on behalf of the team.

### Literature Review

Existing academic management systems (Moodle, Google Classroom, Microsoft Teams) offer generic file submission but lack structured evaluation workflows, role-based portfolios, and AI-assisted mentoring tailored to project-based learning environments.

### Methodology

The project followed an agile development approach, combining requirements engineering (IEEE 830 SRS), User Story Mapping, MoSCoW prioritization, and iterative prototyping in Figma, with development tracked via Trello and version control via GitHub.

### Feasibility

The solution was built using cost-free tools (Supabase free tier, Groq free inference, Vercel free deploy), making it technically and financially viable for academic deployment without institutional investment.

### Expected Results

- Centralized submission and versioning of Integrative Projects
- Standardized, traceable evaluation process for professors
- Increased visibility of student work through a public portfolio
- Reduced administrative overhead for class and user management

---

## 🧩 Extension Unit

### Management Tool

Project development was tracked using **Trello**, organized in a Kanban board with Backlog, In Progress (WIP), and Done columns: [Trello Board](https://trello.com/b/i1wHTh4G/pi-gestao-de-projetos)

### Integration Across Disciplines

This project integrates knowledge from multiple curricular units:

| Curricular Unit | Contribution |
|---|---|
| Requirements Engineering | SRS documentation (IEEE 830), user stories, use cases |
| Coding – Languages & Techniques | Feature implementation (Next.js, TypeScript) |
| Database | Conceptual/logical modeling, CRUD operations |
| Creativity | Prototyping and interface improvements (Figma) |
| Legislation | LGPD compliance and data protection |
| Tech English | Bilingual README and project documentation |

### Development Space

The project's initial structure was bootstrapped with AI assistance and iteratively developed and reviewed through GitHub.

---

## 🔗 Links

- 🌐 **Live Demo:** https://observatorio-pi-eight.vercel.app
- 📋 **Trello Board:** https://trello.com/b/i1wHTh4G/pi-gestao-de-projetos
- 🎨 **Figma:** available in the 'Figma Guia' card on Trello

---

## 👥 Authors & Project Team

Developed by **Group Observar** — Faculdade SENAC 2026:

| Name | Role | GitHub |
|---|---|---|
| Allany Dias | Full Stack Dev & AI | [GitHub](https://github.com/allanydias) |
| Lorena Torres | Backend Developer| [GitHub](https://github.com/lorena-torres07) |
| José Luis | Requirements | GitHub |
| Mariana Oliveira | UI/UX | GitHub |
| Mayara Marina | Requirements & Documentation | GitHub |

*Academic Advisor: Prof. Guibson Barros*
*Tech English Professor: Prof.Leonardo Lucena*

---

# 🎓 Observatório PI

> Uma plataforma web para centralizar a gestão, avaliação e visibilidade dos Projetos Integradores (PIs) da Faculdade SENAC. Desenvolvido como Projeto Integrador da Unidade Curricular de Engenharia de Requisitos.

[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Senac](https://img.shields.io/badge/Institution-Senac%20College-blue)](https://www.senac.br/)
[![LGPD](https://img.shields.io/badge/Compliance-LGPD%20Ready-blueviolet)](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm)
[![Deploy](https://img.shields.io/badge/Deploy-Vercel-black)](https://observatorio-pi-eight.vercel.app)

---

## 📋 Sobre o Projeto

O **Observatório PI** resolve o problema de fragmentação na entrega de Projetos Integradores. Os PIs eram entregues via Microsoft Teams, dificultando controle de versões, avaliação estruturada e visibilidade do portfólio dos alunos.

### Perfis de Acesso

| Perfil | Funcionalidades |
|---|---|
| **Aluno** | Cadastrar, submeter projetos e adicionar membros do grupo |
| **Professor** | Avaliar projetos com rubrica, feedback e nota |
| **Admin** | Gerenciar usuários, turmas e aprovações |
| **Empresa Parceira** | Visualizar portfólio de projetos aprovados |

### Funcionalidades Principais

- ✅ **Mentor IA integrado** (Groq — LLaMA 3.3 70B) personalizado por perfil
- ✅ Avaliação estruturada com critérios e pontuação
- ✅ Portfólio público filtrável por turma, curso e ano
- ✅ Conformidade com LGPD (consentimento de dados)
- ✅ RLS (Row Level Security) — cada perfil acessa apenas o que lhe pertence

---

## 🔒 LGPD & Privacidade de Dados (Lei Geral de Proteção de Dados)

Por processar dados pessoais de alunos, professores e empresas, a privacidade foi requisito central do projeto, em conformidade com a Lei Federal nº 13.709/2018 (LGPD).

### Padrões Implementados

- **Base Legal (Art. 7º):** A coleta de dados é vinculada ao **consentimento explícito** do usuário no momento do cadastro, registrado na tabela `privacy_consents`.
- **Minimização de Dados:** Apenas dados necessários para as funcionalidades são coletados e armazenados.
- **Direitos do Usuário (Art. 18):** O sistema implementa painel de configurações onde o usuário pode visualizar e atualizar seus dados cadastrais.
- **Segurança (Art. 46):** Senhas são gerenciadas pelo Supabase Auth com hash seguro. O acesso ao banco é protegido por Row Level Security (RLS), impedindo acesso indevido entre perfis.
- **Controle de Acesso (RBAC):** Cada perfil acessa exclusivamente os recursos autorizados para seu papel no sistema.

---

## 🛠 Tecnologias

| Categoria | Ferramenta |
|---|---|
| Framework | Next.js 13.5 (App Router) |
| Linguagem | TypeScript |
| Estilização | Tailwind CSS + Shadcn/UI |
| Banco de Dados | Supabase (PostgreSQL) |
| Autenticação | Supabase Auth |
| IA | Groq API — LLaMA 3.3 70B |
| Deploy | Vercel |
| Gerenciamento | Trello |
| Prototipagem | Figma |

---

## ⚙️ Como Rodar Localmente

### Pré-requisitos

- [Node.js 18+](https://nodejs.org/)
- Conta no [Supabase](https://supabase.com/) com projeto criado
- Chave de API do [Groq](https://console.groq.com/keys)

### 1. Clonar o repositório

```bash
git clone https://github.com/allanydias/ObservatorioPI.git
cd ObservatorioPI
```

### 2. Instalar dependências

```bash
npm install
```

### 3. Configurar variáveis de ambiente

```bash
cp .env.exemplo .env
```

```env
NEXT_PUBLIC_SUPABASE_URL=https://xxxxxxxxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=sua_anon_key_aqui
GROQ_API_KEY=gsk_sua_chave_groq_aqui
```

### 4. Rodar o projeto

```bash
npm run dev
```

Acesse em `http://localhost:3000`

---

## 📊 Principais Rotas da API

| Método | Endpoint | Descrição | Perfil |
|---|---|---|---|
| POST | `/api/chat` | Envia mensagem ao Mentor IA | Todos |
| GET | `/dashboard/projetos` | Lista projetos do usuário | Todos |
| POST | `/dashboard/projetos/novo` | Submete novo projeto | Aluno |
| PUT | `/dashboard/projetos/[id]/editar` | Edita projeto existente | Aluno |
| POST | `/dashboard/avaliacoes` | Registra avaliação com nota | Professor |
| GET | `/dashboard/usuarios` | Gerencia usuários da plataforma | Admin |
| GET | `/dashboard/turmas` | Gerencia turmas | Admin |

---

## 🗄️ Estrutura do Banco de Dados

> 📊 [Ver diagrama ER interativo no dbdiagram.io](https://dbdiagram.io/d/6a2c33f75c789b8acb723a43)

| Tabela | Descrição |
|---|---|
| `profiles` | Dados dos usuários |
| `classes` | Turmas cadastradas |
| `class_professors` | Relação professor ↔ turma |
| `class_students` | Relação aluno ↔ turma |
| `projects` | Projetos submetidos |
| `project_members` | Membros de cada projeto |
| `evaluations` | Avaliações dos professores |
| `evaluation_criteria` | Critérios de avaliação |
| `ai_recommendations` | Recomendações do Mentor IA |
| `privacy_consents` | Consentimentos LGPD |

---

## 📁 Estrutura de Pastas

```
├── app/
│   ├── (auth)/          # Login e cadastro
│   ├── api/chat/        # Rota do Mentor IA (Groq)
│   └── dashboard/       # Área autenticada
│       ├── usuarios/    # Gestão de usuários (admin)
│       ├── projetos/    # Projetos
│       ├── turmas/      # Turmas
│       ├── avaliacoes/  # Avaliações
│       └── chat/        # Mentor IA
├── components/
│   ├── dashboard/
│   ├── projects/
│   └── ui/
├── lib/supabase/        # Cliente e tipos
└── hooks/               # Custom hooks
```

---

## 📈 Melhorias Futuras

Se tivéssemos mais um semestre, implementaríamos:

- **Versionamento de projetos:** histórico completo de alterações com identificação do integrante responsável por cada envio
- **Upload de arquivos:** integração com Supabase Storage para envio de PDFs, DOCX e PPTX
- **Notificações por e-mail:** integração com Resend para alertas automáticos de avaliação
- **Relatórios avançados:** exportação de dados em PDF/CSV pelo administrador
- **App mobile:** versão React Native para acompanhamento dos projetos pelo celular

---

## 🔬 Pesquisa, Tecnologia e Sociedade

### Definição do Problema

Na Faculdade SENAC, os Projetos Integradores eram entregues via Microsoft Teams, causando fragmentação das entregas entre canais e turmas, alunos adicionados em grupos incorretos e ausência de rastreabilidade quando apenas um integrante realizava o envio em nome do grupo.

### Revisão da Literatura

Sistemas de gestão acadêmica existentes (Moodle, Google Classroom, Microsoft Teams) oferecem envio genérico de arquivos, mas carecem de fluxos estruturados de avaliação, portfólios baseados em perfil e mentoria por IA voltada a ambientes de aprendizagem baseados em projetos.

### Metodologia

O projeto seguiu uma abordagem ágil, combinando Engenharia de Requisitos (SRS no padrão IEEE 830), User Story Mapping, priorização MoSCoW e prototipagem iterativa no Figma, com acompanhamento via Trello e versionamento via GitHub.

### Viabilidade

A solução foi construída com ferramentas gratuitas (Supabase plano free, inferência gratuita da Groq, deploy gratuito na Vercel), tornando-a tecnicamente e financeiramente viável para uso acadêmico sem investimento institucional.

### Resultados Esperados

- Centralização do envio e versionamento dos Projetos Integradores
- Processo de avaliação padronizado e rastreável para professores
- Maior visibilidade dos trabalhos via portfólio público
- Redução da sobrecarga administrativa na gestão de turmas e usuários

---

## 🧩 Unidade de Extensão

### Ferramenta Gerencial

O desenvolvimento do projeto foi acompanhado pelo **Trello**, organizado em quadro Kanban com colunas de Backlog, Em andamento (WIP) e Concluído: [Quadro Trello](https://trello.com/b/i1wHTh4G/pi-gestao-de-projetos)

### Integração entre Disciplinas

Este projeto integra conhecimentos de diversas unidades curriculares:

| Unidade Curricular | Contribuição |
|---|---|
| Engenharia de Requisitos | Documentação SRS (IEEE 830), user stories, casos de uso |
| Coding – Linguagens e Técnicas | Implementação das funcionalidades (Next.js, TypeScript) |
| Banco de Dados | Modelagem conceitual/lógica, operações CRUD |
| Criatividade | Prototipagem e melhorias de interface (Figma) |
| Legislação | Conformidade com LGPD e proteção de dados |
| Tech English | README bilíngue e documentação do projeto |

### Espaço para Desenvolvimento do PI

A estrutura inicial do projeto foi criada com auxílio de IA e desenvolvida/revisada de forma iterativa através do GitHub.

---

## 🔗 Links

- 🌐 **Deploy:** https://observatorio-pi-eight.vercel.app
- 📋 **Trello:** https://trello.com/b/i1wHTh4G/pi-gestao-de-projetos
- 🎨 **Figma:** disponível no card 'Figma Guia' no Trello

---

## 👥 Equipe

Desenvolvido pelo **Grupo Observar** — Faculdade SENAC 2026:

| Nome | Papel | GitHub |
|---|---|---|
| Allany Dias | Dev Full Stack & IA | [GitHub](https://github.com/allanydias) |
| Lorena Torres | Dev Backend| [GitHub](https://github.com/lorena-torres07) |
| José Luis | Requisitos | GitHub |
| Mariana Oliveira | UI/UX  | GitHub |
| Mayara Marina | Requisitos & Documentação | GitHub |

*Professor Orientador: Prof. Guibson Barros*
*Professor Tech English: Prof. Leonardo Lucena*

---
