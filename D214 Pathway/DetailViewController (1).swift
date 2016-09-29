import UIKit

class DetailViewController: UIViewController

{
    var classesArray = [String]()
    var descriptionArray = [String]()
    var numberArray = [String]()
    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var classDescription: UILabel!
    @IBOutlet weak var classNumber: UILabel!
    
    var selectedClass = String()
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
      //  self.view.backgroundColor = UIColor(patternImage: UIImage(named: "One")!)
        
        
        if selectedClass == "PLTW Introduction to Engineering Design"
        {
            self.navigationItem.title = "PLTW Introduction to Engineering Design"
            self.className.text = "PLTW Introduction to Engineering Design"
            self.classDescription.text = "Introduction to Engineering Design encourages students to be creative and apply decision-making and problem solving skills to specific design problems, using powerful computer hardware and software (Inventor) to develop 3-D models or solid renderings. Using a CAD (computer aided design) system, students explore the design process through creating, analyzing, rendering, and producing-model."
            self.classNumber.text = "06881/06882"
        }
        else if selectedClass == "PLTW Civil Engineering and Architecture"
        {
            self.navigationItem.title = "PLTW Civil Engineering and Architecture"
            self.className.text = "PLTW Civil Engineering and Architecture"
            self.classDescription.text = "This course provides an overview of civil engineering and architecture, emphasizing how they are related and interdependent. Students use state of the art software to solve real world problems and communicate solutions to hands-on projects and activities. This course covers topics such as the roles of civil engineers and architects, project planning, site planning, building design, project documentation and presentation."
            self.classNumber.text = "06901/06902"
        }
        else if selectedClass == "AP Physics"
        {
            self.navigationItem.title = "AP Physics"
            self.className.text = "AP Physics"
            self.classDescription.text = "This course is intended for students who have completed one year of Physics and one year of Chemistry. Students should expect to apply rigorous mathematics in the development of theories, analysis of laboratory data, and solution of problems. The primary focus of this course will be problem solving and mathematical model construction to explain mechanics (statistics, kinematics, and dynamics)."
            self.classNumber.text = "05441/05442"
        }
        else if selectedClass == "AP Chemistry"
        {
            self.navigationItem.title = "AP Chemistry"
            self.className.text = "AP Chemistry"
            self.classDescription.text = "The content of this course is approximately equivalent to a first year college chemistry course. Students will examine structure, bonding states of matter, reactions (type, stoichiometry, kinetics, and equilibrium), thermodynamics, and descriptive examination. Students are strongly encouraged to take the Advanced Placement examination in May. This course must be taken concurrently with Advanced Placement Chemistry (Lab)."
            self.classNumber.text = "05451/05452"
        }
        else if selectedClass == "AP Calculus"
        {
            self.navigationItem.title = "AP Calculus"
            self.className.text = "AP Calculus"
            self.classDescription.text = "Combined with Calculus 87, this course investigates the fundamentals of differential and integral calculus in preparation for the Calculus AB Advanced Placement examination. This college level course prepares upper level students for the Advanced Placement test in Calculus, a test for which many colleges grant college credit."
            self.classNumber.text = "04861/04862"
        }
        else if selectedClass == "AP Statistics"
        {
            self.navigationItem.title = "AP Statistics"
            self.className.text = "AP Statistics"
            self.classDescription.text = "This course will focus on four themes: exploratory analysis, planning of a study, probability, and statistical inference. Students will prepare to take the Advanced Placement Statistics exam. This is a college level course. If students have not completed 04760 and 04770, concurrent enrollment is recommended."
            self.classNumber.text = "04881/04882"
        }
        else if selectedClass == "College Speech Communication"
        {
            self.navigationItem.title = "College Speech Communication"
            self.className.text = "College Speech Communication"
            self.classDescription.text = "This course includes the theory and practice of oral communications, development of poise, confidence and skill in speech organization and delivery, emphasis on frequent speaking, development of standards of criticism and selection and organization of material. Upon successful completion of this course, students will receive Harper transcripted SPE 101 credit."
            self.classNumber.text = "03890"
        }
        else if selectedClass == "Entrepreneurship"
        {
            self.navigationItem.title = "Entrepreneurship"
            self.className.text = "Entrepreneurship"
            self.classDescription.text = "This course offers students an authentic entrepreneurship experience, allowing them to create and fully develop their own product or service. Real entrepreneurs and business experts serve as volunteer coaches and mentors guiding student teams through the Lean Startup processes of developing hypotheses about a business concept, testing those hypotheses, adapting, and further iteration. The program also includes foundational business topics such as marketing and finance. Upon successful completion of this course, students will receive National Louis University MGT476 credit."
            self.classNumber.text = "05681/05682"
        }
        else if selectedClass == "Foods 1-2"
        {
            self.navigationItem.title = "Foods 1-2"
            self.className.text = "Foods 1-2"
            self.classDescription.text = "This is an introductory course in food preparation and nutrition that includes classroom and laboratory experiences. Class work emphasizes time management and safety as students gain basic knowledge and skills in food preparation. Units of instruction include breakfast foods, lunches, convenience cooking, and desserts."
            self.classNumber.text = "05780"
        }
        else if selectedClass == "Culinary Arts/ProStart 1-2"
        {
            self.navigationItem.title = "Culinary Arts/ProStart 1-2"
            self.className.text = "Culinary Arts/ProStart 1-2"
            self.classDescription.text = "This course helps students attain the knowledge and develop skills for the foodservice industry, our country’s fastest-growing industry. Students will sharpen culinary skills while gaining experience in the industry. This course will follow the ProStart curriculum certified by the National Restaurant Association (NRA) and Illinois Restaurant Association (IRA) and over the first year of a two-year program. A related, School-Business partnership will enhance the students’ understanding of the commercial food skill standards, with a chance to intern in a related job. This course is part of the District 214 dual credit program and will grant Harper College credit toward an associate of bachelor’s degree. Upon successful completion of the course, students will receive Harper Food Standards and Sanitation (FSM 114) credit. "
            self.classNumber.text = "05711/05712"
        }
        else if selectedClass == "AP Environmental Science"
        {
            self.navigationItem.title = "AP Environmental Science"
            self.className.text = "AP Environmental Science"
            self.classDescription.text = "The content of this course is approximately equal to a one-semester, introductory-level college course in environmental science. The topics covered are interrelationships in the natural world, identifying and analyzing environmental problems both natural and human-made, evaluating the relative risks associated with these problems, and examining alternative solutions for resolving or preventing them. The aim of this course is to prepare students for satisfactory performance on the Advanced Placement examination given in May. Students enrolled in this class will be strongly encouraged to take the Advanced Placement examination."
            self.classNumber.text = "05431/05432"
        }
        else if selectedClass == "AP Biology"
        {
            self.navigationItem.title = "AP Biology"
            self.className.text = "AP Biology"
            self.classDescription.text = "This course provides a detailed presentation of the fundamental principles of life through a content experience. The general topics, which will place emphasis on both plants and animals, include the chemical basis of life; the cell; genetics and reproduction; evolution; the structure, function, and classification of organisms; and ecology. One aim of the course is to prepare students for satisfactory performance on the Advanced Placement examination given in May. Students enrolled in this class will be strongly encouraged to take the Advanced Placement examination. This course must be taken concurrently with Advanced Placement Biology (Lab)."
            self.classNumber.text = "05411/05412"
        }
        else if selectedClass == "Zoology"
        {
            self.navigationItem.title = "Zoology"
            self.className.text = "Zoology"
            self.classDescription.text = "This course studies animal anatomy and physiology with emphasis on comparative study of the taxonomical groups of animals. Laboratory work includes dissection and microscope use."
            self.classNumber.text = "05310"
        }
        else if selectedClass == "PLTW Principals of Engineering Design"
        {
            self.navigationItem.title = "PLTW Principals of Engineering Design"
            self.className.text = "PLTW Principals of Engineering Design"
            self.classDescription.text = "Principles of Engineering is designed to help students understand career possibilities in engineering and engineering technology. Exploring engineering systems and manufacturing processes, students will continue to develop the problem solving skills used on the college level and in the work place. In addition, students will learn how engineers address concerns about the social and political consequences created by technological change."
            self.classNumber.text = "06921/06922"
        }
        else if selectedClass == "AP Art History"
        {
            self.navigationItem.title = "AP Art History"
            self.className.text = "AP Art History"
            self.classDescription.text = "The advanced placement offering in Art History is designed to provide the same benefits to secondary school students as those provided by an introductory college course in art history; an understanding and knowledge of architecture, sculpture, painting, and other art forms within diverse historical and cultural contexts. In the course, students examine and critically analyze major forms of artistic expression from the past and present from a variety of cultures. While visual analysis is the fundamental tool of the art historian, art history also emphasizes understanding works in context, considering issues as patronage, gender, and the functions and effects of works of art. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01441/01442"
        }
        else if selectedClass == "Art 1"
        {
            self.navigationItem.title = "Art 1"
            self.className.text = "Art 1"
            self.classDescription.text = "To develop attitudes and skills towards artistic and human values based on the concepts of visual communication and expressions, students will experience visual elements and design principles through a sequential arrangement of problems utilizing selected techniques and art media. Course work includes drawing, color theory, painting, printmaking, two-dimensional design, and three-dimensional design. It also provides a context in which the student may see the relationship of his work to the continuum of historical to contemporary art. Students will also study how visual arts interrelate with the other arts. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01011/01012"
        }
        else if selectedClass == "Graphic Art Design"
        {
            self.navigationItem.title = "Graphic Art Design"
            self.className.text = "Graphic Art Design"
            self.classDescription.text = "This course combines study in visual art and graphic arts. The visual art component of the class explores two and three-dimensional design through a wide range of media including drawing, painting, jewelry, sculpture, and computer imaging. The graphic arts component will address technologies employed in the graphic arts field, ranging from layout to production printing. This course is offered in conjunction with Graphic Arts Design (06440). This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "06440"
        }
        else if selectedClass == "Woodworking 1-2"
        {
            self.navigationItem.title = "Woodworking 1-2"
            self.className.text = "Woodworking 1-2"
            self.classDescription.text = "Instruction stresses the development of knowledge and skills needed for product design and production, recognizing appropriate safety and workmanship standards, and the application of knowledge regarding woodworking tools, materials, and processes. This class emphasizes teamwork, career awareness, decision-making, and time management skills."
            self.classNumber.text = "06290"
        }
        else if selectedClass == "Practical Architectural Construction - PAC"
        {
            self.navigationItem.title = "Practical Architectural COnstruction - PAC"
            self.className.text = "Practical Architectural Construction - PAC"
            self.classDescription.text = "This course provides actual on-site work experience. Students have the opportunity to work with the tools of carpentry and related trades while building a single-family residence on a chosen job site in the district. This course is part of the District 214 dual credit program. Upon successful completion of the first year of the course, and the submission of a Harper College application students will receive Harper College MNT 115 credit. Upon successful completion of the second year of the course, and the submission of a Harper College application, students will receive Harper College MNT 215 credit."
            self.classNumber.text = "06191/06192"
        }
        else if selectedClass == "Introduction to Business"
        {
            self.navigationItem.title = "Introduction to Business"
            self.className.text = "Introduction to Business"
            self.classDescription.text = "Introduction to Business is designed for all students interested in understanding how economics relates to everyday living in the business world for the worker, consumer, and citizen. Students will learn about banking, insurance, credit, practical money management, consumer protection, communications, and career planning. This course satisfies the state consumer education requirement."
            self.classNumber.text = "05601/05602"
        }
        else if selectedClass == "Media Technology 1-4"
        {
            self.navigationItem.title = "Media Technology 1-4"
            self.className.text = "Media Technology 1-4"
            self.classDescription.text = "In this course students are introduced to the methods, software, and equipment used in television and radio broadcasting. Students will learn the basics of camera operation, lighting and audio techniques, and editing methods used in the production of video. Students will also learn to create multimedia presentations that can be used in other academic and vocational environments."
            self.classNumber.text = "06950"
        }
        else if selectedClass == "Creative Writing"
        {
            self.navigationItem.title = "Creative Writing"
            self.className.text = "Creative Writing"
            self.classDescription.text = "Designed for students who have demonstrated mastery of writing skills, this course provides experience in writing various literary forms which may include poetry, short story, drama, and nonfiction. It includes opportunities to write for publication. Students should be receptive to experimenting with a variety of techniques and subjects. They should also be willing to share their writing."
            self.classNumber.text = "03910"
        }
        else if selectedClass == "English Literature and Composition"
        {
            self.navigationItem.title = "English Literature and Composition"
            self.className.text = "English Literature and Composition"
            self.classDescription.text = "This course prepares the upper-level student for the Advanced Prerequisite: Placement test in Literature and Composition, a test for which many colleges grant college credit. The course focuses on intense analysis and discussion of selected literary classics. Writing assignments are frequent, emphasizing critical and analytical compositions."
            self.classNumber.text = "04051/04052"
        }
        else if selectedClass == "Journalism 1-8"
        {
            self.navigationItem.title = "Journalism 1-8"
            self.className.text = "Journalism 1-8"
            self.classDescription.text = "Students will learn to interview people in order to gather and evaluate information. They will use this information to write news, sports, editorial, in-depth, and feature stories. They will also learn to write headlines and captions. Part of the course will focus on editing and proofreading stories for publication in the school newspaper or yearbook. Students will learn about the historical perspective of the American press and the legal and social responsibilities that come with the operations of school publications. Credit earned in this course will not apply toward the number of required in English core curriculum credits. However, the credit does apply toward graduation. Students should also enroll in Journalistic Writing 2 (03120)."
            self.classNumber.text = "03110"
        }
        else if selectedClass == "Spanish"
        {
            self.navigationItem.title = "Spanish"
            self.className.text = "Spanish"
            self.classDescription.text = "This course is an introduction to the Spanish language and culture with an emphasis on understanding and speaking the language. Students will develop listening, speaking, reading, and writing skills and acquire topical vocabulary and knowledge of elementary grammar. This class also provides insight into Hispanic culture (geography, cross-cultural differences, and current events)."
            self.classNumber.text = "07331/07332"
        }
        else if selectedClass == "French"
        {
            self.navigationItem.title = "French"
            self.className.text = "French"
            self.classDescription.text = "This course provides an introduction to the French language and culture with an emphasis on understanding and speaking elementary French phrases used in everyday conversation. Students first learn listening comprehension, pronunciation, and speaking skills. Reading and writing are learned through the study of previously introduced materials."
            self.classNumber.text = "07001/07002"
        }
        else if selectedClass == "Italian"
        {
            self.navigationItem.title = "Italian"
            self.className.text = "Italian"
            self.classDescription.text = "This course presents an introduction to the Italian language and culture. Listening, speaking, reading, and writing skills are developed with an emphasis on understanding and speaking the language. Students will master the basic structures of everyday conversation and writing. Every effort is made to provide students with opportunities for self-expression in concrete situations. To introduce students to contemporary, non-touristic Italian life and culture, the themes of the various supplementary activities such as dialogue, readings, geography, and history, help convey to students what life is like in Italy today."
            self.classNumber.text = "07451/07452"
        }
        else if selectedClass == "Yearbook 1-8"
        {
            self.navigationItem.title = "Yearbook 1-8"
            self.className.text = "Yearbook 1-8"
            self.classDescription.text = "This laboratory course teaches skills required to work in the publishing field. During this semester students learn principles of information gathering, copy writing, layout, copy fitting, photography, picture cropping, editing, word processing, and proofreading. This class emphasizes accurate and effective communication. Credit earned in this course does not apply to the number of credits required in English. However, the credit does apply toward graduation."
            self.classNumber.text = "03150"
        }
        else if selectedClass == "Advanced Graphic Arts"
        {
            self.navigationItem.title = "Advanced Graphic Arts"
            self.className.text = "Advanced Graphic Arts"
            self.classDescription.text = "This course prepares students for post-secondary experiences in the graphic arts industry. This capstone course can lead directly to a number of post-secondary institutions that award certificated, associate and baccalaureate degrees, and establishes skills that transition directly into the workspace. This class’s production-oriented atmosphere challenges students to build on previous course work and become self-directed learners who create professional, high profile printing projects. Upon successful completion of this course students will receive Harper Digital Imaging (GRA103) credit."
            self.classNumber.text = "06301/06302"
        }
        else if selectedClass == "Computer Programming"
        {
            self.navigationItem.title = "Computer Programming"
            self.className.text = "Computer Programming"
            self.classDescription.text = "This is a collaborative, lab based, hands-on course focusing on the development of applications for mobile devices and an introduction to computer networking basics. Students will work in teams, using real-world tools and processes to develop and redesign existing mobile apps in addition to building new apps of their own. Students do not need any prior computer programming experience to successfully complete this course."
            self.classNumber.text = "09040/09050"
        }
        else if selectedClass == "Advanced 2-D Art Studio"
        {
            self.navigationItem.title = "Advanced 2-D Art Studio"
            self.className.text = "Advanced 2-D Art Studio"
            self.classDescription.text = "This course continues and expands on Two-Dimensional Art 3 and is designed for those students who completed the first three courses. In this advanced course, the emphasis centers on contemporary issues in 2-D design. Students will search for personal approaches and solutions to creating a visual statement and exploring new techniques in various 2-D media. This course is advantageous to students interested in AP Studio Art at the collegiate level, and/or the exploration of various career pathways in Two-Dimensional Art. This course may be repeated for credit."
            self.classNumber.text = "01201/01202"
        }
        else if selectedClass == "Advanced 3-D Art Studio"
        {
            self.navigationItem.title = "Advanced 3-D Art Studio"
            self.className.text = "Advanced 3-D Art Studio"
            self.classDescription.text = "This course progressively continues and expands on ThreeDimensional Art 3 and is designed for those students who completed the first three courses. In this advanced course, the emphasis centers on contemporary issues in 3-D design. Students will search for personal approaches and solutions to creating a visu statement and exploring new techniques in various 3-D media. This course is advantageous to students interested in AP Studio Art, the study of Three-Dimensional Art at the collegiate level, and/or the exploration of various career pathways in Three-Dimensional Art. This course may be repeated for credit."
            self.classNumber.text = "01211/01212"
        }
        else if selectedClass == "District Internship"
        {
            self.navigationItem.title = "District Internship"
            self.className.text = "District Internship"
            self.classDescription.text = "This is an advanced course available for students who are extremely committed to pursuing a specific career and have the knowledge, skill, and dedication required to engage in a very rigorous and challenging authentic learning experience. Internships allow students to be placed at various sites in either the first or second semester or during the six weeks of summer school. All internships are unpaid. Consider your schedule and after school activities prior to applying for admission to this program."
            self.classNumber.text = "09870"
        }
        else if selectedClass == "AP Studio Art 3-D Design"
        {
            self.navigationItem.title = "AP Studio Art 3-D Design"
            self.className.text = "AP Studio Art 3-D Design"
            self.classDescription.text = "This portfolio is intended to address sculptural issues. 3-D Design involves purposeful decision-making about using the elements and principles of art within space in meaningful ways. For this portfolio, students are asked to demonstrate mastery of 3-D design through any three-dimensional approach, including, but not limited to, figurative sculpture, architectural models, metal work, ceramics, glass work, installation, assemblage and 3-D fabric/fiber arts."
            self.classNumber.text = "01181/01182"
        }
        else if selectedClass == "AP Studio Art 2-D Design"
        {
            self.navigationItem.title = "AP Studio Art 2-D Design"
            self.className.text = "AP Studio Art 2-D Design"
            self.classDescription.text = "This portfolio is intended to address two-dimensional (2-D) design issues. Design involves purposeful decision making about how to use the elements and principles of art in meaningful ways. For this portfolio, students are asked to demonstrate mastery of 2-D design through any two-dimensional medium or process, including, but not limited to, photography, digital imaging, collage, weaving, illustration, painting, graphic design and printmaking."
            self.classNumber.text = "01171/01172"
        }
        else if selectedClass == "Art Imaging 1-2"
        {
            self.navigationItem.title = "Art Imaging 1-2"
            self.className.text = "Art Imaging 1-2"
            self.classDescription.text = "This is a beginning art course that teaches drawing, color theory, and the elements and principles of design. Students will use these tools in creative and inventive ways to communicate their visual ideas. The students use technology such as digital cameras, slide scanners, and flat bed scanners to digitize their original photographs, drawings, and designs. They also use Photoshop and Illustrator to manipulate and enhance their digital images. Students in this course create personal and original works of art. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01450"
        }
        else if selectedClass == "Photography 1-3"
        {
            self.navigationItem.title = "Photography 1-3"
            self.className.text = "Photography 1-3"
            self.classDescription.text = "Employing design principles and visual elements, students will explore personal imagery and digital imaging. Camera, film, and darkroom processes and procedures will be the foundation of this class. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01220"
        }
        else if selectedClass == "Advanced Photography Studio"
        {
            self.navigationItem.title = "Advanced Photography"
            self.className.text = "Advanced Photography Studio"
            self.classDescription.text = "This course progressively continues and expands on Photography 3 and is designed for those students who completed the first three courses. In this advanced courses, the emphasis is to develop the conceptual and technical skills necessary for an individual portfolio of work. This course is advantageous to students interested in AP Studio Art, the study of photography at the collegiate level, and/or the exploration of various career pathways in photography. This course may be repeated for credit."
            self.classNumber.text = "01490"
        }
        else if selectedClass == "Graphic Arts Technology 1-4"
        {
            self.navigationItem.title = "Graphic Arts Technology 1-4"
            self.className.text = "Graphic Arts Technology 1-4"
            self.classDescription.text = "This course provides students with an overview of the graphic arts industry and will give them an opportunity to become involved with hands-on experiences in lithography and screen-printing. Each student will have opportunities to gain an insight into the graphic arts industry in order to investigate a possible career. "
            self.classNumber.text = "06250"
        }
        else if selectedClass == "Advanced Theater Workshop"
        {
            self.navigationItem.title = "Advanced Theater Workshop"
            self.className.text = "Advanced Theater Workshop"
            self.classDescription.text = "This course is a continuation and expansion of Acting 4 and is designed for those students who want to continue to explore and develop the conceptual and technical sills and leadership necessary for putting on various theatrical productions. This course is advantageous to students interested in the study of theatre, directing, or technical theater at the collegiate level, and/or the exploration of various career pathways in theatre. This does not fulfill the English graduation credit. This course may be repeated for credit."
            self.classNumber.text = "01740"
        }
        else if selectedClass == "Harmony and Arranging 1-2"
        {
            self.navigationItem.title = "Harmony and Arranging 1-2"
            self.className.text = "Harmony and Arranging 1-2"
            self.classDescription.text = "This course is an intensive study of the music fundamentals: melody, harmony, rhythm, instrumentation, conducting, sight singing, and analysis as they apply to music literature of all historical periods. Students’ projects in composition and arranging are designed for those students with a previous musical background. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01871/01872"
        }
        else if selectedClass == "AP Music Theory"
        {
            self.navigationItem.title = "AP Music Theory"
            self.className.text = "AP Music Theory"
            self.classDescription.text = "Music Theory is a course designed for students interested in pursuing a career in a music-related field or those students interested in continuing their musical studies after high school. This class will focus on aural training, sight-reading, and advanced music analysis. In addition to reviewing the basics of music, students will explore advanced musical forms, historical periods, composers and compositional techniques. Students will really understand the how and why of music while at the same time preparing to take the AP examination in May."
            self.classNumber.text = "01681/01682"
        }
        else if selectedClass == "Orchestra Winds and Percussion"
        {
            self.navigationItem.title = "Orchestra Winds and Percussion"
            self.className.text = "Orchestra Winds and Percussion"
            self.classDescription.text = "Winds and percussion students who participate in a District 214 school band program will be in this course which will meet when the full orchestra practices."
            self.classNumber.text = "01891/01892"
        }
        else if selectedClass == "Teacher Internship"
        {
            self.navigationItem.title = "Teacher Internship"
            self.className.text = "Teacher Internship"
            self.classDescription.text = "This program is designed for students who wish to explore a career in education. It is similar to a student teaching experience because interns perform a variety of tasks representative of the daily activities of a teacher. These tasks include large or small group instruction, preparation of instructional materials, and clerical work. Interns may choose to work with a certified teacher at their high school or at a local elementary or middle school. Students are required to provide their own transportation to off-campus locations."
            self.classNumber.text = "06830"
        }
        else if selectedClass == "Vocal Ensemble"
        {
            self.navigationItem.title = "Vocal Ensemble"
            self.className.text = "Vocal Ensemble"
            self.classDescription.text = "Singers in Vocal Ensemble 1 are selected for their vocal and performance capabilities through the audition process. In most cases, membership in the Advanced Mixed Choir is required. Activities are performance oriented and often require theatrical movement. Students in this class study a wide variety of literature ranging from classical to popular/jazz styling, depending on the group’s area of specialization. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01631/01632"
        }
        else if selectedClass == "Beginning Mixed Choir"
        {
            self.navigationItem.title = "Beginning Mixed Choir"
            self.className.text = "Beginning Mixed Choir"
            self.classDescription.text = "This class will present choral music to beginning singers in a challenging and educational way stressing the basics of choral singing and fundamentals of music reading. Students will learn about good vocal technique as well as how music relates to other forms of art. The class is open to students who are interested in singing. (This course is recommended for girls in grades 10-12 and boys in grades 9-12.) This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01571/01572"
        }
        else if selectedClass == "Treble Choir"
        {
            self.navigationItem.title = "Teble Choir"
            self.className.text = "Treble Choir"
            self.classDescription.text = "Treble Choir is for sophomore, junior, and senior students with voices in the soprano/alto range. Studies of treble vocal literature, both historic and contemporary, are featured with emphasis placed on sight reading, ear training, vocal production, and musical expression. Students will also study how music interrelates with the other arts. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01541/01542"
        }
        else if selectedClass == "Advanced Mixed Choir"
        {
            self.navigationItem.title = "Advanced Mixed Choir"
            self.className.text = "Advanced Mixed Choir"
            self.classDescription.text = "Composed primarily of juniors and seniors, this selective mixed group of voices represents students capable of performing more advanced choral literature. Through various study and performance practices, students attain a high degree of proficiency in sight reading, ear training, and vocal development. Students will also study how music interrelates with the other arts. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01591/01592"
        }
        else if selectedClass == "Orchesis"
        {
            self.navigationItem.title = "Orchesis"
            self.className.text = "Orchesis"
            self.classDescription.text = "Orchesis is an advanced dance class for students selected by audition. This course emphasizes the development of advanced techniques in numerous dance forms as well as creative expression, aesthetic discrimination, and performance qualities. Successful completion of this course meets the fine arts graduation requirement."
            self.classNumber.text = "08571/08572"
        }
        else if selectedClass == "Guitar 1-2"
        {
            self.navigationItem.title = "Guitar 1-2"
            self.className.text = "Guitar 1-2"
            self.classDescription.text = "Students interested in learning to play the classical guitar will receive instruction in music notation and simple rhythmic patterns as well as right and left hand finger and rhythmic patterns. Students will study basic to moderately difficult music and how music interrelates with the other arts. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01841/01842"
        }
        else if selectedClass == "Dance 1-3"
        {
            self.navigationItem.title = "Dance 1-3"
            self.className.text = "Dance 1-3"
            self.classDescription.text = "This course engages students in basic dance education and appreciation of dance as a physical activity, art form, and lifetime activity. Students explore jazz, ballet, modern, folk, and tap techniques. Boys and girls of all ages are welcome. Students enrolled in the course must purchase appropriate dance attire. Successful completion of this course meets the fine arts graduation requirement."
            self.classNumber.text = "08550"
        }
        else if selectedClass == "Acting 1-2"
        {
            self.navigationItem.title = "Acting 1-2"
            self.className.text = "Acting 1-2"
            self.classDescription.text = "This course is for students who desire initial training in acting. The major focus is on improvisation. The course stresses activities which increase students’ ability to concentrate, accentuate their sensory awareness, establish a knowledge of their relationship to the world around them, strengthen their powers of observation, and underscore their cooperation with others in solving acting problems. Students must perform as part of this course work. Credit earned in this course does not apply to the number of credits required in English. However, the credit does apply toward graduation and satisfies the fine arts requirement."
            self.classNumber.text = "03060"
        }
        else if selectedClass == "Orchestra"
        {
            self.navigationItem.title = "Orchestra"
            self.className.text = "Orchestra"
            self.classDescription.text = "For students wishing to become members of a major performing group. String sections meet daily. Orchestra members must be proficient on a string instrument as well as in basic music fundamentals. Orchestra achieves full symphonic instrumentation through the addition of selected woodwind, brass, and percussion players. Major concert performances are scheduled throughout the year at both the building and district levels. Students will also study how music interrelates with the other arts. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01831/01832"
        }
        else if selectedClass == "Concert Orchestra"
        {
            self.navigationItem.title = "Concert Orchestra"
            self.className.text = "Concert Orchestra"
            self.classDescription.text = "Concert Orchestra is a class for students who perform at the intermediate to advanced level. This class meets daily for one period and performs four to six times each year both in school and the community. Students receive one credit for each year they are in the class. This course meets the District 214 fine arts requirement."
            self.classNumber.text = "01791/01792"
        }
        else if selectedClass == "Beginning Strings"
        {
            self.navigationItem.title = "Beginning Strings"
            self.className.text = "Beginning Strings"
            self.classDescription.text = "For the student who is interested in learning to play the violin, viola, cello, or string bass. This course offers instruction in music notation and simple rhythmic patterns as well as bowing techniques, finger and rhythm patterns, and an introduction to the higher positions. Students will study basic to moderately difficult musical literature as well as how music interrelates with the other arts."
            self.classNumber.text = "01821/01822"
        }
        else if selectedClass == "String Ensemble"
        {
            self.navigationItem.title = "String Ensemble"
            self.className.text = "String Ensemble"
            self.classDescription.text = "This course emphasizes the standard 18th and 19th century string ensemble literature as well as the works of contemporary composers. Public performance may be an integral part of the course."
            self.classNumber.text = "01901/01902"
        }
        else if selectedClass == "Concert Band"
        {
            self.navigationItem.title = "Concert Band"
            self.className.text = "Concert Band"
            self.classDescription.text = "An intermediate level band open to all qualified students, this performing group requires a basic musical background and fluency on one’s instrument. Members join with the Symphonic Band to perform as a marching band during this season. Concert sessions entail a study of instrumentation fundamentals and techniques at individual, ensemble, and full band levels. Participation in other performing groups is encouraged, including advancement to Symphonic Band. Concert Band maintains an active performance schedule. Students will study how music interrelates with the other arts. Concert Band students must participate in Marching Band. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01771/01772"
        }
        else if selectedClass == "Jazz Band"
        {
            self.navigationItem.title = "Jazz Band"
            self.className.text = "Jazz Band"
            self.classDescription.text = "Jazz Band students explore standard jazz repertoire as well as more advanced and contemporary compositions including those exploring unusual meters and metric change and non-conventional formal structures. Improvisation is expected of all students. Performance on various occasions is anticipated and encouraged. Students will study how music interrelates with the other arts. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01801/01802"
        }
        else if selectedClass == "Instrumental Ensemble"
        {
            self.navigationItem.title = "Instrumental Ensemble"
            self.className.text = "Instrumental Ensemble"
            self.classDescription.text = "Open to all instrumentalists regardless of their instrument, this course emphasizes the development and improvement of jazz techniques and improvisation. Outside classroom activities include several concerts throughout the school year. This course satisfies the district’s fine arts graduation requirement."
            self.classNumber.text = "01811/01812"
        }
        else if selectedClass == "Honors College Business"
        {
            self.navigationItem.title = "Honors College Business"
            self.className.text = "Honors College Business"
            self.classDescription.text = "This course presents marketing as a focus on methods involved in distribution of goods and services. Roles and functions of marketing institutions in business system. Product, price, promotion, and distribution channel policies. Topics include: marketing mix, marketing research, market segmentation, consumer behavior, industrial goods market, product planning, branding and packaging policies, retail and wholesale operations, advertising plans, marketing planning sales promotion techniques, break-even analysis, global marketing, careers in marketing, economic systems, and business ethics. Students who successfully complete the second semester and pass the competency test will receive Harper College credit for Introduction to Business Organization (MGT 111). Upon successful completion of this course, students will receive National Louis University MGT101 credit."
            self.classNumber.text = "05641/05642"
        }
        else if selectedClass == "AP Economics"
        {
            self.navigationItem.title = "AP Economics"
            self.className.text = "AP Economics"
            self.classDescription.text = "This course provides an accelerated study in the field of economics. Students acquire understandings equivalent to those gained in a college level introductory course. Course study emphasizes broad economic theory and principles such as supply and demand, the profit maximizing production level for firms, decisions regarding the use of labor and other resources, and the role of government in economics. This course will prepare students to take the Advanced Placement Exam and also fulfills the consumer education requirement for graduation."
            self.classNumber.text = "07931/07932"
        }
        else if selectedClass == "Honors College Accounting"
        {
            self.navigationItem.title = "Honors College Accounting"
            self.className.text = "Honors College Accounting"
            self.classDescription.text = "This course presents accounting as an information system that produces summary financial statements primarily for users external to a business. Emphasizes the reporting of the effect of transactions and other economic events on the financial statements, accrual v. cash basis, the accounting cycle, monetary assets, inventories, fixed assets, current and long-term liabilities, and owner’s equity. The course assumes a corporate form of organization. Students who successfully complete the second semester and pass competency test will receive Harper College transcripted credit for Harper Introductory to Accounting (ACC101). Upon successful completion of this course, students will receive National Louis University MGT120, MGT121, and MGT122 credit."
            self.classNumber.text = "05551/05552"
        }
        else if selectedClass == "Human Growth and Child Development"
        {
            self.navigationItem.title = "Human Growth and Child Development"
            self.className.text = "Human Growth and Child Development"
            self.classDescription.text = "Students explore topics focusing on child growth and care from conception through childhood with emphasis on the techniques and skills necessary to promote healthy physical, social, emotional, and intellectual development. This course incorporates concepts from child psychology, educational research, biology, sociology, and philosophy. Upon successful completion of 05910 Human Growth and Child Development, 10500 College Introduction to Early Childhood Education, and 05290 Practicum in Early Childhood Education 1, students will receive National Louis University ECE220 credit."
            self.classNumber.text = "05910"
        }
        else if selectedClass == "Practicum in Early Childhood Education 1-4"
        {
            self.navigationItem.title = "Practicum in Early Childhood Education 1-4"
            self.className.text = "Practicum in Early Childhood Education 1-4"
            self.classDescription.text = "This laboratory course concentrates on the practical application of knowledge gained during Human Growth and Child Development. The student will plan activities, teach, supervise, and observe children in a preschool setting. Upon successful completion of this course, and the submission of a Harper College application students will receive Harper ELE101 credit. Upon successful completion of this course and in addition to coursework identified by Harper College, students will receive Harper ELE101 credit. Harper ELE credit can only be earned once from the following courses: 05820, 05830, 05920 and 05950. Upon successful completion of 05910 Human Growth and Child Development, 10500 College Introduction to Early Childhood Education, and 05290 Practicum in Early Childhood Education 1, students will receive National Louis University ECE220 credit."
            self.classNumber.text = "05920"
        }
        else if selectedClass == "AP Psychology"
        {
            self.navigationItem.title = "AP Psychology"
            self.className.text = "AP Psychology"
            self.classDescription.text = "This course provides an accelerated study of psychology. Students acquire understandings equivalent to those gained in a college level introductory course. Coursework offers a general study of terms and concepts that psychologists use as well as concentration in theories of learning development, personality, emotions, feelings, self awareness, problems of the unconscious, and social psychology. This course will prepare students to take the Advanced Placement Exam."
            self.classNumber.text = "07761/07762"
        }
        else if selectedClass == "Small Business Management"
        {
            self.navigationItem.title = "Small Business Management"
            self.className.text = "Business Management"
            self.classDescription.text = "This course is designed for students interested in business management. Through concentration on the functions of management, students are exposed to the theories of how to get things done through people. Areas of study include organizational planning, human resource management, organizations, and management information systems."
            self.classNumber.text = "05740"
        }
        else if selectedClass == "Education Academy"
        {
            self.navigationItem.title = "Education Academy"
            self.className.text = "Education Academy"
            self.classDescription.text = "This is an advanced course for students interested in careers in education. Students alternate days of on-site experiential learning with college-level coursework in the classroom. Using a 150-minute block of time daily, this course blends topics existing in other areas of the curriculum with material to be developed specifically for this field of study. Students will play an active role in the learning process. Class topics will be determined in part by the experiences the students have on-site, and analyzed through an increased amount of classroom seminar/discussion format. In addition, students will pursue issues of personal interest. This course, taught at Rolling Meadows High School, is open to all district students. Upon successful completion of this course, students will receive National Louis University EPS300 credit."
            self.classNumber.text = "09981/09982"
        }
        else if selectedClass == "AP Coursework in Education and Training Curriculum"
        {
            self.navigationItem.title = "AP Coursework in Curriculum"
            self.className.text = "AP Coursework in Education and Training Curriculum"
            self.classDescription.text = "TBD"
            self.classNumber.text = "00000"
        }
        else if selectedClass == "AP Computer Science"
        {
            self.navigationItem.title = "AP Computer Science"
            self.className.text = "AP Computer Science"
            self.classDescription.text = "Students in this class will design and implement computer programs using current computer language. Topics will include searching and sorting techniques, numerical methods, and recursion. Upon completion of this course students will be able to take Part A of the advanced placement Computer Science exam."
            self.classNumber.text = "09091/09092"
        }
        else if selectedClass == "AP Government"
        {
            self.navigationItem.title = "AP Government"
            self.className.text = "AP Government"
            self.classDescription.text = "This course provides an accelerated study of American government for academically capable juniors and seniors. Students work to understand the nature of governmental decisions and political power in the United States by discussing such topics as the constitutional foundations of American government, political parties and interest groups, civil rights, and civil liberties. This course will prepare students to take the Advanced Placement Exam."
            self.classNumber.text = "07871/07872"
        }
        else if selectedClass == "Naval Science (NJROTC)"
        {
            self.navigationItem.title = "Naval Science (NJROTC)"
            self.className.text = "Naval Science (NJROTC)"
            self.classDescription.text = "This course introduces the beginning cadet to the Navy and the NJROTC program. Students will gain an appreciation for the heritage and traditions of America, with recognition of the historically significant role of sea power. By learning the basics of leadership and citizenship, cadets earn a growing sense of pride in their organization, peers, and self."
            self.classNumber.text = "08451/08452"
        }
        else if selectedClass == "AP European History"
        {
            self.navigationItem.title = "AP European History"
            self.className.text = "AP European History"
            self.classDescription.text = "This course provides an accelerated study of European history. Students acquire understandings equivalent to those gained in a college level introductory course. Coursework offers general narrative of European history from 1450. The course also includes an examination of the political, diplomatic, intellectual, cultural, social, and economic history of Europe. The course will prepare students to take the Placement Exam."
            self.classNumber.text = "07671/07672"
        }
        else if selectedClass == "Introduction to Healthcare Field"
        {
            self.navigationItem.title = "Introduction to Healthcare Field"
            self.className.text = "Introduction to Healthcare Field"
            self.classDescription.text = "This program is a survey course offering a broad range of information on career opportunities in the health field and available educational programs in Illinois. Participation in this course will assist the high school student in making appropriate career decisions in the health occupations. Students will receive two semester hours of Harper College Introduction to Health Care Today (HSC105) credit."
            self.classNumber.text = "10180"
        }
        else if selectedClass == "Medical Terminology"
        {
            self.navigationItem.title = "Medical Terminolgy"
            self.className.text = "Medical Terminology"
            self.classDescription.text = "Emphasizes the origin and the basic structure of medical words, including prefixes, suffixes, word roots, combining forms and plurals. Offers pronunciation, spelling, and definition of medical terms based on the body systems approach. Emphasis on rendering a professional vocabulary required for work in the health care field. Students who pass the competency course exam at D214 or course at Harper College qualify for Harper Health Science Career (HSC112) credit."
            self.classNumber.text = "06640"
        }
        else if selectedClass == "Nursing Assistant Training"
        {
            self.navigationItem.title = "Nursing Assistant Training"
            self.className.text = "Nursing Assistant Training"
            self.classDescription.text = "This course provides theory and training in the basic skills essential to the practice of health care workers who will assist the nurse in the care of patients in a variety of health care settings. The course includes simulated practice and opportunity for clinical application. The course is approved by the Illinois Department of Public Health, Office of Health Regulations and successful completion is required for application for the Nurse Aide Competency exam. Upon successful completion of this course, students will receive Harper Nursing Assistant Certification (CNA101) credit."
            self.classNumber.text = "10200"
        }
        else if selectedClass == "Medical Science Academy"
        {
            self.navigationItem.title = "Medical Science Academy"
            self.className.text = "Medical Science Academy"
            self.classDescription.text = "This is an advanced course for students interested in careers in medicine. Students alternate days of on-site experiential learning with college-level coursework in the classroom. Using a 150-minute block of time daily, this course blends topics existing in other areas of the curriculum with material to be developed specifically for this field of study. Students will play an active role in the learning process. Class topics will be determined in part by the experiences the students have on-site, and analyzed through an increased amount of classroom seminar/discussion format. In addition, students will pursue issues of personal interest."
            self.classNumber.text = "09861/09862"
        }
        else if selectedClass == "Health Occupations Career Observation (Harper)"
        {
            self.navigationItem.title = "Health Occupations Career Observation (Harper)"
            self.className.text = "Health Occupations Career Observation (Harper)"
            self.classDescription.text = "This course provides students an opportunity to observe selected occupations within a health care setting. The student will attend 13 two-hour sessions under the supervision of the instructor and departmental specific mentors. Upon successful completion of this course, students will receive Harper Health Occupations Career Observation (HSC106) credit."
            self.classNumber.text = "10190"
        }
        else if selectedClass == "Human Physiology"
        {
            self.navigationItem.title = "Human Physiology"
            self.className.text = "Human Physiology"
            self.classDescription.text = "This course provides an in-depth study of the structure and function of human systems."
            self.classNumber.text = "05280"
        }
        else if selectedClass == "Sociology"
        {
            self.navigationItem.title = "Sociology"
            self.className.text = "Sociology"
            self.classDescription.text = "This course provides a behavioral study of oneself as an individual and his relationship to his social environment. Instruction emphasizes methods, concepts, and the analysis of various social phenomena. Specific units of study include the concept of culture, social stratification, minorities, interpersonal relationships, marriage and the family, and death and dying."
            self.classNumber.text = "07700"
        }
        else if selectedClass == "Sociology of Service Learning"
        {
            self.navigationItem.title = "Sociology of Service Learning"
            self.className.text = "Sociology of Service Learning"
            self.classDescription.text = "This course applies sociological theory to the study of human behaviors in various community contexts including traditional and special education settings as well as in a variety of local social service agencies. Students will study socialization and its effect on exceptional children, the family, the community, and themselves. Students will identify needs in the community, develop programs, and participate in existing programs that meet the needs of the school and the community. This course does not meet the consumer education requirement. A student may take either the fall or spring semester, or both, but can only complete each semester once. The spring course may be taken before the fall course."
            self.classNumber.text = "09330"
        }
        else if selectedClass == "Cosmetology"
        {
            self.navigationItem.title = "Cosmetology"
            self.className.text = "Cosmetology"
            self.classDescription.text = "The 1-year program satisfies 750 hours of the 1500-hour State of Illinois Cosmetology license requirements for students who are interested in pursuing a career in hair, nail and aesthetics. High School District 214 will provide tuition costs for the first year. Students are responsible for course materials and providing reliable transportation. The Cosmetology training sites include Technology Center of Du Page and Technology Campus of Lake County. Students will have an option of selecting one of these sites which meets their scheduling and personal needs. Both programs may include required attendance during evenings and non-attendance days including Saturdays, and summer and holiday breaks."
            self.classNumber.text = "06781/06782"
        }
        else if selectedClass == "Personal Training Certification"
        {
            self.navigationItem.title = "Personal Training Certification"
            self.className.text = "Personal Training Certification"
            self.classDescription.text = "This course is designed to give students the knowledge and understanding necessary to prepare for the ACE personal trainer certification exam and become effective personal trainers. This course presents the ACE Integrated Fitness Training (ACE IFT) Model as a comprehensive system for designing individualized programs based on each client’s unique health, fitness, and goals. The information covered by this course and the ACE IFT Model will help students learn how to facilitat rapport, adherence, self-efficacy and behavior change in clients, as well as design programs that help clients to improve posture, movement, flexibility, balance, core function, cardio respiratory fitness, and muscular endurance and strength. This course will have a lab and classroom component. This course does not count toward physical education requirements."
            self.classNumber.text = "04390"
        }
        else if selectedClass == "Advanced Strength and Conditioning"
        {
            self.navigationItem.title = "Advanced Strength and COnditioning"
            self.className.text = "Advanced Strength and Conditioning"
            self.classDescription.text = "This is an advanced physical education class for students interested in achieving their highest level of health-related fitness. Class activity emphasizes improving health-related fitness through weight training, exercises, and running programs."
            self.classNumber.text = "08660"
        }
        else if selectedClass == "Computer Repair A Certification"
        {
            self.navigationItem.title = "Computer Repair A Certification"
            self.className.text = "Computer Repair A Certification"
            self.classDescription.text = "Computer Repair A+ Certification is a two-semester district course offered at JHHS, RMHS and WHS and is open to all students in District 214. This is a PC based course designed to cover the following subjects: microcomputer fundamentals, PC hardware, Microsoft operating systems, troubleshooting, processors, system board devices, input/output devices, optical storage, video displays, printers, multimedia, networking, installation, configuration, upgrading, and diagnosing. Students successfully completing this course will have the opportunity to sit for the A+ Certification exam, which is a recognized industry certification for PC repair technicians. Students who successfully complete this course will receive Harper College dual credit course A+ Hardware (NET111) credit."
            self.classNumber.text = "06741/06742"
        }
        else if selectedClass == "CISCO Networking Basics"
        {
            self.navigationItem.title = "CISCO Networking Basics"
            self.className.text = "CISCO Networking Basics"
            self.classDescription.text = "This course is the first of two semester courses in the computer repair program course capstone sequence. The course content is regulated by industry standards and rewards the student, after successful completion of two semesters, with an industry certificate. Students complete the first two semesters at the high school site and receive Harper College dual credit course NET121 credit."
            self.classNumber.text = "06750"
        }
        else if selectedClass == "CISCO Routers and Routering Basics"
        {
            self.navigationItem.title = "CISCO Routers and Routering Basics"
            self.className.text = "CISCO Routers and Routering Basics"
            self.classDescription.text = "This course is the second of two semester courses in the computer repair program course capstone sequence. The course content is regulated by industry standards and rewards the student, after successful completion of two semesters, with an industry certificate. Students complete the first two semesters at the high school site and receive Harper College dual credit course NET122 credit."
            self.classNumber.text = "06760"
        }
        else if selectedClass == "Robotics"
        {
            self.navigationItem.title = "Robotics"
            self.className.text = "Robotics"
            self.classDescription.text = "This course will apply problem solving as a tool for the process of machine design. Students will use skills to create, design, and fabricate radio-controlled robots. First year students participating in the District’s Wildstang FIRST Robotics program will receive Robotics 1 credit for their participation. Students must apply to participate in WildStang FIRST Robotics."
            self.classNumber.text = "06801/06802"
        }
        else if selectedClass == "Law and Individual"
        {
            self.navigationItem.title = "Law and Individual"
            self.className.text = "Law and Individual"
            self.classDescription.text = "This course will focus on America’s social and economic problems that investigate such topics as law and the legal system, criminal law, juvenile justice, individual rights, influence on consumers, prejudice and discrimination, and American attitudes. The primary objective of this course is to give students an insight into the causes and consequences of problems which they face in the United States today. This course satisfies the consumer education requirement."
            self.classNumber.text = "07860"
        }
        else if selectedClass == "American Law"
        {
            self.navigationItem.title = "American Law"
            self.className.text = "American Law"
            self.classDescription.text = "This course will focus on America’s legal system, civil law, criminal law, juvenile justice, individual rights, influence on consumers, prejudice and discrimination, and American attitudes. The primary objective of this course is to give students an insight into the causes and consequences of legal and societal problems that they face in the United States today. This course also serves the purpose of providing students an understanding of potential careers connected to the American legal system. This course does not meet the state consumer education graduation requirement."
            self.classNumber.text = "07790"
        }
        else if selectedClass == "Introduction to Fire Science(Harper College)"
        {
            self.navigationItem.title = "Introduction to Fire Science(Harper College)"
            self.className.text = "Introduction to Fire Science(Harper College)"
            self.classDescription.text = "This course provides an overview of fire protection; career opportunities in fire protection and related fields; philosophy and history of fire protection/service; fire loss analysis; organization and function of public and private fire protection services; fire departments as part of local government; laws and regulations affecting the fire service; fire service nomenclature; specific fire protection functions; basic fire chemistry and physics; fire protection systems; introduction to fire strategy and tactics. Upon successful completion of this course, students will receive Harper Fundamentals of Fire Safety (FIS 100) credit."
            self.classNumber.text = "10130"
        }
        else if selectedClass == "Fire Behavior and Combustion(Harper College)"
        {
            self.navigationItem.title = "Fire Behavior and Combustion(Harper College)"
            self.className.text = "Fire Behavior and Combustion(Harper College)"
            self.classDescription.text = "This course explores the theories and principles of how and why fires start, spread, and are brought under control. Students will be able to relate the principles by which fires spread with the appropriate methods of control. Upon successful completion of this course, students will receive Harper Fire Behavior and Combustion (FIS 121) credit."
            self.classNumber.text = "10140"
        }
        else if selectedClass == "Introduction to Criminal Justice(Harper College)"
        {
            self.navigationItem.title = "Introduction to Criminal Justice(Harper College)"
            self.className.text = "Introduction to Criminal Justice(Harper College)"
            self.classDescription.text = "This course studies the history, role, development and constitutional aspects of law enforcement and public safety. The course includes a review of agencies and functions involved in processes of administration of criminal justice. Upon successful completion of this course, students will receive Harper Introduction to Criminal Justice LEJ 101 credit."
            self.classNumber.text = "10100"
        }
        else if selectedClass == "Introduction to Corrections(Harper College)"
        {
            self.navigationItem.title = "Introduction to Corrections(Harper College)"
            self.className.text = "Introduction to Corrections(Harper College)"
            self.classDescription.text = "This course provides the student with an integrated knowledge about the system through which the criminal offender is processed. Emphasis will be placed upon the philosophical bases of punishment and treatment techniques in institutional and community-based programs plus parole programs. Upon successful completion of this course, students will receive Harper Corrections (LEJ) 104 credit."
            self.classNumber.text = "10120"
        }
        else if selectedClass == "Fashion Design"
        {
            self.navigationItem.title = "Fashion Design"
            self.className.text = "Fashion Design"
            self.classDescription.text = "This course provides an overview of the fashion industry, including design, construction, production and marketing of women’s, mens, and children’s fashions from development of fibers and fabrics to the strategies of fashion merchandisers and retailers."
            self.classNumber.text = "05850"
        }
        else if selectedClass == "Fashion Construction"
        {
            self.navigationItem.title = "Fashion Construction"
            self.className.text = "Fashion Construction"
            self.classDescription.text = "This course provides students the opportunity to demonstrate a working knowledge of handling fabrics, utilizing correct grain lines, stitches, seams, zippers, buttons and basic construction methods of garment making in a laboratory setting. Garments are constructed as well as a skills book. Upon successful completion of this course, and the submissions of a Harper College application students will receive Harper FAS100 credit."
            self.classNumber.text = "05870"
        }
        else if selectedClass == "Fashion Merchandising"
        {
            self.navigationItem.title = "Fashion Merchandising"
            self.className.text = "Fashion Merchandising"
            self.classDescription.text = "This course provides all the phases of fashion merchandising, not only in business aspects, but also in the aesthetic and creative sides of fashion, such as window display, fashion basics and textiles. Students will study fashion history and trends as well as their influence on our lives. In addition they survey the development of style leading up to contemporary design. Upon successful completion of this course, and the submission of a Harper College application, students will receive Harper FAS112 credit."
            self.classNumber.text = "05860"
        }
        else if selectedClass == "PLTW Computer Integrated Manufacturing"
        {
            self.navigationItem.title = "PLTW Computer Integrated Manufacturing"
            self.className.text = "PLTW Computer Integrated Manufacturing"
            self.classDescription.text = "Computerized Integrated Manufacturing builds on the solid modeling skills developed in Introduction to Engineering Design of prototyping, robotics, and automation. Students will solve problems by using computer controlled rapid prototyping and CNC equipment to construct models of their 3-D models. They will also explore the fundamentals of robotics, learning how this technology functions in an automated manufacturing environment. Finally, students will learn how to evaluate their design solutions before producing their prototypes."
            self.classNumber.text = "06891/06892"
        }
        else if selectedClass == "Advanced Machine Technology"
        {
            self.navigationItem.title = "Advanced Machine Technology"
            self.className.text = "Advanced Machine Technology"
            self.classDescription.text = "This course covers the fundamentals of precision machining theory and practices, which are aligned with the standards established by the National Tooling and Manufacturing Association. This class will help prepare students for a future in the various precision machining occupations and related fields. Students will become familiar with the hand tools, manual & Computer Numerical Control (CNC) equipment that are commonly found in the industry. Students will study blueprint interpretation, precision measurement, tooling, machine setup, work holding and general metalworking processes. Students enrolled in this course may work towards level one certification with the National Institute for Metalworking Skills Inc (NIMS). Upon successful completion of this course, students will receive Harper Introduction to Manufacturing and Safety (MFT102) and Machine Processing (MFT105) credit."
            self.classNumber.text = "09631/09632"
        }
        else if selectedClass == "Advanced CNC Manufacturing"
        {
            self.navigationItem.title = "Advanced CNC Manufacturing"
            self.className.text = "Advanced CNC Manufacturing"
            self.classDescription.text = "This course is designed for students who may be pursuing a career in precision metalworking or related computer machining applications and covers advanced applications of precision machining theory and practice. It includes lathes, O.D. and I.D. grinders, tool grinders, and milling machines. Students study production machining, feed and speed application, and quality control techniques and will become fluent in operating Computer Numerical Control (CNC) equipment. Students enrolled in this course may work towards level two certification with the National Institute for Metalworking Skills Inc. (NIMS). A local business advisory board will provide students with information on real life experiences, job observation, and job applications. Upon successful completion of this course, students will receive Harper Quality and Measurement (MFT 104) and Machine Processing (MFT 120) credit."
            self.classNumber.text = "09641/09642"
        }
        else if selectedClass == "Drafting/CAD"
        {
            self.navigationItem.title = "Drafting/CAD"
            self.className.text = "Drafting/CAD"
            self.classDescription.text = "This course introduces students to advanced architectural design concepts. It will focus on the concepts and use of graphic tools used in architecture, structural systems, and construction trades. Use of CAD tools in the creation of floor plans, wall sections, and elevation drawings is emphasized. Mathematics, science, and visual design concepts are reinforced. Emphasis is placed on the use of CAD tools in the design and execution of site and foundation plans as well as topographical information and detail drawings of stairs and wall sections. Teaming and problem solving skills are reinforced."
            self.classNumber.text = "06410"
        }
        else if selectedClass == "Sports and Entertainment Marketing"
        {
            self.navigationItem.title = "Sports and Entertainment Marketing"
            self.className.text = "Sports and Entertainment Marketing"
            self.classDescription.text = "This highly engaging interactive class will emphasize marketing principles through exposure to professional sports teams, entertainment businesses, and high tech companies. Students will have the opportunity to hear numerous speakers in the professional sports, entertainment, and technology industries and take field trips to observe different careers available in marketing. Areas of study will include careers in marketing, opportunity analysis, promotion, pricing, product development, distribution, case studies, and marketing plan development."
            self.classNumber.text = "05720"
        }
        else if selectedClass == "PLTW Aerospace Engineering"
        {
            self.navigationItem.title = "PLTW Aerospace Engineering"
            self.className.text = "PLTW Aerospace Engineering"
            self.classDescription.text = "Through hands-on engineering projects developed with NASA, students learn about aerodynamics, astronautics, space-life sciences, and systems engineering. This course includes the study of intelligent vehicles like the Mars rovers Spirit and Opportunity."
            self.classNumber.text = "06941/06942"
        }
        else if selectedClass == "PLTW Digital Electronics"
        {
            self.navigationItem.title = "PLTW Digital Electronics"
            self.className.text = "PLTW Digital Electronics"
            self.classDescription.text = "Digital Electronics is a course in applied logic. Students will explore the digital circuits found in video games, watches, calculators, digital cameras, and thousands of other devices. They will investigate digital logic and how digital devices can control automated equipment and use industry standard, electronic design software to build circuits and to export designs."
            self.classNumber.text = "06911/06912"
        }
        else if selectedClass == "Introduction to Nanotechnology"
        {
            self.navigationItem.title = "Introduction to Nanotechnology"
            self.className.text = "Introduction to Nanotechnology"
            self.classDescription.text = "Students will learn to operate a Scanning Electron microscope, an atomic force microscope, a scanning tunneling microscope, a 3D optical imager, and a broad package of various chemical and biological materials that they will use in completing the hands-on lab experiments in nanotechnology. The curriculum covers the areas of: Nanotechnology Basics, NanoPhysics, NanoChemistry, NanoBiology, and Environmental, Health and Safety perspectives on nanotechnology. Students will become leaders in working in the Nano Lab and will assist in exposing under level student to the possibilities in the lab. Students will design. Plan and conduct a yearlong research based investigation to address a research question related to nanotechnology. Through this process, students will develop their skills related to research methodology; employment of ethical research practices; and assessment, analyzation, and synthesis of information as they address a research question. Students will explore their skill development, document their processes, and curate the artifacts of the development of their scholarly work in a portfolio. This course is intended to meet the requirements for the AP Research course. The course culminates in an academic paper of approximately 4000-5000 words (accompanied by a performance or exhibition of product where applicable) and a presentation with an oral defense. Upon successful completion of this course, students will receive Harper Fundamentals of Nanoscience (PHS 170) credit."
            self.classNumber.text = "06461/06462"
        }
        else if selectedClass == "Automotive Systems"
        {
            self.navigationItem.title = "Automotive Systems"
            self.className.text = "Automotive Systems"
            self.classDescription.text = "This course provides a blend of hands-on skills and theoretical knowledge of the automobile. Lab exercises will emphasize preventive maintenance and entry-level job requirements. Students will explore each automotive system from both scientific and practical points of view and have ample opportunity to work on his/her own vehicle for lab experience. However, having a car or drivers license is not required."
            self.classNumber.text = "06051/06052"
        }
        else if selectedClass == "Diagnostic and Testing"
        {
            self.navigationItem.title = "Diagnostic and Testing"
            self.className.text = "Diagnostic and Testing"
            self.classDescription.text = "This course is designed to offer an in-depth investigation into the automobile and how it is repaired. Students will develop diagnostic skills through the use of lab test equipment typical of that used in the auto service industry. Through work on student and faculty vehicles as well as lab demonstration stations, students will learn automotive repair skills. By the completion of this course, each student will have a working knowledge of basic diagnosis, testing, and repair procedures. These skills can provide a basis for an entry-level job in the automotive industry. 06071/06072 V"
            self.classNumber.text = "06061/06062"
        }
        else if selectedClass == "Vocational Automotive"
        {
            self.navigationItem.title = "Vocational Automotive"
            self.className.text = "Vocational Automotive"
            self.classDescription.text = "This course provides an in-depth exploration of the specific subassemblies of the automobile. This course concentrates on repairs to a variety of automotive systems. Emphasis is placed on the use of sophisticated diagnostic and repair skills typical of the auto industry. Students completing this course will be well prepared to continue post-secondary education leading to the national Automotive Service of Excellence (ASE) certification as an automotive technician. Students who successfully complete courses 06051,06052, 60601, 06062, 06071, and 06072 will receive Triton College transcripted credit for Introduction to Auto Technology (AUT112). Students may only receive credit for AUT112 from Triton College for either 06071/06072 or 06091/06092."
            self.classNumber.text = "06071/06072"
        }
        else if selectedClass == "Power-On-Site Training"
        {
            self.navigationItem.title = "Power-On-Site Training"
            self.className.text = "Power-On-Site Training"
            self.classDescription.text = "This program provides technical automotive training and shop work in a commercial enterprise under the direction of a service manager. Training experience includes two hours of work each day with an experienced mechanic or parts person employed by the place of business. A teacher-coordinator will place the student as well as visit the training station to monitor and evaluate the student’s progress."
            self.classNumber.text = "06791/06792"
        }
        else if selectedClass == "Heating Principles(Harper College)"
        {
            self.navigationItem.title = "Heating Principles(Harper College)"
            self.className.text = "Heating Principles(Harper College)"
            self.classDescription.text = "This course is the introductory course for students interested in heating, air conditioning, and refrigeration systems. This course describes sources and methods of producing heat for residential, commercial and industrial systems. The course develops skills in testing, adjusting, and replacing heating system components. Upon successful completion of this course, students will receive Harper Heating Principles (RAC 103) credit."
            self.classNumber.text = "10150"
        }
        else if selectedClass == "Heating and Cooling Controls(Harper College)"
        {
            self.navigationItem.title = "Heating and Cooling Controls(Harper College)"
            self.className.text = "Heating and Cooling Controls(Harper College)"
            self.classDescription.text = "This course describes the purposes and principles of operation and causes of failure in electrical components common to residential and small commercial systems. Emphasizes wiring schematics and diagrams. Upon successful completion of this course, students will receive Harper Heating and Cooling (RAC 105) credit."
            self.classNumber.text = "10160"
        }
        else if selectedClass == "Refrigeration Systems(Harper College)"
        {
            self.navigationItem.title = "Refrigeration Systems(Harper College)"
            self.className.text = "Refrigeration Systems(Harper College)"
            self.classDescription.text = "This course continues to develop principles and concepts learned in previous courses. The course familiarizes students with components and accessories added to basic refrigeration systems for special applications. The course develops trouble-diagnosing procedures. Upon successful completion of the course, students will receive Harper Refrigeration Systems (RAC 102) credit."
            self.classNumber.text = "10090"
        }
            
