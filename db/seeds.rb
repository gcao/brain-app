# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hdap_ui_project = Project.create!(
  name: 'HDAP UI',
  description: 'Admin UI of HDAP',
  codebase: 'github:Vocalocity/adminv2',
)

cao = Person.create!(
  first_name: 'Guoliang',
  last_name: 'Cao',
  job_title: 'Software Developer',
  username: 'gcao',
  email: 'Guoliang.Cao@vonage.com',
  phone_no: '732-333-4444',
  hipchat_account: '',
)

Team.create!(
  name: 'HDAP UI',
  description: '',
  email_alias: 'HDAP_UI@vonage.com',
  tech_lead: cao,
  projects: [ hdap_ui_project ],
)

Environment.create!(
  name: 'badger',
  description: '',
  hdap_domain: 'my.badger.vocal-dev.com',
  hdap_server: 'hdap-int.badger.vocal-dev.com',
  role: 'DEV',
)

Environment.create!(
  name: 'qa8',
  description: '',
  hdap_domain: 'my.qa8.vocal-qa.com',
  hdap_server: 'qa8oqui1.qa8.vocal-qa.com',
  postgres_server: 'qa8oqmdb1.qa8.vocal-qa.com',
  role: 'QA',
)

Environment.create!(
  name: 'qa6',
  description: '',
  hdap_domain: 'my.vocal-qa.com',
  hdap_server: 'qa6oqui1.qa6.vocal-qa.com',
  postgres_server: 'qa6oqmdb1.qa6.vocal-qa.com',
  role: 'QA',
)

