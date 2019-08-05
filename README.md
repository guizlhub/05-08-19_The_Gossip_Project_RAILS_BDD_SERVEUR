Application The gossip project a.k.a "TGP" pour les intimes

pour lancer l'appication,
  télécharger le dossier rails:
  https://github.com/SengSerany/appli_the_gossip_project.git
  
  puis sur le terminal:
    - bundle install
    - rails db:migrate
    - rails serveur
    
  Puis sur un navigateur internet:
     http://localhost:3000/
     
   Exercice Jour 20:
    - 2.2 / 
              1 - Génerer le controller nommer "static_pages" et la view "team"
              2 - Créé depuis le logiciel de texte un fichier view 'contact' et le placer dans : 'app/views/static_pages'
              3 - Faire le lien dans config/routes.rb avec les views de 'contact et 'team': 
                     - get 'static_pages/team'
                     - get 'static_pages/contact'
                     
   - 2.3.1 / 
              1 - Aller sur la page: 'https://getbootstrap.com/docs/4.1/getting-started/introduction/'
              2 - Prendre le premier lien de la page
              3 - Ajouter le lien Bootstrap dans le fichier dans le <head> </head> 'app/views/layout/application.html.erb'
          
   - 2.3.2 /
              1 - Choisir une barre de navigation sur la page: https://getbootstrap.com/docs/4.0/components/navbar/
              2 - L'integrer dans le fichier view: 'app/views/layout/application.html.erb'
              3 - Bien échanger les liens dans la navbar les liens comme 'feature' ou 'pricing' par 'Team' et Contact'
                pour faire plus tard le lien avec.
   - 2.3.3 /
              1 - Dans le fichier: 'app/views/layout/application.html.erb',
                    - Dans les liens <a href=#> Lien </a>; et mettre le lien ici du type:
                    '<%= link_to "Home", index_path %> '
                  Signifiant:
                    <% %> : signifiant que ce qui est entre ses balises est du language ruby
                    <%= %> : signifiant que ce qui est entre ses balises est du language ruby 
                             et qu'il faut l'afficher dans le navigateur
                    link_to "Texte_a_cliquer_pour_acceder_au_lien", "nom_du_chemin_accedant_a_la_page_desiré"_path
                  
   - 2.4 /
              1 - Pour creer une page dynamique: j'ai créer un nouveau controller nommée 'welcome' avec sa view 'show'
              2 - Dans le ficher 'config/routes.rb' je créé un lien vers le controleur et la view :
                get 'welcome/:id', to:'welcome#show', as: 'welcome'
              ':id' étant la variable dans l'URL, 'welcome' est le nom que j'ai établi pour le chemin vers le controller:view
              3 - Dans la view 'show', j'affiche le nom: '<%= @gossips[((params[:id]).to_i - 1)].title %>'
  
   - 2.5 /
              1 - Créé le fichier 'get '/', to: 'welcome#index', as: 'index' qui sera ma "Homepage"
              2 - Dans le fichier 'config/routes.rb' je designe 'index' comme "Homepage":
                get '/', to: 'welcome#index', as: 'index'
              3 - Je lie ma table User qui est dans BDD avec '@Gossip = gossip.all' dans la méthode index dans le fichier:
                'app/controllers/welcome.rb'
              4 - j'affiche chaque gossip, son auteur et son titre:
                  ' <% n = 1 %>
                    <p><% @gossips.each do |gossip|%>	
                    <% @id = n %>
                    <a <%= link_to "Gossip n°#{n}", welcome_path(@id) %> </a>
                    <a <%= link_to "De #{gossip.user.first_name}: #{gossip[:title]}", welcome_path(@id) %> </a> '
'
                    
                    
                    
