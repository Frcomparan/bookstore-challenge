# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# Limpiar la base de datos
BookCategory.destroy_all
LoanBook.destroy_all
Book.destroy_all
Category.destroy_all
User.destroy_all

# Crear categorías
Category.create!([
  { name: 'Ficción Histórica', description: 'Libros que combinan hechos históricos con elementos de ficción, transportando a los lectores a épocas pasadas a través de narrativas imaginativas.' },
  { name: 'Ciencia Ficción', description: 'Explora mundos futuristas, tecnologías avanzadas y conceptos científicos especulativos, llevando a los lectores a viajes emocionantes en el tiempo y el espacio.' },
  { name: 'Misterio y Suspense', description: 'Historias llenas de intriga, suspenso y resolución de enigmas, manteniendo a los lectores en vilo hasta el final.' },
  { name: 'Fantasía Épica', description: 'Aventuras en mundos imaginarios, con héroes, criaturas mágicas y batallas épicas que conforman una narrativa extensa y detallada.' },
  { name: 'Autoayuda y Desarrollo Personal', description: 'Libros diseñados para inspirar, motivar y proporcionar consejos prácticos para el crecimiento personal y el bienestar emocional.' },
  { name: 'Novela Romántica', description: 'Historias centradas en el amor y las relaciones, explorando emociones y desafíos en tramas románticas y conmovedoras.' },
  { name: 'Ciencia Popular', description: 'Libros que explican conceptos científicos de manera accesible para el público en general, haciendo que la ciencia sea fascinante y comprensible.' },
  { name: 'Poesía Contemporánea', description: 'Colecciones de poemas que reflejan las experiencias y emociones actuales, utilizando formas líricas modernas y expresivas.' },
  { name: 'No Ficción Histórica', description: 'Explora eventos históricos reales, proporcionando una visión detallada y precisa de épocas pasadas a través de investigaciones y relatos documentados.' },
  { name: 'Novela Negra', description: 'Historias de crimen y detectives, con tramas intrigantes y personajes complejos, sumergiendo a los lectores en el lado oscuro de la sociedad.' },
])

# Crear usuarios
# Crear usuarios
User.create!([
  { name: 'John Doe', email: 'john.doe@example.com' },
  { name: 'Jane Doe', email: 'jane.doe@example.com' },
  { name: 'Alice Smith', email: 'alice.smith@example.com' },
  { name: 'Bob Johnson', email: 'bob.johnson@example.com' },
  { name: 'Eva Davis', email: 'eva.davis@example.com' },
  { name: 'Michael Brown', email: 'michael.brown@example.com' },
  { name: 'Olivia Taylor', email: 'olivia.taylor@example.com' },
  { name: 'David Miller', email: 'david.miller@example.com' },
  { name: 'Sophia Wilson', email: 'sophia.wilson@example.com' },
  { name: 'Matthew Anderson', email: 'matthew.anderson@example.com' },
  { name: 'Emma Garcia', email: 'emma.garcia@example.com' },
  { name: 'Daniel Martinez', email: 'daniel.martinez@example.com' },
])

