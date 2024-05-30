class JobModel {
  final String jobId;
  final String title;
  final String jobTitle;
  final String description;
  final int workTime; // 0 Part-time or  1 full-time
  final int field; //0 programming , 1 design , 2 business  , 3 marketing
  final int jobType; //   0 online or 1 Onsite
  final String city;
  final String sex;
  final String nationality;
  final List<String> tasks;
  final List<String> applicationCriteria;
  final String imageUrl;
  final String age;

  JobModel(
      {required this.jobId,
      required this.title,
      required this.jobTitle,
      required this.description,
      required this.workTime,
      required this.field,
      required this.jobType,
      required this.city,
      required this.sex,
      required this.nationality,
      required this.tasks,
      required this.applicationCriteria,
      required this.imageUrl,
      required this.age});
}

List<JobModel> jobList = [
  JobModel(
    jobId: "1",
    title: "Software Engineer",
    description:
        "Develop and maintain software applications. Write efficient code and collaborate on scalable solutions.",
    workTime: 1,
    field: 0, // Programming
    jobType: 1,
    city: "Damascus",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Write clean, maintainable, and efficient code.",
      "Design and implement scalable software solutions.",
      "Collaborate with cross-functional teams to define, design, and ship new features."
    ],
    applicationCriteria: [
      "Bachelor's degree in Computer Science or related field.",
      "Proficiency in one or more programming languages such as Java, Python, or JavaScript.",
      "Experience with software development methodologies."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x',
    imageUrl: '',
    age: "25", // Example age value
  ),
  JobModel(
    jobId: "2",
    title: "Marketing Specialist",
    description:
        "Plan and execute marketing campaigns. Develop strategies, create content, and analyze performance.",
    workTime: 1,
    field: 3, // Marketing
    jobType: 1,
    city: "Aleppo",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Develop marketing strategies to attract customers.",
      "Create content for online and offline marketing channels.",
      "Analyze campaign performance and make data-driven decisions."
    ],
    applicationCriteria: [
      "Bachelor's degree in Marketing, Business, or related field.",
      "Strong communication and analytical skills.",
      "Experience with digital marketing tools and platforms."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x',
    imageUrl: '',
    age: "30",
  ),
  JobModel(
    jobId: "3",
    title: "Customer Service Representative",
    description:
        "Provide assistance to customers and resolve inquiries. Maintain accurate records and deliver solutions.",
    workTime: 1,
    field: 2, // Business
    jobType: 1,
    city: "Hama",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Respond to customer inquiries via phone, email, or chat.",
      "Assist customers with product-related issues and provide solutions.",
      "Maintain accurate records of customer interactions and transactions."
    ],
    applicationCriteria: [
      "High school diploma or equivalent.",
      "Excellent communication and problem-solving skills.",
      "Ability to work in a fast-paced environment."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '15',
  ),
  JobModel(
    jobId: "4",
    title: "Graphic Designer",
    description:
        "Create visual concepts to inspire, inform, or captivate consumers. Develop designs and present concepts.",
    workTime: 0,
    field: 1, // Design
    jobType: 1,
    city: "Homs",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Develop illustrations, logos, and other designs using software or by hand.",
      "Present design concepts to clients or art directors.",
      "Collaborate with copywriters, photographers, and other designers."
    ],
    applicationCriteria: [
      "Bachelor's degree in Graphic Design or related field.",
      "Proficiency in graphic design software such as Adobe Creative Suite.",
      "Strong portfolio demonstrating creative skills and design concepts."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '18',
  ),
  JobModel(
    jobId: "5",
    title: "Data Analyst",
    description:
        "Interpret data, analyze results, and provide insights to support business decisions. Prepare reports and visualizations.",
    workTime: 1,
    field: 0, // Programming
    jobType: 1,
    city: "Lattakia",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Collect and analyze data from various sources.",
      "Identify trends and patterns in complex data sets.",
      "Prepare reports and visualizations to communicate findings."
    ],
    applicationCriteria: [
      "Bachelor's degree in Mathematics, Statistics, Economics, or related field.",
      "Proficiency in SQL, Excel, and statistical analysis tools.",
      "Strong analytical and problem-solving skills."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '25',
  ),
  JobModel(
    jobId: "6",
    title: "English Teacher",
    description:
        "Teach English language skills to students. Plan lessons, assess progress, and create engaging materials.",
    workTime: 1,
    field: 4, // Education
    jobType: 1,
    city: "Tartus",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Plan and deliver English lessons to students of varying levels.",
      "Assess student progress and provide feedback.",
      "Create engaging and interactive learning materials."
    ],
    applicationCriteria: [
      "Bachelor's degree in Education, English, or related field.",
      "Teaching certification (e.g., TEFL, TESOL, CELTA).",
      "Experience teaching English as a second language."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '20',
  ),
  JobModel(
    jobId: "7",
    title: "Social Media Manager",
    description:
        "Manage and grow social media presence for brands. Develop strategies, create content, and analyze metrics.",
    workTime: 1,
    field: 3, // Marketing
    jobType: 1,
    city: "Damascus",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Develop social media strategies to increase brand awareness and engagement.",
      "Create and curate content for social media platforms.",
      "Monitor and analyze social media metrics to track performance."
    ],
    applicationCriteria: [
      "Bachelor's degree in Marketing, Communications, or related field.",
      "Experience managing social media accounts for businesses or organizations.",
      "Knowledge of social media analytics tools and trends."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '25',
  ),
  JobModel(
    jobId: "8",
    title: "Nurse",
    description:
        "Provide medical care and support to patients. Administer treatments and educate patients and families.",
    workTime: 1,
    field: 5, // Healthcare
    jobType: 1,
    city: "Toronto",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Assess patient health problems and needs.",
      "Administer medications and treatments as prescribed.",
      "Educate patients and their families about health conditions and treatments."
    ],
    applicationCriteria: [
      "Bachelor's degree in Nursing.",
      "Valid nursing license.",
      "Strong clinical skills and ability to work in a team."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '25',
  ),
  JobModel(
    jobId: "9",
    title: "Financial Analyst",
    description:
        "Analyze financial data and provide insights. Create financial models and prepare reports for stakeholders.",
    workTime: 0,
    field: 2, // Business
    jobType: 1,
    city: "Aleppo",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Gather financial data and create financial models.",
      "Analyze industry trends and company performance.",
      "Prepare reports and presentations for stakeholders."
    ],
    applicationCriteria: [
      "Bachelor's degree in Finance, Accounting, Economics, or related field.",
      "Strong analytical and quantitative skills.",
      "Proficiency in financial analysis tools and Excel."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '23',
  ),
  JobModel(
    jobId: "10",
    title: "Content Writer",
    description:
        "Create engaging and informative content for various platforms. Research topics and optimize content for SEO.",
    workTime: 0,
    field: 3, // Marketing
    jobType: 0,
    city: "Remote",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Research and write articles, blog posts, and website content.",
      "Optimize content for SEO and audience engagement.",
      "Adhere to brand guidelines and style standards."
    ],
    applicationCriteria: [
      "Excellent writing and editing skills.",
      "Ability to conduct thorough research on various topics.",
      "Understanding of SEO principles and content marketing."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '27',
  ),
  JobModel(
    jobId: "10",
    title: "Content Writer",
    description:
        "Create engaging and informative content for various platforms.",
    workTime: 0,
    field: 3, // Marketing
    jobType: 0,
    city: "Remote",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Research and write articles, blog posts, and website content.",
      "Optimize content for SEO and audience engagement.",
      "Adhere to brand guidelines and style standards."
    ],
    applicationCriteria: [
      "Excellent writing and editing skills.",
      "Ability to conduct thorough research on various topics.",
      "Understanding of SEO principles and content marketing."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '21',
  ),
  JobModel(
    jobId: "10",
    title: "Content Writer",
    description:
        "Create engaging and informative content for various platforms.",
    workTime: 0,
    field: 3, // Marketing
    jobType: 0,
    city: "Remote",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Research and write articles, blog posts, and website content.",
      "Optimize content for SEO and audience engagement.",
      "Adhere to brand guidelines and style standards."
    ],
    applicationCriteria: [
      "Excellent writing and editing skills.",
      "Ability to conduct thorough research on various topics.",
      "Understanding of SEO principles and content marketing."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '20',
  ),
  JobModel(
    jobId: "11",
    title: "Mobile App Developer",
    description: "Design and develop mobile applications.",
    workTime: 0,
    field: 0, // Programming
    jobType: 0,
    city: "Damascus",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Create user-friendly mobile applications for Android and iOS platforms.",
      "Collaborate with cross-functional teams to define, design, and ship new features.",
      "Optimize applications for maximum performance and scalability."
    ],
    applicationCriteria: [
      "Bachelor's degree in Computer Science or related field.",
      "Proficiency in mobile development languages such as Java (for Android) or Swift (for iOS).",
      "Experience with mobile development frameworks (e.g., Flutter, React Native) is a plus."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '20',
  ),
  JobModel(
    jobId: "12",
    title: "UX/UI Designer",
    description: "Design intuitive and visually appealing user interfaces.",
    workTime: 1,
    field: 1, // Design
    jobType: 1,
    city: "Aleppo",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Create wireframes, prototypes, and mockups for web and mobile interfaces.",
      "Conduct user research and usability testing to iterate on designs.",
      "Collaborate with development teams to ensure design implementation."
    ],
    applicationCriteria: [
      "Bachelor's degree in Design, HCI, or related field.",
      "Proficiency in design tools such as Adobe XD, Sketch, or Figma.",
      "Understanding of user-centered design principles and best practices."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '18',
  ),
  JobModel(
    jobId: "13",
    title: "Financial Analyst",
    description: "Analyze financial data to support business decisions.",
    workTime: 1,
    field: 2, // Business
    jobType: 1,
    city: "Homs",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Analyze financial statements, trends, and performance metrics.",
      "Prepare financial models and forecasts to guide strategic planning.",
      "Provide insights and recommendations based on financial analysis."
    ],
    applicationCriteria: [
      "Bachelor's degree in Finance, Accounting, Economics, or related field.",
      "Strong analytical skills and proficiency in Excel or financial modeling software.",
      "Ability to communicate financial information effectively to non-financial stakeholders."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '25',
  ),
  JobModel(
    jobId: "14",
    title: "Social Media Coordinator",
    description: "Manage social media accounts and create engaging content.",
    workTime: 0,
    field: 3, // Marketing
    jobType: 0,
    city: "Latakia",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Develop and implement social media marketing strategies.",
      "Create and schedule content for various social media platforms.",
      "Monitor and analyze social media performance metrics."
    ],
    applicationCriteria: [
      "Bachelor's degree in Marketing, Communications, or related field.",
      "Experience managing social media accounts for businesses or organizations.",
      "Knowledge of social media analytics tools and trends."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '18',
  ),
  JobModel(
    jobId: "15",
    title: "Web Developer",
    description: "Build and maintain websites.",
    workTime: 1,
    field: 0, // Programming
    jobType: 1,
    city: "Hama",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Create responsive and visually appealing websites.",
      "Implement website features and functionality.",
      "Optimize websites for speed and SEO."
    ],
    applicationCriteria: [
      "Bachelor's degree in Computer Science, Web Development, or related field.",
      "Proficiency in HTML, CSS, JavaScript, and other web technologies.",
      "Experience with web development frameworks and content management systems."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: 'Any',
  ),
  JobModel(
    jobId: "16",
    title: "Product Manager",
    description: "Lead product development and strategy.",
    workTime: 1,
    field: 2, // Business
    jobType: 1,
    city: "Damascus",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Define product vision, strategy, and roadmap.",
      "Gather and prioritize product requirements.",
      "Work closely with engineering, design, and marketing teams."
    ],
    applicationCriteria: [
      "Bachelor's degree in Business, Engineering, or related field.",
      "Experience in product management or related roles.",
      "Strong analytical and strategic thinking skills."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: 'Any',
  ),
  JobModel(
    jobId: "17",
    title: "Human Resources Manager",
    description: "Oversee HR functions and policies.",
    workTime: 1,
    field: 2, // Business
    jobType: 1,
    city: "Aleppo",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Develop and implement HR policies and procedures.",
      "Manage recruitment, training, and performance evaluation processes.",
      "Ensure compliance with labor laws and regulations."
    ],
    applicationCriteria: [
      "Bachelor's degree in Human Resources, Business Administration, or related field.",
      "Proven experience in HR management or related roles.",
      "Strong knowledge of labor laws and regulations."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '25',
  ),
  JobModel(
    jobId: "18",
    title: "UX Researcher",
    description: "Conduct user research to inform product design decisions.",
    workTime: 1,
    field: 1, // Design
    jobType: 1,
    city: "Homs",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Plan and conduct user interviews, surveys, and usability tests.",
      "Analyze research findings and communicate insights to cross-functional teams.",
      "Collaborate with designers and product managers to prioritize design improvements."
    ],
    applicationCriteria: [
      "Bachelor's degree in Psychology, HCI, or related field.",
      "Experience in user research or UX design roles.",
      "Strong analytical and communication skills."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '19',
  ),
  JobModel(
    jobId: "19",
    title: "Sales Representative",
    description: "Promote and sell products or services to customers.",
    workTime: 1,
    field: 2, // Business
    jobType: 1,
    city: "Lattkia",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Identify and qualify leads through prospecting and networking.",
      "Present products or services to potential customers.",
      "Negotiate and close sales deals."
    ],
    applicationCriteria: [
      "High school diploma or equivalent.",
      "Proven experience in sales or customer service roles.",
      "Strong communication and negotiation skills."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '25',
  ),
  JobModel(
    jobId: "20",
    title: "Quality Assurance Tester",
    description: "Ensure software quality through testing and debugging.",
    workTime: 1,
    field: 0, // Programming
    jobType: 1,
    city: "Damascus",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Develop and execute test plans and test cases.",
      "Identify and report software defects.",
      "Work closely with developers to resolve issues."
    ],
    applicationCriteria: [
      "Bachelor's degree in Computer Science or related field.",
      "Experience in software testing or quality assurance.",
      "Strong attention to detail and problem-solving skills."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '17',
  ),
  JobModel(
    jobId: "10",
    title: "Content Writer",
    description:
        "Create engaging and informative content for various platforms.",
    workTime: 0,
    field: 3, // Marketing
    jobType: 0,
    city: "Remote",
    sex: "Any",
    nationality: "Any",
    tasks: [
      "Research and write articles, blog posts, and website content.",
      "Optimize content for SEO and audience engagement.",
      "Adhere to brand guidelines and style standards."
    ],
    applicationCriteria: [
      "Excellent writing and editing skills.",
      "Ability to conduct thorough research on various topics.",
      "Understanding of SEO principles and content marketing."
    ],
    jobTitle: 'فرصة عمل لدى شركة focal x', imageUrl: '', age: '25',
  ),
];
