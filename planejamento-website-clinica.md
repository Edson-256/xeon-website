# Planejamento Estratégico do Ecossistema Digital
## Clínica de Oncologia Cirúrgica — Abordagem "Ser-Centrada"

---

## 1. Visão Geral e Filosofia

### 1.1 Propósito Central
Transformar a experiência digital da clínica de um modelo **doença-centrado** para um modelo **ser-centrado**, reconhecendo que por trás de cada paciente existe uma pessoa com medos, esperanças e uma rede de apoio que também precisa de cuidado.

### 1.2 Os Três Mestres a Servir

| Público | Necessidade Principal | Métrica de Sucesso |
|---------|----------------------|-------------------|
| **Paciente** | Reduzir ansiedade, clareza sobre próximos passos | Tempo até entendimento do processo |
| **Família/Acompanhante** | Compreender a doença e o tratamento integrado | Redução de ligações com dúvidas básicas |
| **Equipe Clínica** | Otimizar carga de trabalho, padronizar comunicação | Horas economizadas/semana |

### 1.3 Tom e Voz da Marca
- **Profissional** sem ser frio
- **Empático** sem ser piegas
- **Tranquilizador** sem fazer promessas
- **Sóbrio** com toques de humanidade

---

## 2. Compliance Regulatório

### 2.1 CFM — Resolução 2336/2023

#### Obrigatório em Todas as Páginas (Footer)
```
Dr(a). [Nome Completo]
CRM-[UF] [Número] | RQE [Número] - [Especialidade]
[Razão Social da PJ] | CNPJ: XX.XXX.XXX/0001-XX
```

#### Restrições de Conteúdo
| Permitido | Proibido |
|-----------|----------|
| Descrição de procedimentos | "Antes e depois" |
| Explicação de técnicas | Garantias de resultado |
| Depoimentos textuais (com consentimento) | Sensacionalismo |
| Informações educativas | Termos como "o melhor", "único" |
| Menção a equipamentos | Promoções/descontos |

#### Checklist de Auditoria
- [ ] Todas as páginas contêm identificação profissional completa
- [ ] Nenhuma imagem comparativa de resultados
- [ ] Linguagem informativa, não promocional
- [ ] Títulos e especializações verificáveis
- [ ] Conteúdo revisado por profissional habilitado

### 2.2 LGPD — Dados Sensíveis de Saúde

#### Classificação de Dados
| Categoria | Exemplos | Base Legal |
|-----------|----------|------------|
| Identificação | Nome, CPF, telefone | Consentimento |
| Saúde | Diagnósticos, exames, medicações | Tutela da saúde (Art. 11, II, f) |
| Sensíveis | Histórico familiar, condições genéticas | Consentimento específico |

#### Requisitos para Formulários (JotForm)
1. **Política de Privacidade** específica para dados de saúde
2. **Consentimento granular** (checkbox separado para cada finalidade)
3. **Criptografia** em trânsito e repouso
4. **Retenção definida** (prazo + descarte automático)
5. **Direitos do titular** claramente explicados

#### Modelo de Consentimento (Texto Base)
```
Autorizo a coleta e tratamento dos dados de saúde informados neste
formulário para fins exclusivos de:
[ ] Preparação para consulta médica
[ ] Comunicação sobre meu atendimento
[ ] Envio de orientações pós-procedimento

Estou ciente de que posso solicitar acesso, correção ou exclusão
dos meus dados a qualquer momento através do e-mail [privacidade@clinica.com.br].
```

---

## 3. Arquitetura de Informação

### 3.1 Camada Pública — Estrutura de Navegação

```
HOME
├── ENTENDA (Área Educativa)
│   ├── Glossário Humanizado
│   ├── O Que Esperar do Tratamento
│   ├── Guia para Acompanhantes
│   └── Perguntas que Você Pode Ter
│
├── CONHEÇA (Sobre)
│   ├── Nossa Filosofia: Cuidar do Ser
│   ├── Dr(a). [Nome] — Trajetória
│   ├── A Equipe
│   └── Estrutura e Parcerias
│
├── ESPECIALIDADES
│   ├── [Especialidade 1] — Página Centrada no Paciente
│   ├── [Especialidade 2]
│   └── Tratamento Integrado (Parcerias Oncológicas)
│
├── AGENDE
│   ├── Primeira Consulta
│   ├── Retorno
│   └── Prepare-se para sua Consulta
│
└── ÁREA DO PACIENTE (Futuro - Fase 2)
    ├── Minhas Orientações
    ├── Checklist Pós-Operatório
    └── Diário de Sintomas
```

