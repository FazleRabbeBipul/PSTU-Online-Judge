-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2023 at 02:32 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pstu_oj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `variable` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`variable`, `value`) VALUES
('lastjudge', '0'),
('mode', 'Enable'),
('notice', 'Codesohoj Online Judge\r\nWelcome to Codesohoj Online Judge'),
('endtime', '0'),
('starttime', '0'),
('port', '8723'),
('ip', 'localhost'),
('penalty', '20');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `added` varchar(50) NOT NULL DEFAULT 'admin',
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `statement` text DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `cover` varchar(100) DEFAULT NULL,
  `user_id` varchar(20) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `time`, `added`, `title`, `description`, `statement`, `likes`, `dislikes`, `views`, `cover`, `user_id`) VALUES
(2, '2023-06-27 13:58:17', 'Rafid Al Nahiyan', 'testing', 'testing 1 2 3', NULL, 1, 2, 0, 'nothing', '4'),
(12, '2023-08-31 02:11:32', 'Rafid Al Nahiyan', '111', '<p>1111</p>', '', 3, 1, 0, NULL, '4'),
(13, '2023-08-31 02:16:31', 'Fazle Rabbe Bipul', 'ICPC-2022', '<p>ICPC is the world\'s most prestigious programming competition and it’s a dream of every competitive programmer to participate in this biggest coding competition and put their best effort to represent their University.&nbsp;</p><p><br></p><p>This year two teams from PSTU, (Renaissance &amp; Gryffindor) are participating in this event.&nbsp;</p><p><br></p><p>Since I\'m in my final year, it\'s likely that this will be the last time I participate. Huh, the one last dance!</p><p><br></p><p>Hope for the best, pray for PSTU, pray for us.</p><p><br></p><p>#ICPC2022 #PSTU</p>', '', 1, 0, 0, NULL, '5'),
(14, '2023-09-01 06:24:36', 'Fazle Rabbe Bipul', '\'\'\'\'UYGU', '<p>VTTTTTTTTTTTT</p>', '', 0, 0, 0, NULL, '5'),
(15, '2023-09-01 06:26:01', 'Fazle Rabbe Bipul', 'L.POM,N K', '<p>VTCTFGCRTFG</p>', '', 0, 0, 0, NULL, '5');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `info` text DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `info`, `count`) VALUES
(1, 'String', NULL, 4),
(2, 'Greedy', NULL, 0),
(3, 'Graph', NULL, 0),
(4, 'Number Theory', NULL, 0),
(5, 'Stack', NULL, 0),
(6, 'Linked list', NULL, 0),
(7, 'Ad-Hoc', 'Simple Adhoc', 0),
(9, 'Binary Search', '', 1),
(20, 'Brute Force', '', 1),
(21, 'Implementation', '', 1),
(22, 'Math', '', 3),
(23, 'Recursion', '', 0),
(24, 'Dynamic Programming', '', 0),
(25, 'Sorting and Searching', '', 0),
(26, 'Bit Manipulation', '', 0),
(27, 'Divide and Conquer', '', 0),
(28, 'Backtracking', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_problem`
--

CREATE TABLE `category_problem` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_problem`
--

INSERT INTO `category_problem` (`id`, `category_id`, `problem_id`) VALUES
(36, 4, 22),
(37, 6, 22),
(38, 3, 24),
(39, 4, 24),
(40, 5, 24),
(41, 1, 25),
(42, 2, 25),
(43, 6, 25),
(44, 3, 26),
(45, 1, 27),
(46, 4, 27),
(47, 4, 28),
(48, 7, 28),
(49, 4, 29),
(50, 5, 29),
(51, 6, 29),
(52, 4, 30),
(53, 9, 31),
(54, 20, 31),
(55, 21, 31),
(56, 22, 31),
(57, 1, 32),
(58, 1, 32),
(59, 1, 34),
(60, 1, 34),
(61, 22, 36),
(62, 22, 38);

-- --------------------------------------------------------

--
-- Table structure for table `clar`
--

CREATE TABLE `clar` (
  `time` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `query` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `id` int(11) NOT NULL,
  `code` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `announcement` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ranktable` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `code`, `name`, `starttime`, `endtime`, `announcement`, `ranktable`) VALUES
(4, 'C1', 'New Contest', 1691215100, 1691235100, '<p>xdfgsrdftetdrtgr</p>', NULL),
(5, 'C2', 'New Contest 2', 1691215100, 1692451600, '<p>efreawrq32</p>', '[{\"username\": \"aaa\", \"time\": 556524, \"score\": 300, \"penalty\": 25, \"solved_contest\": {\"29\": 22, \"31\": 3}, \"uid\": 1}, {\"username\": \"aaaaad\", \"time\": 341408, \"score\": 100, \"penalty\": 0, \"solved_contest\": {\"29\": 0}, \"uid\": 2}]'),
(6, 'C4', 'c-4', 1691215100, 1692453600, 'nvciubhcjbvcuibcuBV UYBVUBCVUIEBvuibuibui bniub uivuivhiuvjhoihviohivuhiuvhuivhviuhviuhvihvhvhvvhiovhh', '[{\"username\": \"Jahid\", \"time\": 4391169, \"score\": 200, \"penalty\": 2, \"solved_contest\": {\"29\": 2, \"30\": 0}, \"uid\": 4}, {\"username\": \"FazleRabbeBipul\", \"time\": -3791292, \"score\": 100, \"penalty\": 0, \"solved_contest\": {\"29\": 0}, \"uid\": 2}, {\"username\": \"Mursaleen\", \"time\": -3791385, \"score\": 100, \"penalty\": 22, \"solved_contest\": {\"29\": 22}, \"uid\": 1}, {\"username\": \"rafid41\", \"time\": 2301135, \"score\": 100, \"penalty\": 1, \"solved_contest\": {\"30\": 1}, \"uid\": 5}]'),
(7, 'nnnnn', 'jtnzhnfmn', 1691215200, 1693461600, '<p>nnnnnnnnnnnnnnnnnnnnnnnnnnn</p>', '[{\"username\": \"rafid41\", \"time\": 2091446, \"score\": 100, \"penalty\": 1, \"solved_contest\": {\"34\": 1}, \"uid\": 4}]');

-- --------------------------------------------------------

--
-- Table structure for table `editorials`
--

CREATE TABLE `editorials` (
  `pid` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learn`
--

CREATE TABLE `learn` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `addedby` varchar(50) NOT NULL DEFAULT 'admin',
  `title` varchar(100) NOT NULL,
  `short` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `statement` text DEFAULT NULL,
  `category` int(11) DEFAULT 0,
  `user_id` varchar(20) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `learn`
--

INSERT INTO `learn` (`id`, `time`, `addedby`, `title`, `short`, `description`, `statement`, `category`, `user_id`) VALUES
(17, '2023-06-28 13:29:32', 'Rafid Al Nahiyan', 'Data Structures', 'Data Structures Provide problems and tutorials on common data structures such as arrays, linked lists, stacks, queues, trees, heaps, hash tables, and graphs. Emphasize implementation, operations, and time/space complexity analysis.', '<p>Here\'s a comprehensive description along with an example in C++ for each of the common data structures you mentioned:</p><p><br></p><p><strong>Arrays: </strong>Arrays are contiguous blocks of memory that store elements of the same type. They provide constant-time access to elements based on their indices. However, inserting or deleting elements at arbitrary positions can be less efficient. Arrays have a fixed size, and their elements are stored sequentially.</p><p>Example:</p><pre class=\"ql-syntax\" spellcheck=\"false\">#include &lt;iostream&gt;\r\nint main() { \r\n  int arr[5] = {1, 2, 3, 4, 5}; \r\n  // Accessing an element \r\n  int element = arr[2]; \r\n  // element = 3 \r\n  // Modifying an element \r\n  arr[1] = 6; \r\n  // arr = {1, 6, 3, 4, 5} \r\n  return 0;\r\n} \r\n</pre><p><br></p><p><strong>Linked Lists: </strong>Linked lists consist of nodes where each node contains data and a reference to the next node. They allow dynamic memory allocation and efficient insertion and deletion at any position. However, accessing elements by an index is less efficient compared to arrays.</p><p>Example:</p><pre class=\"ql-syntax\" spellcheck=\"false\">#include &lt;iostream&gt;\r\n\r\nstruct Node {\r\n&nbsp; &nbsp; int data;\r\n&nbsp; &nbsp; Node* next;\r\n};\r\n\r\nint main() {\r\n&nbsp; &nbsp; Node* head = new Node();\r\n&nbsp; &nbsp; head-&gt;data = 1;\r\n\r\n&nbsp; &nbsp; Node* second = new Node();\r\n&nbsp; &nbsp; second-&gt;data = 2;\r\n\r\n&nbsp; &nbsp; head-&gt;next = second;\r\n\r\n&nbsp; &nbsp; // Accessing elements\r\n&nbsp; &nbsp; int element = head-&gt;next-&gt;data;&nbsp; // element = 2\r\n\r\n&nbsp; &nbsp; // Inserting a new node\r\n&nbsp; &nbsp; Node* newNode = new Node();\r\n&nbsp; &nbsp; newNode-&gt;data = 3;\r\n&nbsp; &nbsp; newNode-&gt;next = head-&gt;next;\r\n&nbsp; &nbsp; head-&gt;next = newNode;\r\n\r\n&nbsp; &nbsp; return 0;\r\n}\r\n\r\n</pre><p><br></p><p><strong>Stacks: </strong>Stacks follow the Last-In-First-Out (LIFO) principle. Elements can only be inserted or removed from the top of the stack. This can be implemented using arrays or linked lists. Stack operations such as push (inserting), pop (removing), and peek (viewing the top element) have constant time complexity.</p><p>Example:</p><pre class=\"ql-syntax\" spellcheck=\"false\">#include &lt;iostream&gt;\r\n#include &lt;stack&gt;\r\n\r\nint main() {\r\n&nbsp; &nbsp; std::stack&lt;int&gt; myStack;\r\n\r\n&nbsp; &nbsp; // Pushing elements onto the stack\r\n&nbsp; &nbsp; myStack.push(10);\r\n&nbsp; &nbsp; myStack.push(20);\r\n&nbsp; &nbsp; myStack.push(30);\r\n\r\n&nbsp; &nbsp; // Popping elements from the stack\r\n&nbsp; &nbsp; myStack.pop();\r\n\r\n&nbsp; &nbsp; // Accessing the top element\r\n&nbsp; &nbsp; int topElement = myStack.top();&nbsp; // topElement = 20\r\n\r\n&nbsp; &nbsp; // Checking if the stack is empty\r\n&nbsp; &nbsp; bool isEmpty = myStack.empty();&nbsp; // isEmpty = false\r\n\r\n&nbsp; &nbsp; return 0;\r\n}\r\n\r\n</pre><p><br></p><p><strong>Queues: </strong>Queues follow the First-In-First-Out (FIFO) principle. Elements are inserted at the rear (enqueue) and removed from the front (dequeue). Queues can be implemented using arrays or linked lists. Queue operations have constant time complexity.</p><p>Example:</p><pre class=\"ql-syntax\" spellcheck=\"false\">#include &lt;iostream&gt;\r\n#include &lt;queue&gt;\r\n\r\nint main() {\r\n&nbsp; &nbsp; std::queue&lt;int&gt; myQueue;\r\n\r\n&nbsp; &nbsp; // Enqueueing elements\r\n&nbsp; &nbsp; myQueue.push(10);\r\n&nbsp; &nbsp; myQueue.push(20);\r\n&nbsp; &nbsp; myQueue.push(30);\r\n\r\n&nbsp; &nbsp; // Dequeueing an element\r\n&nbsp; &nbsp; myQueue.pop();\r\n\r\n&nbsp; &nbsp; // Accessing the front element\r\n&nbsp; &nbsp; int frontElement = myQueue.front();&nbsp; // frontElement = 20\r\n\r\n&nbsp; &nbsp; // Checking if the queue is empty\r\n&nbsp; &nbsp; bool isEmpty = myQueue.empty();&nbsp; // isEmpty = false\r\n\r\n&nbsp; &nbsp; return 0;\r\n}\r\n\r\n</pre><p><br></p><p><strong>Trees: </strong>Trees are hierarchical data structures consisting of nodes connected by edges. Each node can have child nodes. Trees are commonly used for representing hierarchical relationships. Binary trees are a specific type of tree where each node has at most two children.</p><p>Example:</p><pre class=\"ql-syntax\" spellcheck=\"false\">#include &lt;iostream&gt;\r\n\r\nstruct TreeNode {\r\n&nbsp; &nbsp; int data;\r\n&nbsp; &nbsp; TreeNode* left;\r\n&nbsp; &nbsp; TreeNode* right;\r\n};\r\n\r\nint main() {\r\n&nbsp; &nbsp; TreeNode* root = new TreeNode();\r\n&nbsp; &nbsp; root-&gt;data = 1;\r\n\r\n&nbsp; &nbsp; TreeNode* leftChild = new TreeNode();\r\n&nbsp; &nbsp; leftChild-&gt;data = 2;\r\n\r\n&nbsp; &nbsp; TreeNode* rightChild = new TreeNode();\r\n&nbsp; &nbsp; rightChild-&gt;data = 3;\r\n\r\n&nbsp; &nbsp; root-&gt;left = leftChild;\r\n&nbsp; &nbsp; root-&gt;right = rightChild;\r\n\r\n&nbsp; &nbsp; return 0;\r\n}\r\n</pre><p><br></p><p><strong>Heaps: </strong>Heaps are complete binary trees that satisfy the heap property. In a min-heap, each parent node has a value smaller than or equal to its children. In a max-heap, each parent node has a value greater than or equal to its children. Heaps are commonly used in priority queues and efficient sorting algorithms like heapsort.</p><p><br></p><p><strong>Hash Tables: </strong>Hash tables (also known as hash maps) store data in key-value pairs. They use a hash function to map keys to array indices, enabling fast retrieval and insertion. Hash tables are suitable for quick lookup operations. Collisions may occur when two keys map to the same index, requiring collision resolution techniques like chaining or open addressing.</p><p><br></p><p><strong>Graphs: </strong>Graphs represent connections between entities using nodes (vertices) and edges. They can be directed or undirected, weighted or unweighted. Graphs are used to model relationships between elements and solve problems like shortest path algorithms, network analysis, and social network analysis.</p><p><br></p><p>Understanding the implementation, operations, and time/space complexity analysis of these data structures will help you utilize them effectively to solve various programming problems.</p>', '', 1, '4'),
(21, '2023-08-31 13:44:33', 'Rafid Al Nahiyan', 'Sieve of Eratosthenes', 'Sieve of Eratosthenes', '<p>Given a number n, print all primes smaller than or equal to n. It is also given that n is a small number.&nbsp;</p><p><strong>Example:&nbsp;</strong></p><blockquote><strong><em>Input :&nbsp;</em></strong><em>n =10</em></blockquote><blockquote><strong><em>Output :</em></strong><em>&nbsp;2 3 5 7&nbsp;</em></blockquote><blockquote><strong><em>Input :</em></strong><em>&nbsp;n = 20&nbsp;</em></blockquote><blockquote><strong><em>Output:</em></strong><em>&nbsp;2 3 5 7 11 13 17 19</em></blockquote><p><br></p><p>The sieve of Eratosthenes is one of the most efficient ways to find all primes smaller than n when n is smaller than 10 million or so (Ref&nbsp;<a href=\"http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes\" target=\"_blank\" style=\"color: var(--color-gfg);\">Wiki</a>).</p><p>Following is the algorithm to find all the prime numbers less than or equal to a given integer&nbsp;n&nbsp;by the Eratosthene’s method:&nbsp;</p><p>When the algorithm terminates, all the numbers in the list that are not marked are prime.</p><p><strong>Explanation with Example:</strong>&nbsp;</p><p>Let us take an example when n = 50. So we need to print all prime numbers smaller than or equal to 50.&nbsp;</p><p>We create a list of all numbers from 2 to 50.&nbsp;&nbsp;</p><p><br></p><p><img src=\"https://media.geeksforgeeks.org/wp-content/uploads/SieveofEratosthenes1.jpg\" alt=\"Sieve1\"></p><p><br></p><p><br></p><p>According to the algorithm we will mark all the numbers which are divisible by 2 and are greater than or equal to the square of it.&nbsp;</p><p><br></p><p><img src=\"https://media.geeksforgeeks.org/wp-content/uploads/SieveofEratosthenes2.jpg\" alt=\"sieve2\"></p><p><br></p><p>Now we move to our next unmarked number 3 and mark all the numbers which are multiples of 3 and are greater than or equal to the square of it.&nbsp;&nbsp;</p><p><br></p><p><img src=\"https://media.geeksforgeeks.org/wp-content/cdn-uploads/SieveofEratosthenes3.jpg\" alt=\"SieveofEratosthenes3\"></p><p><br></p><p>We move to our next unmarked number 5 and mark all multiples of 5 and are greater than or equal to the square of it.&nbsp;&nbsp;</p><p><br></p><p><img src=\"https://media.geeksforgeeks.org/wp-content/uploads/SieveofEratosthenes4.jpg\" alt=\"Sieve4\"></p><p><br></p><p>We continue this process and our final table will look like below:&nbsp;&nbsp;</p><p><br></p><p><img src=\"https://media.geeksforgeeks.org/wp-content/uploads/SieveofEratosthenes5.jpg\" alt=\"Sieve5\"></p><p><br></p><p>So the prime numbers are the unmarked ones: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47.</p><p><br></p><p><br></p><p><br></p><p><strong>Output</strong></p><pre class=\"ql-syntax\" spellcheck=\"false\">Following are the prime numbers smaller  than or equal to 30\r\n2 3 5 7 11 13 17 19 23 29 \r\n</pre><p><strong>Time Complexity:&nbsp;</strong>O(n*log(log(n)))</p><p><strong>Auxiliary Space:&nbsp;</strong>O(n)</p><p>&nbsp;</p><p><br></p><ul><li>C++</li><li>Java</li><li>Python3</li><li>C#</li><li>Javascript</li></ul><p><br></p><p><br></p><p>// C++ program to print all primes smaller than or equal to</p><p>// n using Sieve of Eratosthenes</p><p>#include &lt;bits/stdc++.h&gt;</p><p>using namespace std;</p><p><br></p><p>void SieveOfEratosthenes(int n)</p><p>{</p><p>	// Create a boolean array \"prime[0..n]\" and initialize</p><p>	// all entries it as true. A value in prime[i] will</p><p>	// finally be false if i is Not a prime, else true.</p><p>	bool prime[n + 1];</p><p>	memset(prime, true, sizeof(prime));</p><p><br></p><p>	for (int p = 2; p * p &lt;= n; p++) {</p><p>		// If prime[p] is not changed, then it is a prime</p><p>		if (prime[p] == true) {</p><p>			// Update all multiples of p greater than or</p><p>			// equal to the square of it numbers which are</p><p>			// multiple of p and are less than p^2 are</p><p>			// already been marked.</p><p>			for (int i = p * p; i &lt;= n; i += p)</p><p>				prime[i] = false;</p><p>		}</p><p>	}</p><p><br></p><p>	// Print all prime numbers</p><p>	for (int p = 2; p &lt;= n; p++)</p><p>		if (prime[p])</p><p>			cout &lt;&lt; p &lt;&lt; \" \";</p><p>}</p><p><br></p><p>// Driver Code</p><p>int main()</p><p>{</p><p>	int n = 30;</p><p>	cout &lt;&lt; \"Following are the prime numbers smaller \"</p><p>		&lt;&lt; \" than or equal to \" &lt;&lt; n &lt;&lt; endl;</p><p>	SieveOfEratosthenes(n);</p><p>	return 0;</p><p>}</p><p><strong>Output</strong></p><pre class=\"ql-syntax\" spellcheck=\"false\">Following are the prime numbers smaller  than or equal to 30\r\n2 3 5 7 11 13 17 19 23 29 \r\n</pre><p><strong>Time Complexity:&nbsp;</strong>O(n*log(log(n)))</p><p><strong>Auxiliary Space:&nbsp;</strong>O(n)</p><p><br></p><p>// the following implementation</p><p>// stores only halves of odd numbers</p><p>// the algorithm is a faster by some constant factors</p><p><br></p><p>#include &lt;bitset&gt;</p><p>#include &lt;iostream&gt;</p><p>using namespace std;</p><p><br></p><p>bitset&lt;500001&gt; Primes;</p><p>void SieveOfEratosthenes(int n)</p><p>{</p><p>	Primes[0] = 1;</p><p>	for (int i = 3; i*i &lt;= n; i += 2) {</p><p>		if (Primes[i / 2] == 0) {</p><p>			for (int j = 3 * i; j &lt;= n; j += 2 * i)</p><p>				Primes[j / 2] = 1;</p><p>		}</p><p>	}</p><p>}</p><p><br></p><p>int main()</p><p>{</p><p>	int n = 100;</p><p>	SieveOfEratosthenes(n);</p><p>	for (int i = 1; i &lt;= n; i++) {</p><p>		if (i == 2)</p><p>			cout &lt;&lt; i &lt;&lt; \' \';</p><p>		else if (i % 2 == 1 &amp;&amp; Primes[i / 2] == 0)</p><p>			cout &lt;&lt; i &lt;&lt; \' \';</p><p>	}</p><p>	return 0;</p><p>}</p><p><br></p><p><br></p><p>Output</p><p>2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97&nbsp;</p><p>Time Complexity: O(n*log(log(n)))</p><p>Auxiliary Space: O(n)</p><p><br></p>', '', 7, '4'),
(22, '2023-09-01 13:04:05', 'Rafid Al Nahiyan', 'KMP Algorithm for Pattern Searching', 'collected from geeksforgeeks', '<p>Given a text&nbsp;<strong>txt[0 . . . N-1]</strong>&nbsp;and a pattern&nbsp;<strong>pat[0 . . . M-1]</strong>, write a function search(char pat[], char txt[]) that prints all occurrences of pat[] in txt[]. You may assume that&nbsp;<strong>N<em>&nbsp;</em>&gt; M</strong>.&nbsp;</p><p><strong>Examples:</strong></p><blockquote><strong><em>Input:</em></strong><em>&nbsp;&nbsp;txt[] = “THIS IS A TEST TEXT”, pat[] = “TEST”</em></blockquote><blockquote><strong><em>Output:</em></strong><em>&nbsp;Pattern found at index 10</em></blockquote><blockquote><strong><em>Input:&nbsp;</em></strong><em>&nbsp;txt[] =&nbsp;“AABAACAADAABAABA”</em></blockquote><blockquote><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pat[] =&nbsp;“AABA”</em></blockquote><blockquote><strong><em>Output:</em></strong><em>&nbsp;Pattern found at index 0, Pattern found at index 9, Pattern found at index 12</em></blockquote><blockquote class=\"ql-align-center\"><em><img src=\"https://media.geeksforgeeks.org/wp-content/uploads/20221125004358/image-660x398.png\" alt=\"Arrivals of pattern in the text\">Arrivals of pattern in the text</em></blockquote><p>Pattern searching is an important problem in computer science. When we do search for a string in a notepad/word file or browser or database, pattern-searching algorithms are used to show the search results.&nbsp;</p><p>We have discussed the Naive pattern-searching algorithm in the&nbsp;<a href=\"https://www.geeksforgeeks.org/searching-for-patterns-set-1-naive-pattern-searching/\" target=\"_blank\" style=\"color: var(--color-gfg);\">previous post</a>.&nbsp;The worst case complexity of the Naive algorithm is O(m(n-m+1)). The time complexity of the KMP algorithm is O(n+m) in the worst case.&nbsp;</p><p><strong>KMP (Knuth Morris Pratt) Pattern Searching:</strong></p><p>The&nbsp;<a href=\"https://www.geeksforgeeks.org/searching-for-patterns-set-1-naive-pattern-searching/\" target=\"_blank\" style=\"color: var(--color-gfg);\">Naive pattern-searching algorithm</a>&nbsp;doesn’t work well in cases where we see many matching characters followed by a mismatching character.</p><p><strong>Examples:</strong></p><blockquote><strong><em>1)&nbsp;</em></strong><em>txt[] = “AAAAAAAAAAAAAAAAAB”, pat[] = “AAAAB”</em></blockquote><blockquote><strong><em>2)&nbsp;</em></strong><em>txt[] = “ABABABCABABABCABABABC”, pat[] =&nbsp;“ABABAC” (not a worst case, but a bad case for Naive)</em></blockquote><p>The KMP matching algorithm uses degenerating property (pattern having the same sub-patterns appearing more than once in the pattern) of the pattern and improves the worst-case complexity to&nbsp;<strong>O(n+m)</strong>.&nbsp;</p><p>The basic idea behind KMP’s algorithm is: whenever we detect a mismatch (after some matches), we already know some of the characters in the text of the next window. We take advantage of this information to avoid matching the characters that we know will anyway match.&nbsp;</p><blockquote><strong><em>Matching Overview</em></strong></blockquote><blockquote><em>txt = “AAAAABAAABA”&nbsp;</em></blockquote><blockquote><em>pat = “AAAA”</em></blockquote><blockquote><em>We compare first window of&nbsp;</em><strong><em>txt</em></strong><em>&nbsp;with&nbsp;</em><strong><em>pat</em></strong></blockquote><blockquote><em>txt = “</em><strong><em>AAAA</em></strong><em>ABAAABA”&nbsp;</em></blockquote><blockquote><em>pat = “</em><strong><em>AAAA</em></strong><em>”&nbsp;[Initial position]</em></blockquote><blockquote><em>We find a match. This is same as&nbsp;</em><a href=\"https://www.geeksforgeeks.org/searching-for-patterns-set-1-naive-pattern-searching/\" target=\"_blank\" style=\"color: var(--color-gfg);\"><em>Naive String Matching</em></a><em>.</em></blockquote><blockquote><em>In the next step, we compare next window of&nbsp;</em><strong><em>txt</em></strong><em>&nbsp;with&nbsp;</em><strong><em>pat</em></strong><em>.</em></blockquote><blockquote><em>txt = “</em><strong><em>AAAAA</em></strong><em>BAAABA”&nbsp;</em></blockquote><blockquote><em>pat =&nbsp;“</em><strong><em>AAAA</em></strong><em>” [Pattern shifted one position]</em></blockquote><blockquote><em>This is where KMP does optimization over Naive. In this second window, we only compare fourth A of pattern</em></blockquote><blockquote><em>with fourth character of current window of text to decide whether current window matches or not. Since we know&nbsp;</em></blockquote><blockquote><em>first three characters will anyway match, we skipped matching first three characters.&nbsp;</em></blockquote><blockquote><strong><em>Need of Preprocessing?</em></strong></blockquote><blockquote><em>An important question arises from the above explanation, how to know how many characters to be skipped. To know this,&nbsp;</em></blockquote><blockquote><em>we pre-process pattern and prepare an integer array lps[] that tells us the count of characters to be skipped</em></blockquote><h3><strong>Preprocessing Overview:</strong></h3><ul><li>KMP algorithm preprocesses pat[] and constructs an auxiliary&nbsp;<strong>lps[]</strong>&nbsp;of size&nbsp;<strong>m</strong>&nbsp;(same as the size of the pattern) which is used to skip characters while matching.</li><li>Name&nbsp;<strong>lps</strong>&nbsp;indicates the longest proper prefix which is also a suffix. A proper prefix is a prefix with a whole string not allowed. For example, prefixes of “ABC” are “”, “A”, “AB” and “ABC”. Proper prefixes are “”, “A” and “AB”. Suffixes of the string are “”, “C”, “BC”, and “ABC”.</li><li>We search for lps in subpatterns. More clearly we focus on sub-strings of patterns that are both prefix and suffix.</li><li>For each sub-pattern pat[0..i] where i = 0 to m-1, lps[i] stores the length of the maximum matching proper prefix which is also a suffix of the sub-pattern pat[0..i].</li></ul><blockquote><em>&nbsp;&nbsp;lps[i] = the longest proper prefix of pat[0..i] which is also a suffix of pat[0..i].&nbsp;</em></blockquote><p><strong>Note:</strong>&nbsp;lps[i] could also be defined as the longest prefix which is also a proper suffix. We need to use it properly in one place to make sure that the whole substring is not considered.</p><p>Examples of lps[] construction:</p><blockquote><em>For the pattern “AAAA”, lps[] is [0, 1, 2, 3]</em></blockquote><blockquote><em>For the pattern “ABCDE”, lps[] is [0, 0, 0, 0, 0]</em></blockquote><blockquote><em>For the pattern “AABAACAABAA”, lps[] is [0, 1, 0, 1, 2, 0, 1, 2, 3, 4, 5]</em></blockquote><blockquote><em>For the pattern “AAACAAAAAC”, lps[] is [0, 1, 2, 0, 1, 2, 3, 3, 3, 4]&nbsp;</em></blockquote><blockquote><em>For the pattern “AAABAAA”, lps[] is [0, 1, 2, 0, 1, 2, 3]</em></blockquote><h3><strong>Preprocessing Algorithm:</strong></h3><p>In the preprocessing part,&nbsp;</p><ul><li>We calculate values in&nbsp;<strong>lps[]</strong>. To do that, we keep track of the length of the longest prefix suffix value (we use&nbsp;<strong>len</strong>&nbsp;variable for this purpose) for the previous index</li><li>We initialize&nbsp;<strong>lps[0]</strong>&nbsp;and&nbsp;<strong>len</strong>&nbsp;as 0.</li><li>If&nbsp;<strong>pat[len]</strong>&nbsp;and&nbsp;<strong>pat[i]</strong>&nbsp;match, we increment&nbsp;<strong>len</strong>&nbsp;by 1 and assign the incremented value to lps[i].</li><li>If pat[i] and pat[len] do not match and len is not 0, we update len to lps[len-1]</li><li>See&nbsp;<strong>computeLPSArray()</strong>&nbsp;in the below code for details</li></ul><p><strong>Illustration of preprocessing (or construction of lps[]):</strong></p><blockquote><em>pat[] = “AAACAAAA”</em></blockquote><blockquote><strong><em>=&gt; len = 0, i = 0:</em></strong><em>&nbsp;</em></blockquote><ul><li><em>lps[0] is always 0, we move to i = 1</em></li></ul><blockquote><strong><em>=&gt; len = 0, i = 1:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] match, do len++,&nbsp;</em></li><li><em>store it in lps[i] and do i++.</em></li><li><em>Set len = 1, lps[1] = 1, i = 2</em></li></ul><blockquote><strong><em>=&gt; len = 1, i&nbsp;= 2:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] match, do len++,&nbsp;</em></li><li><em>store it in lps[i] and do i++.</em></li><li><em>Set len = 2, lps[2] = 2, i = 3</em></li></ul><blockquote><strong><em>=&gt; len = 2, i = 3:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] do not match, and len &gt; 0,&nbsp;</em></li><li><em>Set len = lps[len-1] = lps[1] = 1</em></li></ul><blockquote><strong><em>=&gt; len = 1, i = 3:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] do not match and len &gt; 0,&nbsp;</em></li><li><em>len = lps[len-1] = lps[0] = 0</em></li></ul><blockquote><strong><em>=&gt; len = 0, i = 3:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] do not match and len = 0,&nbsp;</em></li><li><em>Set lps[3] = 0 and i = 4</em></li></ul><blockquote><strong><em>=&gt; len = 0, i = 4:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] match, do len++,&nbsp;</em></li><li><em>Store it in lps[i] and do i++.&nbsp;</em></li><li><em>Set len = 1, lps[4] = 1, i = 5</em></li></ul><blockquote><strong><em>=&gt; len = 1, i = 5:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] match, do len++,&nbsp;</em></li><li><em>Store it in lps[i] and do i++.</em></li><li><em>Set len = 2, lps[5] = 2, i = 6</em></li></ul><blockquote><strong><em>=&gt; len = 2, i = 6:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] match, do len++,&nbsp;</em></li><li><em>Store it in lps[i] and do i++.</em></li><li><em>len = 3, lps[6] = 3, i = 7</em></li></ul><blockquote><strong><em>=&gt; len = 3, i = 7:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] do not match and len &gt; 0,</em></li><li><em>Set len = lps[len-1] = lps[2] = 2</em></li></ul><blockquote><strong><em>=&gt; len = 2, i = 7:</em></strong></blockquote><ul><li><em>Since pat[len] and pat[i] match, do len++,&nbsp;</em></li><li><em>Store it in lps[i] and do i++.</em></li><li><em>len = 3, lps[7] = 3, i = 8</em></li></ul><blockquote><em>We stop here as we have constructed the whole lps[].</em></blockquote><h3>Implementation of KMP algorithm:</h3><p>Unlike the&nbsp;<a href=\"https://www.geeksforgeeks.org/searching-for-patterns-set-1-naive-pattern-searching/\" target=\"_blank\" style=\"color: var(--color-gfg);\">Naive algorithm</a>, where we slide the pattern by one and compare all characters at each shift, we use a value from lps[] to decide the next characters to be matched. The idea is to not match a character that we know will anyway match.</p><p>How to use lps[] to decide the next positions (or to know the number of characters to be skipped)?</p><ul><li>We start the comparison of pat[j] with j = 0 with characters of the current window of text.</li><li>We keep matching characters txt[i] and pat[j] and keep incrementing i and j while pat[j] and txt[i] keep&nbsp;<strong>matching</strong>.</li><li>When we see a&nbsp;<strong>mismatch</strong></li><li class=\"ql-indent-1\">We know that characters pat[0..j-1] match with txt[i-j…i-1] (Note that j starts with 0 and increments it only when there is a match).</li><li class=\"ql-indent-1\">We also know (from the above definition) that lps[j-1] is the count of characters of pat[0…j-1] that are both proper prefix and suffix.</li><li class=\"ql-indent-1\">From the above two points, we can conclude that we do not need to match these lps[j-1] characters with txt[i-j…i-1] because we know that these characters will anyway match. Let us consider the above example to understand this.</li></ul><p>Below is the illustration of the above algorithm:</p><blockquote><em>Consider txt[] = “</em><strong><em>AAAAABAAABA</em></strong><em>“, pat[] = “</em><strong><em>AAAA</em></strong><em>“</em></blockquote><blockquote><em>If we follow the above LPS building process then&nbsp;</em><strong><em>lps[] = {0, 1, 2, 3}</em></strong><em>&nbsp;</em></blockquote><blockquote><strong><em>-&gt; i = 0, j = 0:</em></strong><em>&nbsp;txt[i] and pat[j] match, do i++, j++</em></blockquote><blockquote><strong><em>-&gt; i = 1, j = 1:</em></strong><em>&nbsp;txt[i] and pat[j] match, do i++, j++</em></blockquote><blockquote><strong><em>-&gt; i = 2, j = 2:</em></strong><em>&nbsp;txt[i] and pat[j] match, do i++, j++</em></blockquote><blockquote><strong><em>-&gt; i = 3, j = 3:</em></strong><em>&nbsp;txt[i] and pat[j] match, do i++, j++</em></blockquote><blockquote><strong><em>-&gt; i = 4, j = 4:</em></strong><em>&nbsp;Since j = M, print pattern found and reset j,&nbsp;</em><strong><em>j</em></strong><em>&nbsp;= lps[j-1] = lps[3] =&nbsp;</em><strong><em>3</em></strong></blockquote><blockquote><em>Here unlike Naive algorithm, we do not match first three&nbsp;</em></blockquote><blockquote><em>characters of this window. Value of lps[j-1] (in above step) gave us index of next character to match.</em></blockquote><blockquote><strong><em>-&gt; i = 4, j = 3:</em></strong><em>&nbsp;txt[i] and pat[j] match, do i++, j++</em></blockquote><blockquote><strong><em>-&gt; i = 5, j = 4:</em></strong><em>&nbsp;Since j == M, print pattern found and reset j,&nbsp;</em><strong><em>j</em></strong><em>&nbsp;= lps[j-1] = lps[3] =&nbsp;</em><strong><em>3</em></strong></blockquote><blockquote><em>Again unlike Naive algorithm, we do not match first three&nbsp;characters of this window. Value of lps[j-1] (in above step) gave us index of next character to match.</em></blockquote><blockquote><strong><em>-&gt; i = 5, j = 3:</em></strong><em>&nbsp;txt[i] and pat[j] do NOT match and j &gt; 0, change only j.&nbsp;</em><strong><em>j</em></strong><em>&nbsp;= lps[j-1] = lps[2] =&nbsp;</em><strong><em>2</em></strong></blockquote><blockquote><strong><em>-&gt; i = 5, j = 2:</em></strong><em>&nbsp;txt[i] and pat[j] do NOT match and j &gt; 0, change only j.&nbsp;</em><strong><em>j</em></strong><em>&nbsp;= lps[j-1] = lps[1] =&nbsp;</em><strong><em>1</em></strong></blockquote><blockquote><strong><em>-&gt; i = 5, j = 1:</em></strong><em>&nbsp;txt[i] and pat[j] do NOT match and j &gt; 0, change only j.&nbsp;</em><strong><em>j</em></strong><em>&nbsp;= lps[j-1] = lps[0] =&nbsp;</em><strong><em>0</em></strong></blockquote><blockquote><strong><em>-&gt; i = 5, j = 0:</em></strong><em>&nbsp;txt[i] and pat[j] do NOT match and j is 0, we do i++.&nbsp;</em></blockquote><blockquote><strong><em>-&gt; i = 6, j = 0:</em></strong><em>&nbsp;txt[i] and pat[j] match, do i++ and j++</em></blockquote><blockquote><strong><em>-&gt; i = 7, j = 1:</em></strong><em>&nbsp;txt[i] and pat[j] match, do i++ and j++</em></blockquote><blockquote><em>We continue this way till there are sufficient characters in the text to be compared with the characters in the pattern…</em></blockquote><p>Below is the implementation of the above approach:</p><ul><li>C++</li><li>Java</li><li>Python3</li><li>C#</li><li>PHP</li><li>Javascript</li></ul><p><br></p><p><br></p><p><br></p><p><br></p><p><code style=\"color: rgb(0, 130, 0); background-color: initial;\">// C++ program for implementation of KMP pattern searching</code></p><p><code style=\"color: rgb(0, 130, 0); background-color: initial;\">// algorithm</code></p><p>&nbsp;</p><p><code style=\"color: gray; background-color: initial;\">#include &lt;bits/stdc++.h&gt;</code></p><p>&nbsp;</p><p><code style=\"color: rgb(0, 102, 153); background-color: initial;\"><strong>void</strong></code> <code style=\"color: black; background-color: initial;\">computeLPSArray(</code><code style=\"color: gray; background-color: initial;\"><strong>char</strong></code><code style=\"color: black; background-color: initial;\">* pat, </code><code style=\"color: gray; background-color: initial;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">M, </code><code style=\"color: gray; background-color: initial;\"><strong>int</strong></code><code style=\"color: black; background-color: initial;\">* lps);</code></p><p>&nbsp;</p><p><code style=\"color: rgb(0, 130, 0); background-color: initial;\">// Prints occurrences of txt[] in pat[]</code></p><p><code style=\"color: rgb(0, 102, 153); background-color: initial;\"><strong>void</strong></code> <code style=\"color: black; background-color: initial;\">KMPSearch(</code><code style=\"color: gray; background-color: initial;\"><strong>char</strong></code><code style=\"color: black; background-color: initial;\">* pat, </code><code style=\"color: gray; background-color: initial;\"><strong>char</strong></code><code style=\"color: black; background-color: initial;\">* txt)</code></p><p><code style=\"color: black; background-color: initial;\">{</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">M = </code><code style=\"color: rgb(255, 20, 147); background-color: initial;\"><strong>strlen</strong></code><code style=\"color: black; background-color: initial;\">(pat);</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">N = </code><code style=\"color: rgb(255, 20, 147); background-color: initial;\"><strong>strlen</strong></code><code style=\"color: black; background-color: initial;\">(txt);</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// create lps[] that will hold the longest prefix suffix</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// values for pattern</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">lps[M];</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// Preprocess the pattern (calculate lps[] array)</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">computeLPSArray(pat, M, lps);</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">i = 0; </code><code style=\"color: rgb(0, 130, 0); background-color: initial;\">// index for txt[]</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">j = 0; </code><code style=\"color: rgb(0, 130, 0); background-color: initial;\">// index for pat[]</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>while</strong></code> <code style=\"color: black; background-color: initial;\">((N - i) &gt;= (M - j)) {</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>if</strong></code> <code style=\"color: black; background-color: initial;\">(pat[j] == txt[i]) {</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">j++;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">i++;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>if</strong></code> <code style=\"color: black; background-color: initial;\">(j == M) {</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(255, 20, 147);\"><strong>printf</strong></code><code style=\"background-color: initial; color: black;\">(</code><code style=\"background-color: initial; color: blue;\">\"Found pattern at index %d \"</code><code style=\"background-color: initial; color: black;\">, i - j);</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">j = lps[j - 1];</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// mismatch after j matches</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>else</strong></code> <code style=\"color: rgb(0, 102, 153); background-color: initial;\"><strong>if</strong></code> <code style=\"color: black; background-color: initial;\">(i &lt; N &amp;&amp; pat[j] != txt[i]) {</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// Do not match lps[0..lps[j-1]] characters,</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// they will match anyway</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>if</strong></code> <code style=\"color: black; background-color: initial;\">(j != 0)</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">j = lps[j - 1];</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>else</strong></code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">i = i + 1;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p><code style=\"color: black; background-color: initial;\">}</code></p><p>&nbsp;</p><p><code style=\"color: rgb(0, 130, 0); background-color: initial;\">// Fills lps[] for given pattern pat[0..M-1]</code></p><p><code style=\"color: rgb(0, 102, 153); background-color: initial;\"><strong>void</strong></code> <code style=\"color: black; background-color: initial;\">computeLPSArray(</code><code style=\"color: gray; background-color: initial;\"><strong>char</strong></code><code style=\"color: black; background-color: initial;\">* pat, </code><code style=\"color: gray; background-color: initial;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">M, </code><code style=\"color: gray; background-color: initial;\"><strong>int</strong></code><code style=\"color: black; background-color: initial;\">* lps)</code></p><p><code style=\"color: black; background-color: initial;\">{</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// length of the previous longest prefix suffix</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">len = 0;</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">lps[0] = 0; </code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// lps[0] is always 0</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// the loop calculates lps[i] for i = 1 to M-1</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">i = 1;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>while</strong></code> <code style=\"color: black; background-color: initial;\">(i &lt; M) {</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>if</strong></code> <code style=\"color: black; background-color: initial;\">(pat[i] == pat[len]) {</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">len++;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">lps[i] = len;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">i++;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>else</strong></code> <code style=\"color: rgb(0, 130, 0); background-color: initial;\">// (pat[i] != pat[len])</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">{</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// This is tricky. Consider the example.</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// AAACAAAA and i = 7. The idea is similar</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// to search step.</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>if</strong></code> <code style=\"color: black; background-color: initial;\">(len != 0) {</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">len = lps[len - 1];</code></p><p>&nbsp;</p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// Also, note that we do not increment</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 130, 0);\">// i here</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>else</strong></code> <code style=\"color: rgb(0, 130, 0); background-color: initial;\">// if (len == 0)</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">{</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">lps[i] = 0;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">i++;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">}</code></p><p><code style=\"color: black; background-color: initial;\">}</code></p><p>&nbsp;</p><p><code style=\"color: rgb(0, 130, 0); background-color: initial;\">// Driver code</code></p><p><code style=\"color: gray; background-color: initial;\"><strong>int</strong></code> <code style=\"color: black; background-color: initial;\">main()</code></p><p><code style=\"color: black; background-color: initial;\">{</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>char</strong></code> <code style=\"color: black; background-color: initial;\">txt[] = </code><code style=\"color: blue; background-color: initial;\">\"ABABDABACDABABCABAB\"</code><code style=\"color: black; background-color: initial;\">;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: gray;\"><strong>char</strong></code> <code style=\"color: black; background-color: initial;\">pat[] = </code><code style=\"color: blue; background-color: initial;\">\"ABABCABAB\"</code><code style=\"color: black; background-color: initial;\">;</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: black;\">KMPSearch(pat, txt);</code></p><p><code style=\"background-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code style=\"background-color: initial; color: rgb(0, 102, 153);\"><strong>return</strong></code> <code style=\"color: black; background-color: initial;\">0;</code></p><p><code style=\"color: black; background-color: initial;\">}</code></p><p><strong>Output</strong></p><pre class=\"ql-syntax\" spellcheck=\"false\">Found pattern at index 10 \r\n</pre><p><strong>Time Complexity:</strong>&nbsp;O(N+M) where N is the length of the text and M is the length of the pattern to be found.</p><p><strong>Auxiliary Space:</strong>&nbsp;O(M)</p>', '', 25, '4');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `time` int(11) NOT NULL,
  `ip` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tid` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `request` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `pid` int(11) NOT NULL,
  `code` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contest` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pgroup` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `statement` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `imgext` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `input` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `output` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timelimit` float DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `languages` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text',
  `options` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayio` tinyint(1) NOT NULL DEFAULT 0,
  `maxfilesize` int(11) NOT NULL DEFAULT 50000,
  `solved` int(11) NOT NULL DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `sampleinput` text DEFAULT NULL,
  `sampleoutput` text DEFAULT NULL,
  `input_statement` text DEFAULT NULL,
  `output_statement` text DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`pid`, `code`, `name`, `type`, `contest`, `status`, `pgroup`, `statement`, `image`, `imgext`, `input`, `output`, `timelimit`, `score`, `languages`, `options`, `displayio`, `maxfilesize`, `solved`, `total`, `sampleinput`, `sampleoutput`, `input_statement`, `output_statement`, `note`) VALUES
(29, 'twice_again', 'Another Twice', 'Easy', 'contest', 'Active', 'C4', '<p>This is another twice problem which make 2x of a number</p>', '', NULL, '8\n1\n2\n3\n4\n5\n6\n7\n8\n', '2\n4\n6\n8\n10\n12\n14\n16\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 1, 256, 5, 44, '3\r\n4\r\n6\r\n12', '8\r\n12\r\n24', '<p>test case and inputs are int</p>', '<p>output is int</p>', ''),
(30, 'as_it_was', 'As it was', 'Easy', 'contest', 'Active', 'C4', '<p>if you input x then it will output x</p>', '', NULL, '8', '8', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 0, 256, 3, 13, '45', '45', '<p>x</p>', '<p>x</p>', 'nothing'),
(28, 'twice', 'Twice', 'Easy', 'contest', 'Active', 'C4', '<p>Make a twice of a number </p>', '', NULL, '8\n1\n2\n3\n4\n5\n6\n7\n8\n', '2\n4\n6\n8\n10\n12\n14\n16\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 1, 256, 1, 55, '2\r\n2\r\n4', '4\r\n8', '<p>test case input: int</p><p>int</p>', '<p>int</p>', ''),
(32, 't1.1', 't1.1', 'Easy', 'contest', 'Active', 'String', '<p>print your university Name</p>', '', NULL, '', 'PSTU\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 1, 256, 14, 38, 'usom', 'PSTU', '<p>NULL</p>', '<p><br></p>', ''),
(34, 'pp', 'pp', 'Easy', 'contest', 'Active', 'nnnnn', '<p>uj89u980u</p>', '', NULL, '', 'PSTU\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 1, 256, 1, 3, 'aa', 'aa', '<p>aa</p>', '<p>aa</p>', ''),
(33, 't1', 't1', 'Easy', '', 'Active', 'String', '<p>print your university Name</p>', '', NULL, '', 'PSTU\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 1, 256, 0, 0, 'usom', 'PSTU', '<p>NULL</p>', '<p><br></p>', ''),
(35, 'pp', 'pp', 'Easy', 'contest', 'Active', 'nnnnn', '<p>pp</p>', '', NULL, '', 'PSTU\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 0, 256, 0, 0, 'pp', 'pp', '<p>pp</p>', '<p>pp</p>', ''),
(38, 'sum_two', 'sum 2 numbers', 'Easy', 'practice', 'Active', 'normal', '<p>sum a and b</p><p>output result</p>', '', NULL, '3 2\n\n', '5\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 1, 256, 0, 5, '10 10', '20', '<p>a,b</p>', '<p>sum</p>', ''),
(37, 'sum_two', 'sum 2 number', 'Easy', 'practice', 'Active', 'normal', '<p>sum a and b</p><p>output the sum</p>', '', NULL, '3 2\n\n', '5\n', 1, 100, 'Brain,C,C++,C#,Java,JavaScript,Pascal,Perl,PHP,Python,Ruby,Text', NULL, 1, 256, 0, 0, '2 2', '4', '<p>a  , b:   -10^5&lt;= a,b &lt;= 10^5</p>', '<p>sum</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `runs`
--

CREATE TABLE `runs` (
  `rid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `pgroup` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `language` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `submittime` int(18) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `runs`
--

INSERT INTO `runs` (`rid`, `pid`, `pgroup`, `uid`, `language`, `time`, `result`, `access`, `submittime`) VALUES
(129, 31, NULL, 1, 'C++', '0.036', 'WA', 'private', 1687424639),
(128, 29, NULL, 2, 'C++', '0.036', 'AC', 'private', 1687423808),
(127, 29, NULL, 1, 'C++', '0.018', 'AC', 'private', 1687423715),
(126, 30, NULL, 1, 'C++', '0.034', 'WA', 'private', 1687423659),
(125, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687416856),
(124, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687415592),
(123, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687415493),
(122, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687415312),
(121, 29, NULL, 1, 'C++', '0.017', 'WA', 'private', 1687415100),
(120, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687415021),
(119, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687414957),
(118, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687414744),
(117, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687414687),
(116, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687414388),
(115, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687414309),
(114, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687414264),
(113, 29, NULL, 1, 'C++', '0.017', 'WA', 'private', 1687414219),
(112, 29, NULL, 1, 'C++', '0.035', 'WA', 'private', 1687414206),
(111, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687414054),
(110, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687413958),
(109, 29, NULL, 1, 'C++', '0.017', 'WA', 'private', 1687413935),
(108, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687413785),
(107, 29, NULL, 1, 'C++', '0.066', 'WA', 'private', 1687413731),
(106, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687413588),
(105, 29, NULL, 1, 'C++', NULL, NULL, 'private', 1687413519),
(104, 31, NULL, 1, 'C++', '0.034', 'WA', 'private', 1687326494),
(103, 31, NULL, 1, 'C++', '0.017', 'AC', 'private', 1687297609),
(102, 31, NULL, 1, 'C++', '0.019', 'PE', 'private', 1687297487),
(101, 31, NULL, 1, 'C++', '0.035', 'WA', 'private', 1687297340),
(100, 31, NULL, 1, 'C++', '0.034', 'WA', 'private', 1687297217),
(99, 29, NULL, 1, 'C++', '0.036', 'AC', 'private', 1687295145),
(98, 29, NULL, 1, 'C', '0.036', 'WA', 'private', 1687294370),
(97, 29, NULL, 1, 'C', '0.000', 'CE', 'private', 1687294335),
(130, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687425113),
(131, 31, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687425221),
(132, 31, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687425368),
(133, 31, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687425604),
(134, 31, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687425828),
(135, 31, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687425899),
(136, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1687426428),
(137, 29, NULL, 1, 'C++', '0.018', 'WA', 'private', 1687426595),
(138, 29, NULL, 1, 'C++', '0.039', 'WA', 'private', 1687426627),
(139, 29, NULL, 1, 'C++', NULL, NULL, 'private', 1692382632),
(140, 28, NULL, 1, 'C++', NULL, NULL, 'private', 1692526026),
(141, 29, NULL, 1, 'C++', NULL, NULL, 'private', 1692531957),
(142, 29, NULL, 1, 'C++', NULL, NULL, 'private', 1692532005),
(143, 29, NULL, 1, 'C++', NULL, NULL, 'private', 1692532269),
(144, 29, NULL, 1, 'C++', '0.019', 'WA', 'private', 1692532284),
(145, 28, NULL, 1, 'C++', '0.034', 'WA', 'private', 1692536795),
(146, 28, NULL, 4, 'C++', '0.038', 'WA', 'private', 1693262121),
(147, 32, NULL, 4, 'C++', '0.051', 'AC', 'private', 1693304764),
(148, 32, NULL, 4, 'C++', '0.042', 'WA', 'private', 1693304798),
(149, 32, NULL, 4, 'C++', '0.225', 'WA', 'private', 1693305354),
(150, 30, NULL, 4, 'C++', '0.038', 'AC', 'private', 1693305414),
(151, 34, NULL, 4, 'Python', NULL, NULL, 'private', 1693306438),
(152, 34, NULL, 4, 'C++', '0.072', 'WA', 'private', 1693306501),
(153, 34, NULL, 4, 'C++', '0.040', 'AC', 'private', 1693306646),
(154, 32, NULL, 4, 'Java', NULL, NULL, 'private', 1693307866),
(155, 32, NULL, 4, 'Python', '0.091', 'RTE', 'private', 1693322468),
(156, 32, NULL, 4, 'Java', '0.170', 'RTE', 'private', 1693325003),
(157, 32, NULL, 4, 'Java', '0.280', 'RTE', 'private', 1693325139),
(158, 32, NULL, 4, 'Java', '0.223', 'RTE', 'private', 1693325598),
(159, 32, NULL, 4, 'C++', '0.000', 'CE', 'private', 1693325672),
(160, 32, NULL, 4, 'C++', '0.042', 'AC', 'private', 1693325705),
(161, 32, NULL, 4, 'C++', '0.045', 'AC', 'private', 1693326151),
(162, 32, NULL, 4, 'C', '0.020', 'AC', 'private', 1693326296),
(163, 32, NULL, 4, 'Python', '0.039', 'RTE', 'private', 1693326372),
(164, 32, NULL, 4, 'Python', '0.126', 'RTE', 'private', 1693326489),
(165, 32, NULL, 4, 'C++', '0.038', 'WA', 'private', 1693326806),
(166, 32, NULL, 4, 'C++', '0.037', 'WA', 'private', 1693326857),
(167, 32, NULL, 4, 'C++', '0.037', 'AC', 'private', 1693327139),
(168, 32, NULL, 4, 'C++', '0.037', 'WA', 'private', 1693327290),
(169, 36, NULL, 4, 'C++', '0.122', 'WA', 'private', 1693410644),
(170, 36, NULL, 4, 'C++', '0.045', 'WA', 'private', 1693410697),
(171, 38, NULL, 4, 'C++', '0.000', 'CE', 'private', 1693411680),
(172, 38, NULL, 4, 'C++', '0.083', 'PE', 'private', 1693411742),
(173, 38, NULL, 4, 'C++', '0.124', 'PE', 'private', 1693411895),
(174, 32, NULL, 4, 'C++', '0.040', 'AC', 'private', 1693411977),
(175, 32, NULL, 4, 'Python', '1.143', 'RTE', 'private', 1693412012),
(176, 32, NULL, 4, 'Python', '0.072', 'AC', 'private', 1693412043),
(177, 32, NULL, 4, 'Java', '0.226', 'AC', 'private', 1693412161),
(178, 32, NULL, 4, 'Java', '0.171', 'WA', 'private', 1693412229),
(179, 38, NULL, 4, 'C++', '0.075', 'PE', 'private', 1693412293),
(180, 38, NULL, 4, 'C++', '0.000', 'CE', 'private', 1693436548),
(181, 32, NULL, 4, 'C++', '0.129', 'AC', 'private', 1693478537),
(182, 32, NULL, 4, 'C++', '0.080', 'AC', 'private', 1693479199),
(183, 32, NULL, 4, 'C++', '0.120', 'AC', 'private', 1693504099),
(184, 32, NULL, 4, 'JavaScript', NULL, NULL, 'private', 1693505972),
(185, 32, NULL, 4, 'JavaScript', NULL, NULL, 'private', 1693506814),
(186, 32, NULL, 4, 'JavaScript', '1.439', 'RTE', 'private', 1693507852),
(187, 32, NULL, 4, 'JavaScript', '1.339', 'RTE', 'private', 1693507909),
(188, 32, NULL, 4, 'JavaScript', NULL, NULL, 'private', 1693510204),
(189, 32, NULL, 4, 'JavaScript', NULL, NULL, 'private', 1693510281),
(190, 32, NULL, 4, 'JavaScript', NULL, NULL, 'private', 1693510377),
(191, 32, NULL, 4, 'JavaScript', '1.337', 'RTE', 'private', 1693510420),
(192, 32, NULL, 4, 'C++', '0.040', 'WA', 'private', 1693513562),
(193, 32, NULL, 4, 'C++', '0.020', 'AC', 'private', 1693513602),
(194, 32, NULL, 4, 'Java', '0.275', 'AC', 'private', 1693513654),
(195, 32, NULL, 4, 'Python', '0.078', 'AC', 'private', 1693513677),
(196, 30, NULL, 4, 'C++', '0.038', 'AC', 'private', 1693515760),
(197, 29, NULL, 4, 'C++', '0.041', 'WA', 'private', 1693515845),
(198, 29, NULL, 4, 'C++', '0.000', 'CE', 'private', 1693515892),
(199, 29, NULL, 4, 'C++', '0.043', 'AC', 'private', 1693515955),
(200, 30, NULL, 5, 'C++', '1.000', 'TLE', 'private', 1693516041),
(201, 30, NULL, 5, 'C++', '0.039', 'AC', 'private', 1693516235);

--
-- Triggers `runs`
--
DELIMITER $$
CREATE TRIGGER `scoreupdate` AFTER UPDATE ON `runs` FOR EACH ROW begin
DECLARE done INT DEFAULT FALSE;
DECLARE v_rid, v_submittime, v_incorrect, v_pen, v_score, recpid, v_dq, v_total, v_solved int(11);
DECLARE v_sco int DEFAULT 0;
DECLARE v_dqsco int DEFAULT 0;
DECLARE v_penalty bigint DEFAULT 0;
DECLARE cur1 CURSOR FOR SELECT distinct(runs.pid) as pid,problems.score as score FROM runs,problems WHERE runs.uid= OLD.uid and (runs.result='AC' OR runs.result='DQ') and runs.pid=problems.pid and problems.status!='Deleted' and runs.access!='deleted' and problems.contest = 'contest';
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
IF new.result <> old.result THEN
	OPEN cur1;
	read_loop: LOOP
		FETCH cur1 INTO recpid, v_score;
	    	IF done THEN
	      		LEAVE read_loop;
	    	END IF;
		SELECT count(*) into v_dq FROM runs WHERE result='DQ' and access!='deleted' and uid=OLD.uid and pid=recpid;
		IF v_dq = 0 THEN
			SELECT rid,submittime into v_rid, v_submittime FROM runs WHERE result='AC' and uid=OLD.uid and pid=recpid and access!='deleted' ORDER BY rid ASC LIMIT 0,1;
			SELECT count(*) into v_incorrect FROM runs, problems WHERE result!='AC' and result is not NULL and access!='deleted' and rid<v_rid and uid=OLD.uid and runs.pid=recpid and problems.score > 0 and problems.pid = runs.pid;
			SELECT value into v_pen from admin where variable = 'penalty';
			SELECT (v_penalty + v_incorrect*v_pen*60) into v_penalty;
			SELECT (v_sco + v_score) into v_sco;
		ELSE 
			SELECT (v_dqsco + v_score) into v_dqsco;
		END IF;
	end loop;
	select max(submittime) into v_submittime from (select min(submittime) as submittime from runs, problems WHERE runs.uid= OLD.uid and runs.result='AC' and runs.pid=problems.pid and problems.status!='Deleted' and runs.access!='deleted' and problems.contest = 'contest'  group by runs.pid)t;
	SELECT (v_penalty + v_submittime) into v_penalty;
	update admin set value=v_dqsco where variable='test';
	UPDATE Users SET score = (v_sco-v_dqsco), penalty=v_penalty, solved=(solved+1)  where uid=OLD.uid;
	CLOSE cur1;
END IF;
IF strcmp(old.access, 'deleted') <> 0 and strcmp(new.access, 'deleted') = 0 THEN
	select solved, total into v_solved, v_total from problems where pid = new.pid;
	update problems set total = (v_total-1) where pid = new.pid;
	IF strcmp(ifnull(new.result,''), 'AC') = 0 THEN
		update problems set solved = (v_solved-1) where pid = new.pid;
	END IF;
ELSEIF strcmp(old.access, 'deleted') =0 and strcmp(new.access, 'deleted') <> 0 THEN
	select solved, total into v_solved, v_total from problems where pid = new.pid;
	update problems set total = (v_total+1) where pid = new.pid;
	IF strcmp(ifnull(new.result,''), 'AC') = 0 THEN
		update problems set solved = (v_solved+1) where pid = new.pid;
	END IF;
ELSE
	IF strcmp(ifnull(old.result,''), 'AC') = 0 and strcmp(ifnull(new.result,''), 'AC') <> 0 THEN
		select solved, total into v_solved, v_total from problems where pid = new.pid;
		update problems set solved = (v_solved-1) where pid = new.pid;
	ELSEIF strcmp(ifnull(old.result,''), 'AC') <> 0 and strcmp(ifnull(new.result,''), 'AC') = 0 THEN
		select solved, total into v_solved, v_total from problems where pid = new.pid;
		update problems set solved = (v_solved+1) where pid = new.pid;
	END IF;
END IF;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subs_code`
--

CREATE TABLE `subs_code` (
  `rid` int(11) NOT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `error` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `output` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subs_code`
--

INSERT INTO `subs_code` (`rid`, `name`, `code`, `error`, `output`) VALUES
(97, 'Main', '#include<stdio.h>\r\nint main(){\r\nertewrt3wq \r\nreturn 0;\r\n}dfesfwae', NULL, NULL),
(98, 'Main', '#include<stdio.h>\r\nint main(){\r\n\r\nreturn 0;\r\n}', NULL, NULL),
(99, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        int x;\r\n        cin >> x;\r\n        cout << x*2 << endl;\r\n    }\r\n    return 0;\r\n}', '', '2\n4\n6\n8\n10\n12\n14\n16\n'),
(100, 'Main', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    int n, k, i, sum;\r\n    while(~scanf(\"%d%d\",&n, &k))\r\n    {\r\n        sum = k;\r\n        for(i = 0; i <= n; i ++)\r\n        {\r\n            sum += i * 5;\r\n            if(sum > 240)\r\n                break;\r\n        }\r\n        printf(\"%d\\n\", i - 1);\r\n    }\r\n    return 0;\r\n}\r\n', '', '2\n9\n1\n'),
(101, 'Main', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    int n, k, i, sum;\r\n    while(~scanf(\"%d%d\",&n, &k))\r\n    {\r\n        sum = k;\r\n        for(i = 0; i <= n; i ++)\r\n        {\r\n            sum += i * 5;\r\n            if(sum > 240)\r\n                break;\r\n        }\r\n        printf(\"%d\\n\", i - 1);\r\n    }\r\n    return 0;\r\n}', '', '2\n9\n1\n'),
(102, 'Main', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    int n, k, i, sum;\r\n    while(~scanf(\"%d%d\",&n, &k))\r\n    {\r\n        sum = k;\r\n        for(i = 0; i <= n; i ++)\r\n        {\r\n            sum += i * 5;\r\n            if(sum > 240)\r\n                break;\r\n        }\r\n        printf(\"%d\\n\", i - 1);\r\n    }\r\n    return 0;\r\n}', '', '4\n'),
(103, 'Main', '#include<bits/stdc++.h>\r\nusing namespace std;\r\nint main()\r\n{\r\n    int n, k, i, sum;\r\n    while(~scanf(\"%d%d\",&n, &k))\r\n    {\r\n        sum = k;\r\n        for(i = 0; i <= n; i ++)\r\n        {\r\n            sum += i * 5;\r\n            if(sum > 240)\r\n                break;\r\n        }\r\n        printf(\"%d\\n\", i - 1);\r\n    }\r\n    return 0;\r\n}', '', '4\n'),
(104, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(105, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        int d = 0;\r\n        cin >> d;\r\n        cout << d*2 << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(106, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(107, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(108, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(109, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(110, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(111, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(112, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(113, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(114, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(115, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(116, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(117, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(118, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(119, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(120, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(121, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesoho\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(122, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(123, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(124, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(125, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(126, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(127, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        int x;\r\n        cin>>x;\r\n        cout << 2*x<< endl;\r\n    }\r\n    return 0;\r\n}', '', '2\n4\n6\n8\n10\n12\n14\n16\n'),
(128, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        int x;\r\n        cin>>x;\r\n        cout << 2*x<< endl;\r\n    }\r\n    return 0;\r\n}', '', '2\n4\n6\n8\n10\n12\n14\n16\n'),
(129, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(130, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(131, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(132, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(133, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(134, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(135, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(136, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(137, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(138, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(139, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(140, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(141, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(142, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(143, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(144, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(145, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(146, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', '', 'codesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\ncodesohoj\n'),
(147, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    cout<<\"PSTU\";\r\n    return 0;\r\n}', NULL, NULL),
(148, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    \r\n        cout << \"lll\" << endl;\r\n    \r\n    return 0;\r\n}', NULL, NULL),
(149, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin >> t;\r\n    for (int i = 1; i <= t; i++) {\r\n        cout << \"codesohoj\" << endl;\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(150, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin>> t;cout<<t;\r\n    \r\n    return 0;\r\n}', '', '8'),
(151, 'Main', 't =input()\r\nprint(t)', NULL, NULL),
(152, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    string t;\r\n    cin>>t;\r\n    cout<<t;\r\n}', '', ''),
(153, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    string t;\r\n   cin>>t;\r\n    cout<<\"PSTU\";\r\n}', '', 'PSTU'),
(154, 'Main', 'import java.util.*;\r\npublic class Main {\r\n    public static void main(String args[]) {\r\n        Scanner sc = new Scanner(System.in);\r\n        int t = sc.nextInt();\r\n        \r\n            System.out.println(\"PSTU\");\r\n        \r\n    }\r\n}', NULL, NULL),
(155, 'Main', 't =input()\r\nprint(\"PSTU\")', NULL, NULL),
(156, 'Main', 'import java.util.*;\r\npublic class Main {\r\n    public static void main(String args[]) {\r\n        Scanner sc = new Scanner(System.in);\r\n        int t = sc.nextInt();\r\n        System.out.println(\"PSTU\");\r\n    }\r\n}', NULL, NULL),
(157, 'Main', 'import java.util.Scanner;\r\npublic class Main {\r\n    public static void main(String args[]) {\r\n        Scanner sc = new Scanner(System.in);\r\n        int t = sc.nextInt();\r\n        System.out.println(\"PSTU\");\r\n    }\r\n}', NULL, NULL),
(158, 'Main', 'import java.util.*;\r\npublic class Main {\r\n    public static void main(String args[]) {\r\n        Scanner sc = new Scanner(System.in);\r\n        int t = sc.nextInt();\r\n        System.out.println(\"PSTU\");\r\n    }\r\n}', NULL, NULL),
(159, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin>>t;\r\n    cout<<\"PSTU\";\r\n    }\r\n    return 0;\r\n}', NULL, NULL),
(160, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    cout<<\"PSTU\";\r\n    return 0;\r\n}', NULL, NULL),
(161, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    cout<<\"PSTU\";\r\n    return 0;\r\n}', NULL, NULL),
(162, 'Main', '#include<stdio.h>\r\nint main(){\r\n    int t;\r\n    scanf(\"%d\", &t);\r\n    printf(\"PSTU\");\r\n    \r\n    return 0;\r\n}', NULL, NULL),
(163, 'Main', 't =input()\r\nptint(\"PSTU\")', NULL, NULL),
(164, 'Main', 't =input()\r\nprint(\"PSTU\")', NULL, NULL),
(165, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    cout<<t;\r\n    return 0;\r\n}', NULL, NULL),
(166, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    cout<<t;\r\n    return 0;\r\n}', NULL, NULL),
(167, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    cout<<\"PSTU\";\r\n    return 0;\r\n}', NULL, NULL),
(168, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    cout<<t;\r\n    return 0;\r\n}', NULL, NULL),
(169, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int a,b;\r\n    \r\n    cout<<a+b<<endl;\r\n    return 0;\r\n}', NULL, NULL),
(170, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int a,b;\r\n    cin>>a>>b;\r\n    cout<<a+b<<endl;;\r\n    return 0;\r\n}', NULL, NULL),
(171, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>a>>b;\r\n    cout<<a+b;\r\n    return 0;\r\n}', NULL, NULL),
(172, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int a,b;\r\n    \r\n    cin>>a>>b;\r\n    cout<<a+b;\r\n    return 0;\r\n}', NULL, NULL),
(173, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int a,b;\r\n    cin>>a>>b;\r\n    cout<<a+b;\r\n    return 0;\r\n}', NULL, NULL),
(174, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cout<<\"PSTU\";\r\n    return 0;\r\n}', NULL, NULL),
(175, 'Main', 't =input()\r\nprint(\"PSTU\")', NULL, NULL),
(176, 'Main', 'print(\"PSTU\")', NULL, NULL),
(177, 'Main', 'import java.util.*;\r\npublic class Main {\r\n    public static void main(String args[]) {\r\n        //Scanner sc = new Scanner(System.in);\r\n        System.out.println(\"PSTU\");  \r\n        \r\n    }\r\n}', NULL, NULL),
(178, 'Main', 'import java.util.*;\r\npublic class Main {\r\n    public static void main(String args[]) {\r\n        Scanner sc = new Scanner(System.in);\r\n        System.out.println(\"PSTUss\"); \r\n        \r\n    }\r\n}', NULL, NULL),
(179, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int a,b;\r\n    cin>>a>>b;\r\n    cout<<a+b;\r\n    return 0;\r\n}', NULL, NULL),
(180, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>a>>b;\r\n    cout<<a+b;\r\n    return 0;\r\n}', NULL, NULL),
(181, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cout << \"PSTU\" << endl;\r\n    return 0;\r\n}', NULL, NULL),
(182, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cout << \"PSTU\" << endl;\r\n    return 0;\r\n}', NULL, NULL),
(183, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cout<<\"PSTU\";\r\n    \r\n    return 0;\r\n}', NULL, NULL),
(184, 'Main', '// the hello world program\r\nconsole.log(\'Hello World\');\r\n', NULL, NULL),
(185, 'Main', 'console.log(\'PSTU\');\r\n', NULL, NULL),
(186, 'Main', 'console.log(\'PSTU\')', NULL, NULL),
(187, 'Main', 'console.log(\'PSTU\');', NULL, NULL),
(188, 'Main', '\r\nconsole.log(\'PSTU\');\r\n', NULL, NULL),
(189, 'Main', 'console.log(\"PSTU\");\r\n                \r\n', NULL, NULL),
(190, 'Main', 'console.log(\"PSTU\");\r\n\r\n', NULL, NULL),
(191, 'Main', 'console.log(\"PSTU\");\r\n', NULL, NULL),
(192, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    ;\r\n    return 0;\r\n}', NULL, NULL),
(193, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cout<<\"PSTU\";\r\n    return 0;\r\n}', NULL, NULL),
(194, 'Main', 'import java.util.*;\r\npublic class Main {\r\n    public static void main(String args[]) {\r\n        Scanner sc = new Scanner(System.in);\r\n        \r\n        System.out.println(\"PSTU\");\r\n    }\r\n}', NULL, NULL),
(195, 'Main', 'print(\"PSTU\")', NULL, NULL),
(196, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    cout<<t;\r\n    return 0;\r\n}', '', '8'),
(197, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t,a;\r\n    \r\n    for(int i=0;i<t;i++){\r\n        cin>>a;\r\n        cout<<a*2<<endl;\r\n    }\r\n    return 0;\r\n}', '', ''),
(198, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin>>t;\r\n     for(int i=0;i<t;i++){\r\n        cin>>a;\r\n        cout<<a*2<<endl;\r\n    }\r\n    \r\n    return 0;\r\n}', 'env/code.cpp: In function ‘int main()’:\nenv/code.cpp:7:14: error: ‘a’ was not declared in this scope\n    7 |         cin>>a;\n      |              ^\n', ''),
(199, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t,a;\r\n    cin>>t;\r\n     for(int i=0;i<t;i++){\r\n        cin>>a;\r\n        cout<<a*2<<endl;\r\n    }\r\n    \r\n    return 0;\r\n}', '', '2\n4\n6\n8\n10\n12\n14\n16\n'),
(200, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    \r\n    cin>>t;\r\n    while(1)t=1;\r\n    return 0;\r\n}', 'Time Limit Exceeded - Process killed.', ''),
(201, 'Main', '#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n    int t;\r\n    cin>>t;cout<<t;\r\n    \r\n    return 0;\r\n}', '', '8');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pass` text NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `last_visit` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Normal',
  `ip` varchar(40) DEFAULT NULL,
  `session` varchar(30) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `team_id` text DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `penalty` int(11) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 0,
  `solved` int(11) NOT NULL DEFAULT 0,
  `solved_contest` int(11) NOT NULL DEFAULT 0,
  `photo` text DEFAULT NULL,
  `country` text NOT NULL DEFAULT 'Bangladesh',
  `skill` text DEFAULT NULL,
  `last_active` bigint(20) DEFAULT NULL,
  `university` text DEFAULT NULL,
  `dept` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uid`, `username`, `name`, `email`, `pass`, `phone`, `last_visit`, `status`, `ip`, `session`, `platform`, `team_id`, `score`, `penalty`, `rating`, `solved`, `solved_contest`, `photo`, `country`, `skill`, `last_active`, `university`, `dept`) VALUES
(4, 'rafid41', 'Rafid Al Nahiyan', 'gsb00678@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '01756294062', '2023-08-28 15:34:36', 'Admin', NULL, NULL, NULL, NULL, 400, 1693519555, 0, 8, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(5, 'FazleRabbeBipul', 'Fazle Rabbe Bipul', 'bipul15@cse.pstu.ac.bd', 'b04e273cf0c815a743fde7ae2f09f546', '01301479582', '2023-08-31 01:54:37', 'Admin', NULL, NULL, NULL, NULL, 100, 1693517435, 0, 2, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(6, 'Tazim', 'Md. Tazim Uddin', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:01:24', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(7, 'RonyMir', 'MD Rony Mir', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:03:16', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(8, 'Hasan', 'Mahedi Hasan', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:04:02', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(9, 'Jahid', 'M.M. Jahid Hasan', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:04:47', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(10, 'Mursaleen', 'Habibul Mursaleen', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:07:15', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(11, 'Rajesh', 'Rajesh Biswas ', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:08:15', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(12, 'Avro', 'Jyotirmoy Avro', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:09:09', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(13, 'Milon', 'Md. Kamruzzaman Milon ', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:10:03', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(14, 'abdulAlim', 'Md. Abdul Alim', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:11:01', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(15, 'Diganta', 'Shuvendu Bose Diganta', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:11:52', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(16, 'green', 'Green Sarker', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:26:02', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL),
(17, 'Anik', 'Anik Saha', 'abc@gmail.com', 'dcddb75469b4b4875094e14561e573d8', '00000', '2023-09-01 14:28:34', 'Normal', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Bangladesh', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category_problem`
--
ALTER TABLE `category_problem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `clar`
--
ALTER TABLE `clar`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editorials`
--
ALTER TABLE `editorials`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `learn`
--
ALTER TABLE `learn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `runs`
--
ALTER TABLE `runs`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `subs_code`
--
ALTER TABLE `subs_code`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `category_problem`
--
ALTER TABLE `category_problem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `learn`
--
ALTER TABLE `learn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `runs`
--
ALTER TABLE `runs`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `subs_code`
--
ALTER TABLE `subs_code`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
