# encoding: utf-8



EmailTemplateType.create({
                             type_name: "accept_notification_email",
                             title: "Appeal Accept Notification Email",
                             default_subject: "[{{conference.name}}] {{ topic.subject }} is accepted",
                             default_body: "Your application is accepted for {{ appeal.conference.name }} <br /><br/>
                <b>Speakers:</b> <br/>
                <ul>
                 {% for speaker in appeal.speakers %}

                      <li> {{ speaker.name }}</li>
                 {% endfor %}
                </ul>
                <b>Topic:</b>  {{ appeal.topic.subject }} <br/>
                <b>Details: </b>{{ appeal.topic.detail }} <br/>
                <b>Additional Info:</b> {{ appeal.topic.additional_info }} <br/> <br/>

                <br/><br/>

                -ConfDeck"
                         })

EmailTemplateType.create({
                             type_name: "reject_notification_email",
                             title: "Appeal Reject Notification Email",
                             default_subject: "[{{conference.name}}] {{ topic.subject }} is rejected",
                             default_body: "Your application is rejected for {{ appeal.conference.name }} <br /><br/>
            <b>Speakers:</b> <br/>
            <ul>
             {% for speaker in appeal.speakers %}

                  <li> {{ speaker.name }}</li>
             {% endfor %}
            </ul>
            <b>Topic:</b>  {{ appeal.topic.subject }} <br/>
            <b>Details: </b>{{ appeal.topic.detail }} <br/>
            <b>Additional Info:</b> {{ appeal.topic.additional_info }} <br/> <br/>

            <br/><br/>

            -ConfDeck"
                         })

EmailTemplateType.create({
                             type_name: "speaker_notification_email",
                             title: "Speaker Notification Email",
                             default_subject: "[{{conference.name}}] {{ topic.subject }} is received",
                             default_body: "Your application is received for {{ appeal.conference.name }} <br /><br/>
            <b>Speakers:</b> <br/>
            <ul>
             {% for speaker in appeal.speakers %}

                  <li> {{ speaker.name }}</li>
             {% endfor %}
            </ul>
            <b>Topic:</b>  {{ appeal.topic.subject }} <br/>
            <b>Details: </b>{{ appeal.topic.detail }} <br/>
            <b>Additional Info:</b> {{ appeal.topic.additional_info }} <br/> <br/>

            <br/><br/>

            -ConfDeck"
                         })

EmailTemplateType.create({
                             type_name: "committee_notification_email",
                             title: "New Application Notification Email To Committee",
                             default_subject: "[{{conference.name}}] New application is received",
                             default_body: "New application is received for {{ appeal.conference.name }} <br /><br/>
            <b>Speakers:</b> <br/>
            <ul>
             {% for speaker in appeal.speakers %}

                  <li> {{ speaker.name }}</li>
             {% endfor %}
            </ul>
            <b>Topic:</b>  {{ appeal.topic.subject }} <br/>
            <b>Details: </b>{{ appeal.topic.detail }} <br/>
            <b>Additional Info:</b> {{ appeal.topic.additional_info }} <br/> <br/>

            <br/><br/>

            -ConfDeck"
                         })

#
# require 'faker'
#
# Rake::Task['db:drop'].invoke
# Rake::Task['db:create'].invoke
# Rake::Task['db:migrate'].invoke
#
#
# u = User.new(
#   :email => "guest@kodgemisi.com",
#   :password => "12345678"
# )
#
# o = Organization.new(
#   :name => "KodGemisi",
#   :website => "http://Www.kodgemisi.com"
# )
#
# o.save
#
# u.organizations << o
# u.save
#
# c = Conference.new(
#   :name => "RailsConf2013 - Izmir",
#   :email => "contact@railsconfizmir.com",
#   :facebook => "railsconfizmir",
#   :twitter => "railsconfizmir",
#   :summary => "RailsConf, the largest gathering of Ruby and Rails developers in the Izmir, Turkey.",
#
# )
# c.heading_image = File.open(File.join(Rails.root, 'db', 'fixtures', 'izmir.jpg'))
#
# c.create_days(Date.today + 10.days, Date.today + 13.days) #Create dates
# c.organizations << o
#
# address = Address.create!(
#   :lat => 38.46978571879323,
#   :lon => 27.111425399780273,
#   :city => "Izmir",
#   :info => "The city of İzmir is composed of several metropolitan districts. Of these, Konak district corresponds to historical İzmir, this district's area having constituted the \" İzmir Municipality \" area until 1984, Konak until then having been a name for a central neighborhood around Konak Square, still the core of the city. "
# )
#
# c.address = address
#
# c.save
#
#
# speaker = Speaker.create!(
#   :name => "Mehmet Beydogan",
#   :twitter => "mbrain0",
#   :email => "mbbrain@gmail.com",
#   :bio => "Member of KodGemisi Team"
# )
#
# speaker2 = Speaker.create!(
#   :name => "Zafer Cakmak",
#   :twitter => "xaphtrick",
#   :email => "mzcakmak@gmail.com",
#   :bio => "Member of KodGemisi Team"
# )
#
# speaker3 = Speaker.create!(
#   :name => "Destan Sarpkaya",
#   :twitter => "dorukdestan",
#   :email => "destan@dorukdestan.com",
#   :bio => "Member of KodGemisi Team"
# )
#
# topic = Topic.new(
#   :subject => "State Machines in Rails",
#   :additional_info => "",
#   :detail => "",
#   :abstract => "",
# )
#
# topic.speakers << speaker
# topic.speakers << speaker2
# topic.speakers << speaker3
#
# topic.save
#
# appeal = Appeal.new(
#   :topic_id => topic.id,
#   :conference_id => c.id,
#   :state => "accepted"
# )
#
# appeal.save
