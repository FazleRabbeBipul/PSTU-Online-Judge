<?php
require_once "config.php";
require_once "components.php";
require_once "navigation.php";
$_SESSION["url"] = $_SERVER["REQUEST_URI"];
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="description" content="Codesohoj is an online platform that combines the benefits of an online judge and a coding learning platform." />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#000000" />
  <link rel="shortcut icon" href="./assets/img/favicon.ico" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/logo.svg" />
  <link rel="stylesheet" href="./css/index.css" />
  <title>Codesohoj - Coding made Sohoj</title>
</head>
<body>
  <header class="header">
    <div class="overlay"></div>
    <div class="container">
      <div class="content-center">
        <h1>Codesohoj = Code + Sohoj + OJ</h1>
        <p class="mt-4 text-lg text-gray-300">
          Codesohoj is an online platform that combines the benefits of
          an online judge and a coding learning platform. It offers
          programming problems, educational content, and supports
          multiple programming languages to provide an engaging learning
          experience for users of all levels.
        </p>
      </div>
    </div>
  </header>

  <section class="feature">
    <div class="container">
      <div class="flex">
        <div class="feature-box">
          <div class="circle red"><i class="fas fa-award"></i></div>
          <h6 class="text-xl font-semibold">Problem Solving</h6>
          <p class="mt-2 mb-4 text-gray-600">
            Solve various types of problems and improve your problem
            solving skills. We have large sets of problems in many
            topics such as Dynamic Programming, Graph Theory, Data
            Structures, etc.
          </p>
        </div>
        <div class="feature-box">
          <!-- Second feature box content -->
        </div>
        <div class="feature-box">
          <!-- Third feature box content -->
        </div>
      </div>
    </div>
  </section>

  <section class="cta">
    <div class="container">
      <h3 class="text-3xl mb-2 font-semibold leading-normal">
        Improve your problem solving skills
      </h3>
      <p class="text-lg font-light leading-relaxed mt-4 mb-4 text-gray-700">
        You can enhance your problem solving skills by solving various types of problems. If you solve problems regularly and participate in our weekly contests, your coding, thinking, and overall problem solving skill will enrich significantly. We have large sets of problems in many topics such as Dynamic Programming, Graph Theory, Data Structures, etc.
      </p>
      <a href="<?php echo SITE_URL; ?>/problems.php" class="font-bold text-gray-800 mt-8">Check Problemset!</a>
    </div>
  </section>

  <section class="glance">
    <div class="container">
      <h3 class="text-3xl font-semibold">Codesohoj at a glance</h3>
      <p class="mt-4 text-lg leading-relaxed text-gray-600">
        Codesohoj is an online judge and a learning platform for all the coders which is a Web Programming course project by Jahangir Hossain (B190305009) and Md. Farhan Masud Shohag (B190305043) under the supervision of Dr. Sajeeb Saha, Associate Professor of CSE JnU.
      </p>
      <ul class="list-none mt-6">
        <li class="py-2">
          <div class="flex items-center">
            <div>
              <span class="text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-pink-600 bg-pink-200 mr-3"><i class="fas fa-fingerprint"></i></span>
            </div>
            <div>
              <h4 class="text-gray-600">
                Online Judge with 1000+ problems
              </h4>
            </div>
          </div>
        </li>
        <li class="py-2">
          <div class="flex items-center">
            <div>
              <span class="text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-pink-600 bg-pink-200 mr-3"><i class="fab fa-html5"></i></span>
            </div>
            <div>
              <h4 class="text-gray-600">Articles, Blogs, Simulations in Coding and CS topics</h4>
            </div>
          </div>
        </li>
        <li class="py-2">
          <div class="flex items-center">
            <div>
              <span class="text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-pink-600 bg-pink-200 mr-3"><i class="far fa-paper-plane"></i></span>
            </div>
            <div>
              <h4 class="text-gray-600">Community Building among coders of all over the world</h4>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </section>

  <footer class="footer">
    <div class="container mx-auto px-4">
      <div class="flex flex-wrap">
        <div class="w-full lg:w-6/12 px-4">
          <h4 class="text-3xl font-semibold">Let's keep in touch!</h4>
          <h5 class="text-lg mt-0 mb-2 text-gray-700">
            Find us on any of these platforms.
          </h5>
          <div class="mt-6">
            <button class="bg-white text-blue-600 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2 p-3" type="button">
              <i class="flex fab fa-facebook-square"></i>
            </button>
            <button class="bg-white text-pink-400 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2 p-3" type="button">
              <i class="flex fab fa-dribbble"></i>
            </button>
            <button class="bg-white text-gray-900 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2 p-3" type="button">
              <i class="flex fab fa-github"></i>
            </button>
          </div>
        </div>
        <div class="w-full lg:w-6/12 px-4">
          <div class="flex flex-wrap items-top mb-6">
            <div class="w-full lg:w-4/12 px-4 ml-auto">
              <span class="block uppercase text-gray-600 text-sm font-semibold mb-2">Useful Links</span>
              <ul class="list-unstyled">
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="#">About Us</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="#">Blog</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="https://github.com/JHM69/codesohoj">Github</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="#">Free Products</a>
                </li>
              </ul>
            </div>
            <div class="w-full lg:w-4/12 px-4">
              <span class="block uppercase text-gray-600 text-sm font-semibold mb-2">Other Resources</span>
              <ul class="list-unstyled">
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="#">Terms &amp; Conditions</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="#">Privacy Policy</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="#">Contact Us</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <hr class="my-6 border-gray-400" />
      <div class="flex flex-wrap items-center md:justify-between justify-center">
        <div class="w-full md:w-4/12 px-4 mx-auto text-center">
          <div class="text-sm text-gray-600 font-semibold py-1">
            Copyright © 2023 Codesohoj by
            <a href="https://www.github.com/jhm69" class="text-gray-600 hover:text-gray-900">jhm69</a>
            and
            <a href="https://www.github.com/fms-bite" class="text-gray-600 hover:text-gray-900">fms-bite</a>
          </div>
        </div>
      </div>
    </div>
  </footer>
</body>

<script>
  function toggleNavbar(collapseID) {
    document.getElementById(collapseID).classList.toggle("hidden");
    document.getElementById(collapseID).classList.toggle("block");
  }
</script>
</html>
