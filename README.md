# Chitter Challenge

## Setup

### Create Database and Tables - DEVELOPMENT

Database
1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE chitter_manager;`
3. Connect to the database using the `psql` command `\c chitter_manager;`

Tables
1. For the users table run the query I have saved in the file `01_create_users_table.sql`
2. For the chit table run the query I have saved in the file `02_create_chit_table.sql`
---
### Create Database and Tables - TEST

Database
1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE chitter_manager_test;`
3. Connect to the database using the `psql` command `\c chitter_manager_test;`

Tables
1. For the users table run the query I have saved in the file `01_create_users_table.sql`
2. For the chit table run the query I have saved in the file `02_create_chit_table.sql`

### User Stories

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```