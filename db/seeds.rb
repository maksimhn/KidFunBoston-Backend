User.delete_all
Activity.delete_all
Comment.delete_all

joe = User.create!(name: 'Joe Levinger', email: 'joe@joelevinger.com',
                   password: 'joelevinger', password_confirmation: 'joelevinger')
lisa = User.create!(name: 'Lisa Murphy', email: 'lisa@lisamurphy.com',
                    password: 'lisamurphy', password_confirmation: 'lisamurphy')

mfa = Activity.create!(picture_url: '../images/mfa.jpg', caption: 'Museum of Fine Arts',
                       cost: 'medium', min_age: 3, max_age: 18, venue: 'Museums',
                       activity_level: 'low', holiday_activity: false,
                       description: 'If you\'re one of those folks who thought the MFA was just for grownups, think again! Read on:

                         MFA Playdates — First and Third Mondays — 10:15 - 11:00 am

                         On the first and third Mondays of each month, bring your toddler to enjoy story time and looking activities in the galleries, followed by art making. Each month focuses on a specific theme. Recommended for children ages 4 and younger with adults. Meet at the Sharf Visitor Center. No registration required.

                         Stay after the program to explore the Museum on your own or with new acquaintances, and enjoy snacks or lunch in the Garden Cafeteria or Calderwood Courtyard, and choose from a great selection of kid-friendly options from any of the MFA\'s dining venues.

                         FREE with Museum admission.',
                       venue_url: '../images/mfa.jpg',
                       detail_picture_url: '../images/mfaplaydates.jpg',
                       int_page_header: 'Museums',
                       detail_page_header: 'Museum of Fine Arts',
                       detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                       detail_url_text: 'Learn more about Playdates',
                       home: true)
Activity.create!(picture_url: '../images/pubgarden.jpg', caption: 'Boston Public Garden',
                 cost: 'medium', min_age: 3, max_age: 18, venue: 'Parks',
                 activity_level: 'low', holiday_activity: false,
                 description: 'description goes here',
                 venue_url: '../images/mfa.jpg',
                 detail_picture_url: '../images/mfaplaydates.jpg',
                 int_page_header: 'Museums',
                 detail_page_header: 'Boston Public Garden',
                 detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                 detail_url_text: 'Learn more about Playdates',
                 home: true)
Activity.create!(picture_url: '../images/segway.jpg', caption: 'Segway Tours',
                 cost: 'medium', min_age: 3, max_age: 18, venue: 'Tours',
                 activity_level: 'low', holiday_activity: false,
                 description: 'description goes here',
                 venue_url: '../images/mfa.jpg',
                 detail_picture_url: '../images/mfaplaydates.jpg',
                 int_page_header: 'Museums',
                 detail_page_header: 'Segway Tours',
                 detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                 detail_url_text: 'Learn more about Playdates',
                 home: true)
Activity.create!(picture_url: '../images/frogpond.jpg', caption: 'Ice Skating on the Frog Pond',
                 cost: 'medium', min_age: 3, max_age: 18, venue: 'Seasonal Activities',
                 activity_level: 'low', holiday_activity: false,
                 description: 'description goes here',
                 venue_url: '../images/mfa.jpg',
                 detail_picture_url: '../images/mfaplaydates.jpg',
                 int_page_header: 'Museums',
                 detail_page_header: 'Ice Skating on the Frog Pond',
                 detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                 detail_url_text: 'Learn more about Playdates',
                 home: true)
Activity.create!(picture_url: '../images/freedomtrail.jpg', caption: 'The Freedom Trail',
                 cost: 'medium', min_age: 3, max_age: 18, venue: 'Activities by Price ... Even Free!',
                 activity_level: 'low', holiday_activity: false,
                 description: 'description goes here',
                 venue_url: '../images/mfa.jpg',
                 detail_picture_url: '../images/mfaplaydates.jpg',
                 int_page_header: 'Museums',
                 detail_page_header: 'The Freedom Trail',
                 detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                 detail_url_text: 'Learn more about Playdates',
                 home: true)
Activity.create!(picture_url: '../images/july4th.png', caption: 'July 4th on the Esplanade',
                 cost: 'medium', min_age: 3, max_age: 18, venue: 'Holiday Activities',
                 activity_level: 'low', holiday_activity: false,
                 description: 'description goes here',
                 venue_url: '../images/mfa.jpg',
                 detail_picture_url: '../images/mfaplaydates.jpg',
                 int_page_header: 'Museums',
                 detail_page_header: 'July 4th on the Esplanade',
                 detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                 detail_url_text: 'Learn more about Playdates',
                 home: true)
Activity.create!(picture_url: '../images/mos.jpg', caption: 'Museum of Science',
                 cost: 'medium', min_age: 3, max_age: 18, venue: 'Museums',
                 activity_level: 'low', holiday_activity: false,
                 description: 'description goes here',
                 venue_url: '../images/mos.jpg',
                 detail_picture_url: '../images/mfaplaydates.jpg',
                 int_page_header: 'Museums',
                 detail_page_header: 'Museum of Science',
                 detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                 detail_url_text: 'Learn more about Playdates',
                 home: false)
Activity.create!(picture_url: '../images/childrensmuseum.jpg', caption: 'Children\'s Museum',
                 cost: 'medium', min_age: 3, max_age: 18, venue: 'Museums',
                 activity_level: 'low', holiday_activity: false,
                 description: 'description goes here',
                 venue_url: '../images/childrensmuseum.jpg',
                 detail_picture_url: '../images/mfaplaydates.jpg',
                 int_page_header: 'Museums',
                 detail_page_header: 'Children\'s Museum',
                 detail_url: 'http://www.mfa.org/programs/gallery-activities-and-tours/mfa-playdates',
                 detail_url_text: 'Learn more about Playdates',
                 home: false)

Comment.create!(title: 'Don\'t bother with this one...',
                body: 'My kid was bored out of his mind! I\'ll never do this again.',
                rating: 1, user_id: joe.id, activity_id: mfa.id)
Comment.create!(title: 'An amazing experience...',
                body: 'My kid loved Playdates. She can\'t wait for me to take her again!',
                rating: 5, user_id: lisa.id, activity_id: mfa.id)
