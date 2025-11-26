# Rails To-Do List

Un petit projet ultra simple pour tester Ruby on Rails.

## C'est quoi ?

Juste une to-do list basique pour découvrir Rails et comprendre :
- Le pattern MVC (Model-View-Controller)
- Le système de routes REST
- Les migrations et Active Record
- Les validations
- L'architecture avec un Service Layer

Rien de fou, c'est volontairement minimaliste.

## Stack

- Ruby 3.3
- Rails 8.1
- SQLite

## Lancer le projet

```bash
# Installer les dépendances
bundle install

# Créer la base de données
rails db:migrate

# Lancer le serveur
rails server
```

Puis ouvrir http://localhost:3000

## Structure

```
app/
├── controllers/tasks_controller.rb  # CRUD + toggle
├── models/task.rb                   # Validations
├── services/task_service.rb         # Logique métier
└── views/tasks/                     # Interface
```

## Pourquoi ce projet ?

Premier contact avec Rails. Rien de plus.
