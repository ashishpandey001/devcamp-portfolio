# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end

Rails.logger.debug '3 topics created!'

10.times do |blog|
  Blog.create!(title: "My Blog Post #{blog}", body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac massa ligula. Phasellus eget mattis lorem, ac facilisis erat. Etiam viverra dolor nec molestie sagittis. Suspendisse vitae feugiat ante. Nulla facilisi. Cras pellentesque nunc sit amet purus lobortis, quis fermentum nulla pharetra. Quisque vitae urna id neque mollis tristique. Mauris sed nibh non lorem aliquet convallis sit amet id odio. Aliquam dapibus ultrices orci. Curabitur sed rutrum nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean urna turpis, efficitur id euismod in, sodales nec nibh. Curabitur vel egestas arcu. Donec ut enim eget purus blandit rhoncus. Curabitur ultrices pretium tellus, et efficitur leo vestibulum nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras ornare tellus quis vestibulum efficitur. Cras euismod sem in sagittis placerat. Nulla tincidunt pulvinar sem eu feugiat. Suspendisse tempus at tellus ut ultrices. Cras sed lobortis neque. Aenean et pretium tellus.', topic_id: Topic.last.id)
end

Rails.logger.debug '10 blog posts created!'

5.times do |skill|
  Skill.create!(title: "Rails #{skill}", percent_utilized: 15)
end

Rails.logger.debug '5 skills created!'

8.times do |portfolio_item|
  Portfolio.create!(title: "Portfolio title: #{portfolio_item}", subtitle: 'Ruby on Rails', body: 'Praesent hendrerit orci vitae sollicitudin placerat. Ut egestas, purus at consectetur sagittis, risus massa ullamcorper ligula, quis interdum justo nulla nec eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce aliquet ante vitae magna maximus suscipit. Nulla et diam fringilla, consectetur lectus quis, consequat nulla. In consectetur mi urna, vel rhoncus ante posuere eu. Sed rhoncus mauris ut magna ullamcorper, eget ultricies mauris eleifend. Nullam vel enim pulvinar, cursus mi vitae, malesuada nibh. Curabitur in leo lacinia, dapibus mi sit amet, ultrices eros. Donec quis euismod tortor. Ut vehicula diam eu lacus auctor ultrices. Donec a odio nibh. Aliquam eu ipsum finibus, suscipit dolor id, ultricies lorem.', main_image: 'http://placehold.it/600x400', thumb_image: 'http://placehold.it/350x200')
end

1.times do |portfolio_item|
  Portfolio.create!(title: "Portfolio title: #{portfolio_item}", subtitle: 'Angular', body: 'Praesent hendrerit orci vitae sollicitudin placerat. Ut egestas, purus at consectetur sagittis, risus massa ullamcorper ligula, quis interdum justo nulla nec eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce aliquet ante vitae magna maximus suscipit. Nulla et diam fringilla, consectetur lectus quis, consequat nulla. In consectetur mi urna, vel rhoncus ante posuere eu. Sed rhoncus mauris ut magna ullamcorper, eget ultricies mauris eleifend. Nullam vel enim pulvinar, cursus mi vitae, malesuada nibh. Curabitur in leo lacinia, dapibus mi sit amet, ultrices eros. Donec quis euismod tortor. Ut vehicula diam eu lacus auctor ultrices. Donec a odio nibh. Aliquam eu ipsum finibus, suscipit dolor id, ultricies lorem.', main_image: 'http://placehold.it/600x400', thumb_image: 'http://placehold.it/350x200')
end

Rails.logger.debug '9 portfolio items created!'

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
Rails.logger.debug '3 technologies created!'
