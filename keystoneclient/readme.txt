keystoneclient - Paulo Ewerton

list-federated-projects-from-keystoneauth.patch
(abandoned)
Patch inicial de correção de uma falha que impedia a listagem
de projetos federados. Incluía ainda a inclusão do objeto
AUTH_INTERFACE de keystoneauth em ves de keystoneclient.
Com a release de keystoneauh, o patch precisou ser abandonado.

keystoneclient-report/retrieve-auth-interface-from-keystoneauth.patch
(abandoned)
Patch para recuperar o objeto AUTH_INTERFACE de keystoneauth em
keystoneclient. Foi abandonado porque outra mudança merged cobria a
funcionalidade proposta.

handle-empty-catalog-exception-in-list-federated-projects.patch
(review in progress)
Patch para captura e tratamento da exceção de catálogo vazio
lançada na listagem de projetos federados quando se usa um token
sem escopo.