### 3.2 Princípios de Design de Conteúdo

#### Linguagem Centrada no Paciente
| Em vez de... | Use... |
|--------------|--------|
| "Ressecção hepática" | "Cirurgia para remover parte do fígado" |
| "Estadiamento" | "Avaliação da extensão da doença" |
| "Prognóstico reservado" | "Situação que requer atenção especial" |
| "Terapia neoadjuvante" | "Tratamento antes da cirurgia principal" |

#### Estrutura de Páginas de Especialidade
```markdown
# [Nome da Condição em Linguagem Acessível]

## O que você pode estar sentindo
[Validação emocional + sintomas comuns]

## O que isso significa
[Explicação clara, sem jargão]

## Como podemos ajudar
[Abordagem da clínica]

## Perguntas frequentes
[FAQ real, baseado em consultas]

## Próximo passo
[CTA claro: agendar, preparar, entender mais]
```

### 3.3 Guia do Acompanhante — Estrutura

```markdown
# Você está aqui por alguém que ama

## Seu papel é importante
- Por que sua presença faz diferença
- Como equilibrar cuidado e autocuidado

## Entendendo o tratamento
- Linha do tempo típica
- O que acontece em cada fase
- Glossário simplificado

## Na prática
- O que levar para consultas/procedimentos
- Perguntas que você pode fazer
- Sinais de alerta para observar

## Cuidando de você
- Reconhecendo o desgaste emocional
- Recursos de apoio
- Quando pedir ajuda
```

### 3.4 Camada Interna — Wiki da Equipe

#### Estrutura
```
WIKI INTERNA
├── Scripts de Atendimento
│   ├── Primeiro contato telefônico
│   ├── Confirmação de consulta
│   ├── Orientações pré-operatórias
│   └── Manejo de pacientes ansiosos
│
├── Checklists e Protocolos
│   ├── Recepção do paciente
│   ├── Preparo de sala
│   ├── Entrega de documentos
│   └── Fechamento de prontuário
│
├── Templates
│   ├── E-mails padrão
│   ├── Mensagens WhatsApp
│   └── Orientações impressas
│
└── Central de Conteúdo
    ├── Banco de imagens aprovadas
    ├── Textos-base para redes sociais
    └── Calendário editorial
```

---

## 4. Jornada do Paciente — Fluxo Completo

### 4.1 Fase Pré-Cliente (Descoberta)

```
┌─────────────────────────────────────────────────────────────┐
│                    CONSTRUÇÃO DE CONFIANÇA                   │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  [Busca Google] ──► [Site/Instagram] ──► [Conteúdo Educativo]│
│        │                   │                    │            │
│        ▼                   ▼                    ▼            │
│  "Oncologista            Vídeos             Glossário        │
│   cirúrgico SP"          humanizados        acessível        │
│                                                              │
│                    ──► [Decisão de Contato] ◄──              │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

#### Elementos de Confiança
- **Glossário Humanizado**: Termos médicos explicados com empatia
- **Assistente de Orientação**: FAQ interativo (MVP: página estática; Futuro: chatbot)
- **Conteúdo do Instagram**: Integração com vídeos já existentes
- **Validação Social**: Depoimentos textuais (com consentimento documentado)

### 4.2 Fase Pré-Consulta (Preparação)

#### Fluxo de Formulários JotForm

```
┌─────────────────────────────────────────────────────────────┐
│                   TRIAGEM DIGITAL COMPLETA                   │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  FORMULÁRIO 1: Triagem Inicial                               │
│  ├── Dados de identificação                                  │
│  ├── Motivo da consulta (múltipla escolha + texto livre)    │
│  ├── Urgência percebida                                      │
│  └── Preferência de contato                                  │
│                                                              │
│  FORMULÁRIO 2: Histórico de Saúde (PMH)                     │
│  ├── Condições pré-existentes (checkbox inteligente)        │
│  ├── Cirurgias anteriores                                    │
│  ├── Alergias conhecidas                                     │
│  └── Histórico familiar oncológico                          │
│                                                              │
│  FORMULÁRIO 3: Medicações em Uso                            │
│  ├── Lista de medicamentos (nome + dose + frequência)       │
│  ├── Suplementos e fitoterápicos                            │
│  └── Upload de receitas (opcional)                          │
│                                                              │
│  FORMULÁRIO 4: Exames e Laudos                              │
│  ├── Upload de exames recentes                               │
│  ├── Biópsia (se houver)                                     │
│  └── Imagens (TC, RNM, PET-CT)                              │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

