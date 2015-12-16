Horizon Patches - Paulo Ewerton

angularize-identity-projects-panel.patch
(abandoned)
Patch que incluía todo o código da primeira tentativa de
reimplementar o painel de projetos do dashboard Identity
em AngularJS. A mudança foi abandonada porque foi necessário
quebrar o patch em vários outros menores e também devido
a mudanças ocorridas na arquitetura de Horizon e no padrão
de implementação de novos paineis como plugins.

fix-function-name-reference-in-cinder-service-spec-js.patch
(merged)
Patch para corrigir uma referência ao nome do serviço
Cinder na geração do relatório de testes do Jasmine.

adding-angular-identity-projects-panel.patch
(merged)
Plugando a parte AngularJS do painel de projetos ao dashboard
Identity.

fix-eslint-errors-for-hz-dashboard-identity.patch
(merged)
Limpando erros da ferramenta de linting para o dashboard AngularJS
Identity.

fix-paginate-admin-get-parameters-in-keystone-api.patch
(merged)
Consertando coerção de tipos em parâmetros GET da requisição de
criar projetos na API Keystone REST de Horizon.

eslint-cleanup-for-openstack-service-api.patch
(abandoned)
Ajustando o código dos serviços AngularJS clientes da API REST
de Horizon ao guia de estilo JavaScript/AngujarJS. O patch foi
abandonado em virtude de uma outra mudança que foi merged e
cobria a mesma funcionalidade.

moving-translation-to-html-for-launch-instance-keypair-step.patch
(merged)
Transferindo o texto de tradução presente em componentes AngularJS
para HTML puro em virtude da inclusão do filtro Angular Translate em
Horizon. A mudança cobriu o passo 'Par de Chaves' do assistente de
criação de novas instâncias, implementado em AngularJS.

hz-page-header-should-allow-string-interpolations.patch
(merged)
Corrigindo a diretiva AngularJS para cabeçalhos de página para
permitir o uso de interpolações de strings no texto.

adding-identity-ngprojects-api.patch
(review in progress)
Incluindo, em Horizon, APIs REST e respectivos serviços clientes
AngularJS para operações com projetos para o painel AngularJS
no dashboard Identity.

adding-identity-ngprojects-panel.patch
(review in progress)
Registrando o novo painel de projetos AngularJS como plugin em Horizon,
mais a implementação da view principal incluindo a tabela de projetos.

adding-identity-ngprojects-create-actions-details.patch
(review in progress)
Criando o botão que aciona o assitente AngularJS para criação de um
novo projeto. Foi incluindo todo o código da parte comum de um workflow
de criação de projetos, mais o passo 'Detalhes do Projeto'.

adding-identity-ngprojects-create-action-members.patch
(review in progress)
Adicionando o passo 'Membros do Projeto' ao novo assistente AngularJS
para criação de projetos. Inclui a alocação de usuários e inclusão de
papeis.

adding-identity-ngprojects-create-action-quota.patch
(review in progress)
Adicionando o passo 'Quota' ao novo assistente AngularJS para criação
de projetos.

adding-tests-for-ngidentity-basepatch-constant.patch
(review in progress)
Patch para melhorar a cobertura de testes do dashboard Identity,
implementado em AngularJS .

adding-hz-if-neutron-extensions-directive.patch
(review in progress)
Implementando diretiva AngularJS para exibir ou não conteúdo numa view
baseado no status de ativação de uma dada extensão do Neutron.
