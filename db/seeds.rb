# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
MovieSet.destroy_all
User.destroy_all


u1 = User.create(first_name: "Piper", last_name: "Chapman", email: "piper@chapman.com", password: "testtest")

ms1 = MovieSet.new(title: "Authentic prison cell", description: "Get the best of America worst prison", media_name: "Orange is the new black", address: "Guantanamo Bay Naval Base, Cuba", price_per_day: 0, user_id: u1.id)
prison_1 = URI.open("https://images.unsplash.com/photo-1519738770393-98f215a6a826?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2203&q=80")
ms1.photos.attach(io: prison_1, filename: 'prison-1.jpg', content_type: 'image/jpg')
prison_2 = URI.open("https://images.unsplash.com/photo-1543536833-6d65fcc64f66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
ms1.photos.attach(io: prison_2, filename: 'prison-2.jpg', content_type: 'image/jpg')
prison_3 = URI.open("https://d10frqznkjv786.cloudfront.net/2018/08/02/535500/205427/prison_cell_3d_model_c4d_max_obj_fbx_ma_lwo_3ds_3dm_stl_2167791_o.jpg")
ms1.photos.attach(io: prison_3, filename: 'prison-3.jpg', content_type: 'image/jpg')
ms1.save

u2 = User.create(first_name: "Rachel", last_name: "Greene", email: "rachel@greene.com", password: "testtest")

ms2 = MovieSet.new(title: "Friends flat", description: "You'll get much more than just a flat", media_name: "Friends", address: "90 Bedford St, New York, NY 10014, États-Unis", price_per_day: 500, user_id: u2.id)
friends_1 = URI.open("https://peopledotcom.files.wordpress.com/2019/06/armchair-e1441355105548.jpg")
ms2.photos.attach(io: friends_1, filename: 'friends-1.jpg', content_type: 'image/jpg')
friends_2 = URI.open("https://live.staticflickr.com/1428/5112096481_b7166a86bb_b.jpg")
ms2.photos.attach(io: friends_2, filename: 'friends-2.jpg', content_type: 'image/jpg')
friends_3 = URI.open("https://i.pinimg.com/originals/31/33/6b/31336b054c49b994f5c775cc44ff23d8.jpg")
ms2.photos.attach(io: friends_3, filename: 'friends-3.jpg', content_type: 'image/jpg')
ms2.save

u3 = User.create(first_name: "Jon", last_name: "Snow", email: "jon@snow.com", password: "testtest")

ms3 = MovieSet.new(title: "Game of Thrones Kingdom", description: "Be the king you've always wanted to be", media_name: "Game of Thrones", address: "Dubrovnik, Croatia", price_per_day: 3000, user_id: u3.id)
got_1 = URI.open("https://static.boredpanda.com/blog/wp-content/uploads/2015/06/game-of-thrones-real-life-locations-4__880.jpg")
ms3.photos.attach(io: got_1, filename: 'got-1.jpg', content_type: 'image/jpg')
got_2 = URI.open("https://static.boredpanda.com/blog/wp-content/uploads/2015/06/game-of-thrones-real-life-locations-25__880.jpg")
ms3.photos.attach(io: got_2, filename: 'got-2.jpg', content_type: 'image/jpg')
got_3 = URI.open("https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Croatia/Dubrovnik/dubrovnik-city-walls-lead-guide.jpg?imwidth=1400")
ms3.photos.attach(io: got_3, filename: 'got-3.jpg', content_type: 'image/jpg')
ms3.save

u4 = User.create(first_name: "Jack", last_name: "Dawson", email: "jack@dawson.com", password: "testtest")

ms4 = MovieSet.new(title: "Wet cabin on an historic boat", description: "Try to escape quicker than everyone else to stay alive!", media_name: "Titanic", address: "Southampton", price_per_day: 1000, user_id: u4.id)
titanic_1 = URI.open("https://images.squarespace-cdn.com/content/v1/5006453fe4b09ef2252ba068/1351507897498-5NR30EWR0THJADWKRNWD/ke17ZwdGBToddI8pDm48kJeJHJwC6a6EsSJOBBjFhV9Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzDyK0yyeJKIY_i0u68MjTVXsF0JxhrS6Mqua5wjwegnaK2LCQsTlqKP_tB0-z4t8c/first+class+cabin.jpg")
ms4.photos.attach(io: titanic_1, filename: 'titanic-1.jpg', content_type: 'image/jpg')
titanic_2 = URI.open("https://images.unsplash.com/photo-1420496401585-7f22ce8b8b8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
ms4.photos.attach(io: titanic_2, filename: 'titanic-2.jpg', content_type: 'image/jpg')
titanic_3 = URI.open("https://i.dailymail.co.uk/i/pix/2012/04/11/article-2128270-128CE485000005DC-44_966x635.jpg")
ms4.photos.attach(io: titanic_3, filename: 'titanic-3.jpg', content_type: 'image/jpg')
ms4.save

u5 = User.create(first_name: "Amélie", last_name: "Poulain", email: "amelie@poulain.com", password: "testtest")

ms5 = MovieSet.new(title: "Romantic parisian set", description: "Be a classy parisian for one day or more...", media_name: "Le fabuleux destin d'Amélie Poulain", address: "Montmartre, Paris", price_per_day: 400, user_id: u5.id)
ap_1 = URI.open("http://www.movie-locations.com/movies/a/Amelie-Cafe-Des-Deux-Moulins.jpg")
ms5.photos.attach(io: ap_1, filename: 'ap-1.jpg', content_type: 'image/jpg')
ap_2 = URI.open("http://jaimelafrance.tourisme.fr/wp-content/uploads/2015/10/Cinema3-750x563.jpg")
ms5.photos.attach(io: ap_2, filename: 'ap-2.jpg', content_type: 'image/jpg')
ap_3 = URI.open("https://www.messortiesculture.com/storage/tourcovers/3739.jpg?1548243226")
ms5.photos.attach(io: ap_3, filename: 'ap-3.jpg', content_type: 'image/jpg')
ms5.save

u6 = User.create(first_name: "Frodon", last_name: "Sacquet", email: "frodon@sacquet.com", password: "testtest")

ms6 = MovieSet.new(title: "Dwarf house", description: "Be the dwarf you've always wanted to be", media_name: "Lord Of The Rings", address: "Matamata, New-Zealand", price_per_day: 3000, user_id: u6.id)
lotr_1 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movie-set-1.jpg")
ms6.photos.attach(io: lotr_1, filename: 'lotr-1.jpg', content_type: 'image/jpg')
lotr_2 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movie-set.jpg")
ms6.photos.attach(io: lotr_2, filename: 'lotr-2.jpg', content_type: 'image/jpg')
lotr_3 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movieset.jpg")
ms6.photos.attach(io: lotr_3, filename: 'lotr-3.jpg', content_type: 'image/jpg')
ms6.save

u7 = User.create(first_name: "Marie", last_name: "Antoinette", email: "marie@antoinette.com", password: "testtest")

ms7 = MovieSet.new(title: "Historic french castle", description: "Always wanted to be a Queen? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur ex dolor, sit amet viverra eros vulputate et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in ex vitae nulla cursus rutrum. Pellentesque non pretium magna. Duis lobortis sagittis ligula, vitae convallis diam hendrerit in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed porta ex nec quam ornare, quis luctus turpis lobortis. Sed tempus a urna id tempor. Donec venenatis leo ut purus dignissim, id pretium tortor finibus. Nam sagittis quis odio eget rhoncus. Aenean et est eu magna posuere pulvinar vel eget eros. Aliquam placerat tempor egestas. Donec vitae sapien quis risus laoreet facilisis. Duis dignissim quam in posuere tincidunt. Sed feugiat risus non convallis feugiat. Quisque pretium purus a est imperdiet faucibus.

Suspendisse et ullamcorper augue, quis ultrices velit. Vestibulum in odio eget risus vehicula laoreet. Maecenas varius augue ut sapien malesuada tempor. Donec gravida dui sed enim commodo, eget tincidunt dui finibus. Pellentesque ultricies lacus sed pellentesque euismod. Donec vitae dui at ligula sagittis accumsan. Cras venenatis feugiat metus vel dictum. Donec tincidunt tortor nec eleifend venenatis. Nullam vel nibh sagittis, interdum ante sed, pharetra.", media_name: "Marie-Antoinette", address: "Chateau de Versailles, France", price_per_day: 3000, user_id: u7.id)
ma_1 = URI.open("https://id14withmamquevedo.files.wordpress.com/2012/03/palace_of_versailles_-_paris.jpg")
ms7.photos.attach(io: ma_1, filename: 'ma-1.jpg', content_type: 'image/jpg')
ma_2 = URI.open("http://scd.en.rfi.fr/sites/english.filesrfi/imagecache/rfi_16x9_1024_578/sites/images.rfi.fr/files/aef_image/vaux_le_vicomte_fait_son_cinema_exhibition_sept-_nov_2018.png")
ms7.photos.attach(io: ma_2, filename: 'ma-2.jpg', content_type: 'image/jpg')
ma_3 = URI.open("https://static.lexpress.fr/medias_611/w_480,h_270,c_fill,g_north/v1406717680/trianon-1_312931.jpg")
ms7.photos.attach(io: ma_3, filename: 'ma-3.jpg', content_type: 'image/jpg')
ms7.save

u8 = User.create(first_name: "Bruce", last_name: "Wayne", email: "bruce@wayne.com", password: "testtest")

ms8 = MovieSet.new(title: "Batman city", description: "Fictional city appearing in American comic books published by DC Comics, best known as the home of Batman. The city was first identified as Batman's place of residence in Batman #4 (December 1940) and has since been the primary setting for stories featuring the character.", media_name: "Batman", address: "New-York City", price_per_day: 3000, user_id: u8.id)
batman_1 = URI.open("https://static.hitek.fr/img/actualite/2018/03/02/fb_gotham-city-batman-setting-dc-1024x575.jpg")
ms8.photos.attach(io: batman_1, filename: 'batman-1.jpg', content_type: 'image/jpg')
batman_2 = URI.open("https://images.unsplash.com/photo-1560982014-81fd498f57e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
ms8.photos.attach(io: batman_2, filename: 'batman-2.jpg', content_type: 'image/jpg')
batman_3 = URI.open("https://static.hitek.fr/img/actualite/2018/03/02/fb_gotham-city-batman-setting-dc-1024x575.jpg")
ms8.photos.attach(io: batman_3, filename: 'batman-3.jpg', content_type: 'image/jpg')
ms8.save

u9 = User.create(first_name: "Piper", last_name: "Chapman", email: "piper2@chapman.com", password: "testtest")

ms9 = MovieSet.new(title: "Guantanamo cell", description: "Get the best of America worst prison", media_name: "Orange is the new black", address: "Guantanamo Bay Naval Base, Cuba", price_per_day: 0, user_id: u9.id)
prison_2 = URI.open("https://images.unsplash.com/photo-1543536833-6d65fcc64f66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
ms9.photos.attach(io: prison_2, filename: 'prison-2.jpg', content_type: 'image/jpg')
prison_1 = URI.open("https://images.unsplash.com/photo-1519738770393-98f215a6a826?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2203&q=80")
ms9.photos.attach(io: prison_1, filename: 'prison-1.jpg', content_type: 'image/jpg')
prison_3 = URI.open("https://d10frqznkjv786.cloudfront.net/2018/08/02/535500/205427/prison_cell_3d_model_c4d_max_obj_fbx_ma_lwo_3ds_3dm_stl_2167791_o.jpg")
ms9.photos.attach(io: prison_3, filename: 'prison-3.jpg', content_type: 'image/jpg')
ms9.save

u10 = User.create(first_name: "Rachel", last_name: "Greene", email: "rachel2@greene.com", password: "testtest")

ms10 = MovieSet.new(title: "NYC friends flat", description: "You'll get much more than just a flat", media_name: "Friends", address: "90 Bedford St, New York, NY 10014, États-Unis", price_per_day: 500, user_id: u10.id)
friends_2 = URI.open("https://live.staticflickr.com/1428/5112096481_b7166a86bb_b.jpg")
ms10.photos.attach(io: friends_2, filename: 'friends-2.jpg', content_type: 'image/jpg')
friends_1 = URI.open("https://peopledotcom.files.wordpress.com/2019/06/armchair-e1441355105548.jpg")
ms10.photos.attach(io: friends_1, filename: 'friends-1.jpg', content_type: 'image/jpg')
friends_3 = URI.open("https://i.pinimg.com/originals/31/33/6b/31336b054c49b994f5c775cc44ff23d8.jpg")
ms10.photos.attach(io: friends_3, filename: 'friends-3.jpg', content_type: 'image/jpg')
ms10.save

u11 = User.create(first_name: "Jon", last_name: "Snow", email: "jon2@snow.com", password: "testtest")

ms11 = MovieSet.new(title: "Game of Thrones Kingdom", description: "Be the king you've always wanted to be", media_name: "Game of Thrones", address: "Dubrovnik, Croatia", price_per_day: 3000, user_id: u11.id)
got_2 = URI.open("https://static.boredpanda.com/blog/wp-content/uploads/2015/06/game-of-thrones-real-life-locations-25__880.jpg")
ms11.photos.attach(io: got_2, filename: 'got-2.jpg', content_type: 'image/jpg')
got_1 = URI.open("https://static.boredpanda.com/blog/wp-content/uploads/2015/06/game-of-thrones-real-life-locations-4__880.jpg")
ms11.photos.attach(io: got_1, filename: 'got-1.jpg', content_type: 'image/jpg')
got_3 = URI.open("https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Croatia/Dubrovnik/dubrovnik-city-walls-lead-guide.jpg?imwidth=1400")
ms11.photos.attach(io: got_3, filename: 'got-3.jpg', content_type: 'image/jpg')
ms11.save

u12 = User.create(first_name: "Jack", last_name: "Dawson", email: "jack2@dawson.com", password: "testtest")

ms12 = MovieSet.new(title: "Titanic cabin", description: "Try to escape quicker than everyone else to stay alive!", media_name: "Titanic", address: "Southampton", price_per_day: 1000, user_id: u12.id)
titanic_2 = URI.open("https://images.unsplash.com/photo-1420496401585-7f22ce8b8b8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
ms12.photos.attach(io: titanic_2, filename: 'titanic-2.jpg', content_type: 'image/jpg')
titanic_1 = URI.open("https://images.squarespace-cdn.com/content/v1/5006453fe4b09ef2252ba068/1351507897498-5NR30EWR0THJADWKRNWD/ke17ZwdGBToddI8pDm48kJeJHJwC6a6EsSJOBBjFhV9Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzDyK0yyeJKIY_i0u68MjTVXsF0JxhrS6Mqua5wjwegnaK2LCQsTlqKP_tB0-z4t8c/first+class+cabin.jpg")
ms12.photos.attach(io: titanic_1, filename: 'titanic-1.jpg', content_type: 'image/jpg')
titanic_3 = URI.open("https://i.dailymail.co.uk/i/pix/2012/04/11/article-2128270-128CE485000005DC-44_966x635.jpg")
ms12.photos.attach(io: titanic_3, filename: 'titanic-3.jpg', content_type: 'image/jpg')
ms12.save

u13 = User.create(first_name: "Amélie", last_name: "Poulain", email: "amelie2@poulain.com", password: "testtest")

ms13 = MovieSet.new(title: "Authentic Montmartre set", description: "Be a classy parisian for one day or more...", media_name: "Le fabuleux destin d'Amélie Poulain", address: "Montmartre, Paris", price_per_day: 400, user_id: u13.id)
ap_2 = URI.open("http://jaimelafrance.tourisme.fr/wp-content/uploads/2015/10/Cinema3-750x563.jpg")
ms13.photos.attach(io: ap_2, filename: 'ap-2.jpg', content_type: 'image/jpg')
ap_1 = URI.open("http://www.movie-locations.com/movies/a/Amelie-Cafe-Des-Deux-Moulins.jpg")
ms13.photos.attach(io: ap_1, filename: 'ap-1.jpg', content_type: 'image/jpg')
ap_3 = URI.open("https://www.messortiesculture.com/storage/tourcovers/3739.jpg?1548243226")
ms13.photos.attach(io: ap_3, filename: 'ap-3.jpg', content_type: 'image/jpg')
ms13.save

u14 = User.create(first_name: "Frodon", last_name: "Sacquet", email: "frodon2@sacquet.com", password: "testtest")

ms14 = MovieSet.new(title: "Frodon world", description: "Be the dwarf you've always wanted to be", media_name: "Lord Of The Rings", address: "Matamata, New-Zealand", price_per_day: 3000, user_id: u14.id)
lotr_2 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movie-set.jpg")
ms14.photos.attach(io: lotr_2, filename: 'lotr-2.jpg', content_type: 'image/jpg')
lotr_1 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movie-set-1.jpg")
ms14.photos.attach(io: lotr_1, filename: 'lotr-1.jpg', content_type: 'image/jpg')
lotr_3 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movieset.jpg")
ms14.photos.attach(io: lotr_3, filename: 'lotr-3.jpg', content_type: 'image/jpg')
ms14.save

u15 = User.create(first_name: "Marie", last_name: "Antoinette", email: "marie2@antoinette.com", password: "testtest")

ms15 = MovieSet.new(title: "Castle set", description: "Always wanted to be a Queen? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur ex dolor, sit amet viverra eros vulputate et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in ex vitae nulla cursus rutrum. Pellentesque non pretium magna. Duis lobortis sagittis ligula, vitae convallis diam hendrerit in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed porta ex nec quam ornare, quis luctus turpis lobortis. Sed tempus a urna id tempor. Donec venenatis leo ut purus dignissim, id pretium tortor finibus. Nam sagittis quis odio eget rhoncus. Aenean et est eu magna posuere pulvinar vel eget eros. Aliquam placerat tempor egestas. Donec vitae sapien quis risus laoreet facilisis. Duis dignissim quam in posuere tincidunt. Sed feugiat risus non convallis feugiat. Quisque pretium purus a est imperdiet faucibus.

Suspendisse et ullamcorper augue, quis ultrices velit. Vestibulum in odio eget risus vehicula laoreet. Maecenas varius augue ut sapien malesuada tempor. Donec gravida dui sed enim commodo, eget tincidunt dui finibus. Pellentesque ultricies lacus sed pellentesque euismod. Donec vitae dui at ligula sagittis accumsan. Cras venenatis feugiat metus vel dictum. Donec tincidunt tortor nec eleifend venenatis. Nullam vel nibh sagittis, interdum ante sed, pharetra.", media_name: "Marie-Antoinette", address: "Chateau de Versailles, France", price_per_day: 3000, user_id: u15.id)
ma_2 = URI.open("http://scd.en.rfi.fr/sites/english.filesrfi/imagecache/rfi_16x9_1024_578/sites/images.rfi.fr/files/aef_image/vaux_le_vicomte_fait_son_cinema_exhibition_sept-_nov_2018.png")
ms15.photos.attach(io: ma_2, filename: 'ma-2.jpg', content_type: 'image/jpg')
ma_1 = URI.open("https://id14withmamquevedo.files.wordpress.com/2012/03/palace_of_versailles_-_paris.jpg")
ms15.photos.attach(io: ma_1, filename: 'ma-1.jpg', content_type: 'image/jpg')
ma_3 = URI.open("https://static.lexpress.fr/medias_611/w_480,h_270,c_fill,g_north/v1406717680/trianon-1_312931.jpg")
ms15.photos.attach(io: ma_3, filename: 'ma-3.jpg', content_type: 'image/jpg')
ms15.save

u16 = User.create(first_name: "Bruce", last_name: "Wayne", email: "bruce2@wayne.com", password: "testtest")

ms16 = MovieSet.new(title: "Batman set", description: "Fictional city appearing in American comic books published by DC Comics, best known as the home of Batman. The city was first identified as Batman's place of residence in Batman #4 (December 1940) and has since been the primary setting for stories featuring the character.", media_name: "Batman", address: "New-York City", price_per_day: 3000, user_id: u16.id)
batman_2 = URI.open("https://images.unsplash.com/photo-1560982014-81fd498f57e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
ms16.photos.attach(io: batman_2, filename: 'batman-2.jpg', content_type: 'image/jpg')
batman_1 = URI.open("https://static.hitek.fr/img/actualite/2018/03/02/fb_gotham-city-batman-setting-dc-1024x575.jpg")
ms16.photos.attach(io: batman_1, filename: 'batman-1.jpg', content_type: 'image/jpg')
batman_3 = URI.open("https://static.hitek.fr/img/actualite/2018/03/02/fb_gotham-city-batman-setting-dc-1024x575.jpg")
ms16.photos.attach(io: batman_3, filename: 'batman-3.jpg', content_type: 'image/jpg')
ms16.save

u17 = User.create(first_name: "Piper", last_name: "Chapman", email: "piper3@chapman.com", password: "testtest")

ms17 = MovieSet.new(title: "Jail cell", description: "Get the best of America worst prison", media_name: "Orange is the new black", address: "Guantanamo Bay Naval Base, Cuba", price_per_day: 0, user_id: u17.id)
prison_3 = URI.open("https://d10frqznkjv786.cloudfront.net/2018/08/02/535500/205427/prison_cell_3d_model_c4d_max_obj_fbx_ma_lwo_3ds_3dm_stl_2167791_o.jpg")
ms17.photos.attach(io: prison_3, filename: 'prison-3.jpg', content_type: 'image/jpg')
prison_2 = URI.open("https://images.unsplash.com/photo-1543536833-6d65fcc64f66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
ms17.photos.attach(io: prison_2, filename: 'prison-2.jpg', content_type: 'image/jpg')
prison_1 = URI.open("https://images.unsplash.com/photo-1519738770393-98f215a6a826?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2203&q=80")
ms17.photos.attach(io: prison_1, filename: 'prison-1.jpg', content_type: 'image/jpg')
ms17.save

u18 = User.create(first_name: "Rachel", last_name: "Greene", email: "rachel3@greene.com", password: "testtest")

ms18 = MovieSet.new(title: "NYC authentic flat", description: "You'll get much more than just a flat", media_name: "Friends", address: "90 Bedford St, New York, NY 10014, États-Unis", price_per_day: 500, user_id: u18.id)
friends_3 = URI.open("https://i.pinimg.com/originals/31/33/6b/31336b054c49b994f5c775cc44ff23d8.jpg")
ms18.photos.attach(io: friends_3, filename: 'friends-3.jpg', content_type: 'image/jpg')
friends_2 = URI.open("https://live.staticflickr.com/1428/5112096481_b7166a86bb_b.jpg")
ms18.photos.attach(io: friends_2, filename: 'friends-2.jpg', content_type: 'image/jpg')
friends_1 = URI.open("https://peopledotcom.files.wordpress.com/2019/06/armchair-e1441355105548.jpg")
ms18.photos.attach(io: friends_1, filename: 'friends-1.jpg', content_type: 'image/jpg')
ms18.save

u19 = User.create(first_name: "Jon", last_name: "Snow", email: "jon3@snow.com", password: "testtest")

ms19 = MovieSet.new(title: "Game of Thrones Kingdom", description: "Be the king you've always wanted to be", media_name: "Game of Thrones", address: "Dubrovnik, Croatia", price_per_day: 3000, user_id: u19.id)
got_3 = URI.open("https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Croatia/Dubrovnik/dubrovnik-city-walls-lead-guide.jpg?imwidth=1400")
ms19.photos.attach(io: got_3, filename: 'got-3.jpg', content_type: 'image/jpg')
got_2 = URI.open("https://static.boredpanda.com/blog/wp-content/uploads/2015/06/game-of-thrones-real-life-locations-25__880.jpg")
ms19.photos.attach(io: got_2, filename: 'got-2.jpg', content_type: 'image/jpg')
got_1 = URI.open("https://static.boredpanda.com/blog/wp-content/uploads/2015/06/game-of-thrones-real-life-locations-4__880.jpg")
ms19.photos.attach(io: got_1, filename: 'got-1.jpg', content_type: 'image/jpg')
ms19.save

u20 = User.create(first_name: "Jack", last_name: "Dawson", email: "jack3@dawson.com", password: "testtest")

ms20 = MovieSet.new(title: "Wet cabin on an historic boat", description: "Try to escape quicker than everyone else to stay alive!", media_name: "Titanic", address: "Southampton", price_per_day: 1000, user_id: u20.id)
titanic_2 = URI.open("https://images.unsplash.com/photo-1420496401585-7f22ce8b8b8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
ms20.photos.attach(io: titanic_2, filename: 'titanic-2.jpg', content_type: 'image/jpg')
titanic_3 = URI.open("https://i.dailymail.co.uk/i/pix/2012/04/11/article-2128270-128CE485000005DC-44_966x635.jpg")
ms20.photos.attach(io: titanic_3, filename: 'titanic-3.jpg', content_type: 'image/jpg')
titanic_1 = URI.open("https://images.squarespace-cdn.com/content/v1/5006453fe4b09ef2252ba068/1351507897498-5NR30EWR0THJADWKRNWD/ke17ZwdGBToddI8pDm48kJeJHJwC6a6EsSJOBBjFhV9Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzDyK0yyeJKIY_i0u68MjTVXsF0JxhrS6Mqua5wjwegnaK2LCQsTlqKP_tB0-z4t8c/first+class+cabin.jpg")
ms20.photos.attach(io: titanic_1, filename: 'titanic-1.jpg', content_type: 'image/jpg')
ms20.save

u21 = User.create(first_name: "Amélie", last_name: "Poulain", email: "amelie3@poulain.com", password: "testtest")

ms21 = MovieSet.new(title: "Romantic parisian set", description: "Be a classy parisian for one day or more...", media_name: "Le fabuleux destin d'Amélie Poulain", address: "Montmartre, Paris", price_per_day: 400, user_id: u21.id)
ap_3 = URI.open("https://www.messortiesculture.com/storage/tourcovers/3739.jpg?1548243226")
ms21.photos.attach(io: ap_3, filename: 'ap-3.jpg', content_type: 'image/jpg')
ap_2 = URI.open("http://jaimelafrance.tourisme.fr/wp-content/uploads/2015/10/Cinema3-750x563.jpg")
ms21.photos.attach(io: ap_2, filename: 'ap-2.jpg', content_type: 'image/jpg')
ap_1 = URI.open("http://www.movie-locations.com/movies/a/Amelie-Cafe-Des-Deux-Moulins.jpg")
ms21.photos.attach(io: ap_1, filename: 'ap-1.jpg', content_type: 'image/jpg')
ms21.save

u22 = User.create(first_name: "Frodon", last_name: "Sacquet", email: "frodon3@sacquet.com", password: "testtest")

ms22 = MovieSet.new(title: "Dwarf house", description: "Be the dwarf you've always wanted to be", media_name: "Lord Of The Rings", address: "Matamata, New-Zealand", price_per_day: 3000, user_id: u22.id)
lotr_3 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movieset.jpg")
ms22.photos.attach(io: lotr_3, filename: 'lotr-3.jpg', content_type: 'image/jpg')
lotr_2 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movie-set.jpg")
ms22.photos.attach(io: lotr_2, filename: 'lotr-2.jpg', content_type: 'image/jpg')
lotr_1 = URI.open("https://blogvoyages.fr/wp-content/uploads/2018/06/hobbiton-movie-set-1.jpg")
ms22.photos.attach(io: lotr_1, filename: 'lotr-1.jpg', content_type: 'image/jpg')
ms22.save

u23 = User.create(first_name: "Marie", last_name: "Antoinette", email: "marie3@antoinette.com", password: "testtest")

ms23 = MovieSet.new(title: "Historic french castle", description: "Always wanted to be a Queen? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur ex dolor, sit amet viverra eros vulputate et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in ex vitae nulla cursus rutrum. Pellentesque non pretium magna. Duis lobortis sagittis ligula, vitae convallis diam hendrerit in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed porta ex nec quam ornare, quis luctus turpis lobortis. Sed tempus a urna id tempor. Donec venenatis leo ut purus dignissim, id pretium tortor finibus. Nam sagittis quis odio eget rhoncus. Aenean et est eu magna posuere pulvinar vel eget eros. Aliquam placerat tempor egestas. Donec vitae sapien quis risus laoreet facilisis. Duis dignissim quam in posuere tincidunt. Sed feugiat risus non convallis feugiat. Quisque pretium purus a est imperdiet faucibus.

Suspendisse et ullamcorper augue, quis ultrices velit. Vestibulum in odio eget risus vehicula laoreet. Maecenas varius augue ut sapien malesuada tempor. Donec gravida dui sed enim commodo, eget tincidunt dui finibus. Pellentesque ultricies lacus sed pellentesque euismod. Donec vitae dui at ligula sagittis accumsan. Cras venenatis feugiat metus vel dictum. Donec tincidunt tortor nec eleifend venenatis. Nullam vel nibh sagittis, interdum ante sed, pharetra.", media_name: "Marie-Antoinette", address: "Chateau de Versailles, France", price_per_day: 3000, user_id: u23.id)
ma_3 = URI.open("https://static.lexpress.fr/medias_611/w_480,h_270,c_fill,g_north/v1406717680/trianon-1_312931.jpg")
ms23.photos.attach(io: ma_3, filename: 'ma-3.jpg', content_type: 'image/jpg')
ma_2 = URI.open("http://scd.en.rfi.fr/sites/english.filesrfi/imagecache/rfi_16x9_1024_578/sites/images.rfi.fr/files/aef_image/vaux_le_vicomte_fait_son_cinema_exhibition_sept-_nov_2018.png")
ms23.photos.attach(io: ma_2, filename: 'ma-2.jpg', content_type: 'image/jpg')
ma_1 = URI.open("https://id14withmamquevedo.files.wordpress.com/2012/03/palace_of_versailles_-_paris.jpg")
ms23.photos.attach(io: ma_1, filename: 'ma-1.jpg', content_type: 'image/jpg')
ms23.save

u24 = User.create(first_name: "Bruce", last_name: "Wayne", email: "bruce3@wayne.com", password: "testtest")

ms24 = MovieSet.new(title: "Batman city", description: "Fictional city appearing in American comic books published by DC Comics, best known as the home of Batman. The city was first identified as Batman's place of residence in Batman #4 (December 1940) and has since been the primary setting for stories featuring the character.", media_name: "Batman", address: "New-York City", price_per_day: 3000, user_id: u24.id)
batman_3 = URI.open("https://static.hitek.fr/img/actualite/2018/03/02/fb_gotham-city-batman-setting-dc-1024x575.jpg")
ms24.photos.attach(io: batman_3, filename: 'batman-3.jpg', content_type: 'image/jpg')
batman_2 = URI.open("https://images.unsplash.com/photo-1560982014-81fd498f57e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
ms24.photos.attach(io: batman_2, filename: 'batman-2.jpg', content_type: 'image/jpg')
batman_1 = URI.open("https://static.hitek.fr/img/actualite/2018/03/02/fb_gotham-city-batman-setting-dc-1024x575.jpg")
ms24.photos.attach(io: batman_1, filename: 'batman-1.jpg', content_type: 'image/jpg')
ms24.save

b1 = Booking.create(start_date: Date.today, end_date: Date.today + 8, total_price: 1200, status: "upcoming", user_id: 21, movie_set_id: 21)
b2 = Booking.create(start_date: Date.new(2018,2,3), end_date: Date.new(2018,3,3), total_price: 800, status: "past", user_id: 21, movie_set_id: 23)
b3 = Booking.create(start_date: Date.new(2016,6,23), end_date: Date.new(2016,7,3), total_price: 2100, status: "past", user_id: 21, movie_set_id: 18)

puts "Seeded"