#### Automação n8n — Fluxo de Processamento

```
┌──────────┐    ┌──────────┐    ┌──────────────────────────────┐
│  JotForm │───►│   n8n    │───►│  OUTPUTS                     │
│  Submit  │    │  Webhook │    │                              │
└──────────┘    └──────────┘    │  1. Resumo para Equipe       │
                                │     (PDF/E-mail estruturado)  │
                                │                              │
                                │  2. Confirmação ao Paciente   │
                                │     (E-mail + WhatsApp)       │
                                │                              │
                                │  3. Alerta de Urgência        │
                                │     (Se critérios atendidos)  │
                                │                              │
                                │  4. Pasta do Paciente         │
                                │     (Google Drive organizado) │
                                └──────────────────────────────┘
```

#### Página "Prepare-se para sua Consulta"

```markdown
# O que trazer para sua primeira consulta

## Documentos essenciais
- [ ] Documento de identidade com foto
- [ ] Cartão do convênio (se aplicável)
- [ ] Pedido médico/encaminhamento

## Seu histórico
- [ ] Lista de medicamentos atuais (nome, dose, horário)
- [ ] Exames recentes (últimos 6 meses)
- [ ] Laudos de biópsia (se houver)
- [ ] Imagens (TC, RNM, PET-CT) — CD ou acesso online

## Para aproveitar melhor o tempo
- [ ] Anote suas dúvidas principais
- [ ] Traga um acompanhante se desejar
- [ ] Chegue 15 minutos antes

## Facilite seu preparo
[BOTÃO: Preencher formulários online]
Tempo estimado: 10-15 minutos
Você pode salvar e continuar depois
```

### 4.3 Fase Pós-Consulta (Orientação)

#### Estrutura de Guias Pós-Procedimento

```markdown
# Orientações após [Nome do Procedimento]

## Nas primeiras 24 horas
- O que é normal sentir
- Cuidados com curativo/dreno
- Alimentação permitida
- Medicações prescritas

## Na primeira semana
- Evolução esperada dia a dia
- Atividades permitidas e restritas
- Sinais de boa recuperação

## Sinais de Alerta — Procure atendimento se:
- Febre acima de 38°C
- Sangramento ativo
- Dor não controlada com medicação
- [Específicos do procedimento]

## Contatos
- Dúvidas administrativas: [telefone/WhatsApp] — Seg-Sex 8h-18h
- Urgências clínicas: [telefone 24h]
- Emergência: Pronto-Socorro [Hospital Parceiro]

## Seu retorno
Data agendada: [a definir na consulta]
Local: [endereço]
```

#### Sistema de Pastas Semi-Personalizadas

| Tipo de Procedimento | Conteúdo da Pasta |
|---------------------|-------------------|
| Cirurgia de Mama | Orientações gerais + específicas mama + fisioterapia + suporte psicológico |
| Cirurgia Colorretal | Orientações gerais + cuidados com estomia (se aplicável) + nutrição |
| Cirurgia Hepática | Orientações gerais + restrições alimentares + sinais específicos |

### 4.4 Fase Follow-up (Relacionamento Longitudinal)

#### Ferramentas de Acompanhamento

**MVP — Diário de Sintomas (Formulário)**
```
Data: [____]
Como você está se sentindo hoje? [1-5 escala visual]

Sintomas presentes:
[ ] Dor (local: ___, intensidade: 1-10)
[ ] Náusea
[ ] Febre
[ ] Cansaço
[ ] Outro: ___

Observações:
[Campo de texto livre]

[ENVIAR]
```

**Regras de Comunicação — Canais Definidos**