        else if selectedClass == "Advanced Concepts in Coding and Development"
        {
            self.navigationItem.title = "Advanced Concepts in Coding and Development"
            self.className.text = "Advanced Concepts in Coding and Development"
            self.classDescription.text = "Applying the principles they learned in previous courses, students in this class will work to develop a solution/solutions to a real-world problem(s) or need(s), which demonstrate their computer programming abilities. Students will keep journals, are responsible for delivering progress reports, and will make a final presentation as to their work and products."
            self.classNumber.text = "10301/10302"
        }
        else if selectedClass == "PLTW Engineering Design and Development"
        {
            self.navigationItem.title = "PLTW Engineering Design and Development"
            self.className.text = "PLTW Engineering Design and Development"
            self.classDescription.text = "Applying the principles they learned in previous courses, students in this class will work in small teams to design and construct the solution to an engineering problem involving a wide range of engineering applications. Students will keep journals that will become part of their portfolios. Each team will be responsible for delivering progress reports and making final presentations to an outside review panel."
            self.classNumber.text = "06931/06932"
        }
        else if selectedClass == "College Introduction to Early Childhood Education"
        {
            self.navigationItem.title = "College Introduction to Early Childhood Education"
            self.className.text = "College Introduction to Early Childhood Education"
            self.classDescription.text = "This course provides an overview of early childhood care and education, including the basic values, structure, organization and programming. Students will examine their personal qualities in relationship to the expectations of this field. This course includes directed observation in a variety of programs and settings. Fifteen (15) hours of observation is required. Upon successful completion of the course, students will receive Harper Introduction to Early Childhood Education (ECE101) credit. Upon successful completion of 05910 Human Growth and Child Development, 10500 College Introduction to Early Childhood Education, and 05290 Practicum in Early Childhood Education 1, students will receive National Louis University ECE220 credit."
            self.classNumber.text = "10500"
        }
        else if selectedClass == "College Introduction to Education"
        {
            self.navigationItem.title = "College Introduction to Education"
            self.className.text = "College Introduction to Education"
            self.classDescription.text = "This course provides an introduction to teaching as a profession in the American Education system. The course offers a variety of perspectives on education including historical, philosophical, social, legal, ethical issues in a diverse society. This course includes organizational structure and school governance. Upon successful completion of this course, students will receive National Louis University ELE210 credit."
            self.classNumber.text = "10700"
        }
        else if selectedClass == "Advanced Network Systems and Cybersecurity"
        {
            self.navigationItem.title = "Advanced Network Systems and Cybersecurity"
            self.className.text = "Advanced Network Systems and Cybersecurity"
            self.classDescription.text = "Building on principles learned in previous classes this class will provide students with a comprehensive hands-on overview of network security, including authentication, encryption, digital certificates, perimeter topologies, remote access, cryptography, and operational security. Students will participate to solve industry real world problems and challenges related to networks and cybersecurity."
            self.classNumber.text = "10401/10402"
        }
        else if selectedClass == "Mobile App Development 2/AP Computer Science Principles"
        {
            self.navigationItem.title = "Mobile App Development 2/AP Computer Science Principles"
            self.className.text = "Mobile App Development 2/AP Computer Science Principles"
            self.classDescription.text = "Students will continue their development of applications for mobile devices and will expand their use of advanced features and coding principles this collaborative lab based, hands-on course. Upon completion of this course students will be able to take the Advanced Placement exam in Computer Science Principles."
            self.classNumber.text = "10601/10602"
        }
        
    }
    
    
//    @IBAction func addClassButton(sender: UIButton)
//    {
//        var dreamClassArray = []
////        sender.sel
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "segueNLC"
        {
            
            let nvc = segue.destinationViewController as! MyScheduleNLC
            nvc.selectedClass = className.text
//            nvc.selectedClass = self.selectedClass
//            nvc.selectedClass = self.className.text

            
        
        }
        else
        {
            
            
        }
        
    }
    
}
