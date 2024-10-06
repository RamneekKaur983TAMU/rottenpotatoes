# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G', release_date: '16-Apr-1988' },
  { title: 'Green Book', rating: 'PG-13', release_date: '16-Nov-2018' },
  { title: 'Parasite', rating: 'R', release_date: '30-May-2019' },
  { title: 'Nomadland', rating: 'R', release_date: '19-Feb-2021' },
  { title: 'CODA', rating: 'PG-13', release_date: '13-Aug-2021' },
  { title: 'Dora The Explorer', rating: 'PG-13', release_date: '15-Aug-2021' },
  { title: 'The Lion King', rating: 'PG-13', release_date: '17-Aug-2021' },
  { title: 'Snake Part 2', rating: 'PG-13', release_date: '10-Aug-2022' },
  { title: 'Balloons', rating: 'PG-13', release_date: '13-Sept-2021' },
  { title: 'Hats', rating: 'PG-13', release_date: '13-Sept-2021' },
  { title: 'Cups', rating: 'PG-13', release_date: '13-Sept-2021' },
  { title: 'Plates', rating: 'PG-13', release_date: '13-Sept-2021' }
]

# Use find_or_create_by to avoid duplicates
more_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end