| Tipo de Demanda | Canal | Tempo de Resposta |
|-----------------|-------|-------------------|
| Dúvidas administrativas | WhatsApp/Telefone comercial | Até 4h úteis |
| Solicitação de exames/laudos | E-mail | Até 24h úteis |
| Sintomas novos (não urgentes) | Formulário site | Até 24h úteis |
| Urgências clínicas | Telefone 24h | Imediato |
| Emergências | Pronto-Socorro | — |

---

## 5. Roadmap de Implementação

### 5.1 Fase 1 — MVP Essencial (Meses 1-3)

#### Entregáveis

| Página/Recurso | Prioridade | Complexidade |
|----------------|------------|--------------|
| Home com 3 caminhos | P0 | Média |
| Página "Sobre" compliant | P0 | Baixa |
| 2-3 páginas de especialidade | P0 | Média |
| Página "Prepare-se para Consulta" | P0 | Baixa |
| Formulário de triagem (JotForm) | P0 | Média |
| Formulário PMH | P1 | Média |
| Glossário humanizado (10-15 termos) | P1 | Baixa |
| Footer compliant em todas as páginas | P0 | Baixa |
| Política de Privacidade LGPD | P0 | Média |
| Integração Instagram Feed | P2 | Baixa |

#### Stack Tecnológico Sugerido
- **Site**: WordPress + Elementor ou Webflow
- **Formulários**: JotForm (HIPAA compliant disponível)
- **Automação**: n8n (self-hosted ou cloud)
- **Armazenamento**: Google Drive com estrutura de pastas

#### Métricas de Sucesso MVP
- [ ] 100% das páginas com identificação CFM
- [ ] Formulário de triagem preenchido por 50% dos novos pacientes
- [ ] Redução de 20% em ligações para dúvidas básicas

### 5.2 Fase 2 — Portal do Paciente (Meses 4-6)

#### Entregáveis

| Recurso | Descrição | Dependência |
|---------|-----------|-------------|
| Autenticação simples | Login por e-mail/código | Fase 1 completa |
| Área logada do paciente | Dashboard pessoal | Autenticação |
| Checklists pós-op digitais | Progresso visual | Área logada |
| Acesso a orientações personalizadas | Filtro por procedimento | Área logada |
| Wiki interna (equipe) | Notion ou similar | — |
| Guia do Acompanhante completo | Conteúdo expandido | Fase 1 |

#### Funcionalidades do Portal

```
┌─────────────────────────────────────────────────────────────┐
│                    PORTAL DO PACIENTE                        │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  Olá, [Nome]                                                 │
│                                                              │
│  Seu Checklist de Recuperação                               │
│  ████████░░░░ 65% completo                                  │
│                                                              │
│  ✅ Repouso nas primeiras 48h                               │
│  ✅ Medicações conforme prescrição                          │
│  ⬜ Retorno ao consultório (agendado: DD/MM)                │
│  ⬜ Exame de controle                                        │
│                                                              │
│  Suas Orientações                                           │
│  └── Cuidados pós-[Procedimento] (PDF)                      │
│  └── Alimentação recomendada                                 │
│  └── Sinais de alerta                                        │
│                                                              │
│  Registrar como estou hoje                                  │
│  [Abrir diário de sintomas]                                  │
│                                                              │
│  Preciso de ajuda                                            │
│  └── Dúvida administrativa                                   │
│  └── Sintoma ou preocupação                                  │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

#### Métricas de Sucesso Fase 2
- [ ] 40% dos pacientes pós-op acessam o portal
- [ ] 60% completam o checklist de recuperação
- [ ] Redução de 30% em ligações pós-operatórias

### 5.3 Fase 3 — Expansão Multimídia (Meses 7-9)

#### Entregáveis

| Recurso | Descrição |
|---------|-----------|
| Biblioteca de vídeos | Migração do conteúdo Instagram + novos |
| Seção "Novidades em Oncologia" | Curadoria de avanços (IA, Biópsia Líquida, etc.) |
| Transcrição de vídeos | Acessibilidade + SEO |
| FAQ em vídeo | Respostas às perguntas mais comuns |
| Integração completa Instagram/YouTube | Feed unificado |

#### Estrutura da Videoteca

```
VIDEOTECA
├── Entendendo sua Condição
│   ├── O que é câncer? (Visão geral)
│   ├── [Condição específica 1]
│   └── [Condição específica 2]
│
├── Procedimentos Explicados
│   ├── Como funciona uma cirurgia oncológica
│   ├── O que esperar no dia da cirurgia
│   └── Recuperação: o que é normal
│
├── Novidades e Avanços
│   ├── Inteligência Artificial na Oncologia
│   ├── Biópsia Líquida: o futuro do diagnóstico
│   └── Cirurgia minimamente invasiva
│
└── Perguntas Frequentes
    ├── "Vou sentir dor?"
    ├── "Quanto tempo de internação?"
    └── "Posso ter vida normal depois?"
