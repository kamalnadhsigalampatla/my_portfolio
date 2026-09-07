import 'package:flutter/material.dart';

void main() {
  runApp(const KamalPortfolio());
}

class KamalPortfolio extends StatelessWidget {
  const KamalPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'S.Kamal Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F5FC),
      ),
      home: const HomePage(),
    );
  }
}

// ==================== HOME PAGE ====================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmallScreen = width < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'S.Kamal',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 950),
            padding: EdgeInsets.all(isSmallScreen ? 20 : 50),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Profile
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepPurple,
                      width: 3,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                Text(
                  'S.Kamal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 30 : 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'B.Tech - CSE-AIML',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Computer Science & Artificial Intelligence',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25),

                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.08),
                      ),
                    ],
                  ),
                  child: const Text(
                    'I am a Computer Science student interested in Artificial '
                    'Intelligence, Machine Learning and Python programming. '
                    'I enjoy working with data, building machine learning '
                    'models and developing practical applications.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.7,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.person_outline),
                      label: const Text('About Me'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 14,
                        ),
                      ),
                    ),

                    OutlinedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProjectsPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.code),
                      label: const Text('My Projects'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                const Text(
                  'Python  •  NumPy  •  Pandas  •  Machine Learning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ==================== ABOUT PAGE ====================

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 950),
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'I am S.Kamal, a B.Tech student specializing in Computer '
                  'Science and Artificial Intelligence & Machine Learning '
                  '(CSE-AIML). I am interested in Python programming, data '
                  'analysis and machine learning. I enjoy developing '
                  'practical projects and continuously improving my '
                  'technical and problem-solving skills.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.7,
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 12),

                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Icon(
                        Icons.school,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'B.Tech - CSE-AIML',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'Computer Science and Artificial Intelligence & '
                      'Machine Learning',
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  'Technical Skills',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 15),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    SkillChip('Python'),
                    SkillChip('NumPy'),
                    SkillChip('Pandas'),
                    SkillChip('Machine Learning'),
                    SkillChip('HTML'),
                    SkillChip('CSS'),
                  ],
                ),

                const SizedBox(height: 35),

                const Text(
                  'Areas of Interest',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 15),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    SkillChip('Artificial Intelligence'),
                    SkillChip('Machine Learning'),
                    SkillChip('Data Analysis'),
                    SkillChip('Python Programming'),
                  ],
                ),

                const SizedBox(height: 40),

                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.home),
                    label: const Text('Back to Home'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ==================== SKILL CHIP ====================

class SkillChip extends StatelessWidget {
  final String skill;

  const SkillChip(this.skill, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      avatar: const Icon(
        Icons.check_circle,
        size: 18,
        color: Colors.deepPurple,
      ),
    );
  }
}

// ==================== PROJECTS PAGE ====================

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 950),
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const Text(
                  'My Projects',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 25),

                ProjectCard(
                  title: 'Student Performance Prediction',
                  technologies:
                      'Python • Pandas • NumPy • Machine Learning',
                  description:
                      'A machine learning application that analyzes '
                      'student information and predicts academic performance '
                      'using data preprocessing and machine learning techniques.',
                  icon: Icons.school,
                ),

                ProjectCard(
                  title: 'Customer Churn Prediction',
                  technologies:
                      'Python • Pandas • NumPy • Machine Learning',
                  description:
                      'A machine learning project that analyzes customer '
                      'data and predicts whether a customer is likely to '
                      'leave a service.',
                  icon: Icons.people_alt,
                ),

                ProjectCard(
                  title: 'Movie Recommendation System',
                  technologies:
                      'Python • Pandas • NumPy • Machine Learning',
                  description:
                      'A recommendation project that analyzes movie data '
                      'and suggests movies to users based on preferences '
                      'and similarities between movies.',
                  icon: Icons.movie,
                ),

                const SizedBox(height: 15),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.home),
                  label: const Text('Back to Home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ==================== PROJECT CARD ====================

class ProjectCard extends StatelessWidget {
  final String title;
  final String technologies;
  final String description;
  final IconData icon;

  const ProjectCard({
    super.key,
    required this.title,
    required this.technologies,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    size: 32,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Text(
              technologies,
              style: const TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}