```

#### Métricas de Sucesso Fase 3
- [ ] 50 vídeos catalogados e transcritos
- [ ] Tempo médio de permanência no site +40%
- [ ] Compartilhamentos de conteúdo educativo

### 5.4 Fase 4 — Maturidade e Governança (Meses 10-12)

#### Entregáveis

| Recurso | Descrição |
|---------|-----------|
| Governança editorial | Processo de aprovação de conteúdo |
| Versionamento de protocolos | Controle de mudanças em orientações |
| Dashboard de métricas | Visualização de KPIs |
| Auditoria CFM automatizada | Checklist automático em novas páginas |
| Feedback loop estruturado | Coleta sistemática de sugestões |

#### Modelo de Governança

```
┌─────────────────────────────────────────────────────────────┐
│              CICLO DE GESTÃO DE CONTEÚDO                    │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  1. CRIAÇÃO                                                  │
│     └── Redator/Equipe propõe conteúdo                      │
│                                                              │
│  2. REVISÃO TÉCNICA                                          │
│     └── Médico responsável valida informações               │
│                                                              │
│  3. REVISÃO COMPLIANCE                                       │
│     └── Checklist CFM + LGPD                                │
│                                                              │
│  4. PUBLICAÇÃO                                               │
│     └── Versionamento + data de validade                    │
│                                                              │
│  5. MONITORAMENTO                                            │
│     └── Métricas + feedback + atualização periódica         │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

#### Métricas de Maturidade

| Indicador | Meta | Medição |
|-----------|------|---------|
| Redução de carga administrativa | -40% horas/semana | Timesheet equipe |
| Pacientes preparados na 1ª consulta | 80% | Formulários preenchidos |
| Satisfação do paciente digital | NPS > 60 | Pesquisa pós-atendimento |
| Conformidade CFM | 100% | Auditoria trimestral |
| Tempo de resposta a dúvidas | < 4h úteis | Sistema de tickets |

---

## 6. Considerações de Implementação

### 6.1 Integrações Técnicas

```
┌─────────────────────────────────────────────────────────────┐
│                   ARQUITETURA DE INTEGRAÇÃO                  │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌──────────┐                                                │
│  │   SITE   │◄──────────────────────────────────────┐       │
│  │ (WP/WF)  │                                       │       │
│  └────┬─────┘                                       │       │
│       │                                              │       │
│       ▼                                              │       │
│  ┌──────────┐    ┌──────────┐    ┌──────────┐      │       │
│  │  JotForm │───►│   n8n    │───►│  Google  │      │       │
│  │          │    │          │    │  Drive   │      │       │
│  └──────────┘    └────┬─────┘    └──────────┘      │       │
│                       │                             │       │
│                       ▼                             │       │
│               ┌──────────────┐                      │       │
│               │   WhatsApp   │                      │       │
│               │   Business   │                      │       │
│               └──────────────┘                      │       │
│                                                              │
│  ┌──────────┐    ┌──────────┐                               │
│  │Instagram │───►│  Embed   │───────────────────────┘       │
│  │  /YouTube│    │  no Site │                               │
│  └──────────┘    └──────────┘                               │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### 6.2 Segurança e Privacidade

| Camada | Medida | Implementação |
|--------|--------|---------------|
| Transmissão | HTTPS obrigatório | Certificado SSL |
| Formulários | Criptografia em repouso | JotForm HIPAA |
| Armazenamento | Acesso restrito | Google Drive com permissões |
| Autenticação (Fase 2) | 2FA opcional | Auth0 ou similar |
| Logs | Auditoria de acesso | Registro de ações |

### 6.3 Acessibilidade (WCAG 2.1 AA)

- [ ] Contraste mínimo 4.5:1
- [ ] Textos alternativos em imagens
- [ ] Navegação por teclado
- [ ] Transcrições de vídeos
- [ ] Fonte ajustável
- [ ] Linguagem clara (nível de leitura 8ª série)

---

## 7. Benchmarks e Diferenciação

### 7.1 Inspirações (Não Cópia)

| Referência | O que absorver | Diferencial nosso |
|------------|----------------|-------------------|
| Oncoclínicas | Profissionalismo, estrutura | Proximidade, humanização |
| Mayo Clinic | Conteúdo educativo robusto | Linguagem brasileira acessível |
| Clínicas boutique | Experiência premium | Foco no ser, não no luxo |

### 7.2 Posicionamento Único

```
"Não tratamos doenças. Cuidamos de pessoas
que estão enfrentando um momento difícil —
e de todos que caminham ao seu lado."
```

### 7.3 Elementos de Identidade

- **Visual**: Cores sóbrias, não hospitalares; imagens de pessoas reais (com consentimento), não bancos de imagem
- **Tom**: Direto sem ser frio, acolhedor sem ser piegas
- **Foco**: A jornada humana, não apenas o procedimento técnico
- **Diferencial**: Guia do Acompanhante como elemento central

---

## 8. Próximos Passos Imediatos

### Ações para Início do MVP

1. **Definir stack tecnológico** (WordPress/Webflow + JotForm + n8n)
2. **Mapear conteúdo existente** (Instagram, materiais impressos)
3. **Criar wireframes** das 5 páginas principais
4. **Configurar JotForm** com formulário de triagem
5. **Redigir textos-base** (Home, Sobre, 1 especialidade)
6. **Validar compliance** (revisão CFM/LGPD por assessoria)
7. **Definir métricas baseline** (ligações atuais, tempo de preparo)

### Responsabilidades Sugeridas

| Papel | Responsabilidade |
|-------|-----------------|
| Médico(a) Titular | Validação técnica, tom de voz |
| Equipe Administrativa | Inputs operacionais, teste de fluxos |
| Desenvolvedor/Agência | Implementação técnica |
| Assessoria Jurídica | Compliance LGPD |
| Consultoria CFM | Validação regulatória |

---

## 9. Anexos

### A. Modelo de Checklist de Auditoria CFM

```markdown
## Auditoria de Página — CFM 2336/2023

Página: _______________
Data: ___/___/______
Revisor: _______________

### Identificação Profissional
- [ ] Nome completo do médico presente
- [ ] CRM com número e UF
- [ ] RQE com número e especialidade
- [ ] Dados da pessoa jurídica (se aplicável)

### Conteúdo
- [ ] Sem imagens "antes e depois"
- [ ] Sem garantias de resultado
- [ ] Sem superlativos ("melhor", "único", "mais avançado")
- [ ] Sem menção a preços/promoções
- [ ] Linguagem informativa, não promocional
- [ ] Depoimentos com consentimento documentado

### Resultado
- [ ] APROVADO
- [ ] REQUER AJUSTES (listar abaixo)

Ajustes necessários:
_________________________________
```

### B. Template de Consentimento LGPD

```markdown
## Termo de Consentimento para Tratamento de Dados de Saúde

Eu, _________________________, CPF ___.___.___-__,
declaro que:

1. Fui informado(a) sobre a coleta dos seguintes dados:
   - Dados de identificação (nome, contato, documentos)
   - Dados de saúde (histórico médico, medicações, exames)

2. Compreendo que esses dados serão utilizados para:
   - [ ] Preparação e realização de atendimento médico
   - [ ] Envio de orientações relacionadas ao meu tratamento
   - [ ] Comunicação administrativa sobre consultas/procedimentos

3. Estou ciente de meus direitos:
   - Solicitar acesso aos meus dados
   - Solicitar correção de dados incorretos
   - Solicitar exclusão dos dados (quando aplicável)
   - Revogar este consentimento a qualquer momento

4. Contato do Encarregado de Dados (DPO):
   E-mail: privacidade@[clinica].com.br

Data: ___/___/______

Assinatura: _________________________
```

---

*Documento elaborado para fins de planejamento estratégico. Recomenda-se validação jurídica específica antes da implementação, especialmente nas questões relacionadas a compliance CFM e LGPD.*
