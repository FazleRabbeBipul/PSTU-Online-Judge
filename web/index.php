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


  <meta name="description" content="PSTU-OJ is a platform for problem solving, contest and learn.">

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#000000" />
  <link rel="shortcut icon" href="./assets/img/favicon.ico" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/logo.svg" />
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" /> -->
  <script src="https://kit.fontawesome.com/1fcbf8463b.js" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/creativetimofficial/tailwind-starter-kit/compiled-tailwind.min.css" />
  <title>PSTU-OJ</title>


</head>

<body class="text-gray-800 antialiased">


  <main>
    <div class="relative pt-16 pb-32 flex content-center items-center justify-center" style="min-height: 75vh">
      <div class="absolute top-0 w-full h-full" style="background-image: url('./assets/_new_assets/img/back.jpg')">
        <span id="blackOverlay" class="w-full h-full absolute opacity-75 bg-black"></span>
      </div>
      <div class="container relative mx-auto">
        <div class="items-center flex flex-wrap">
          <div class="w-full lg:w-6/12 px-4 ml-auto mr-auto text-center">
            <div class="pr-12">
              <h1 class="text-white font-semibold text-4xl">
                PSTU-OJ
              </h1>
              <p class="mt-4 text-lg text-gray-300">
                PSTU-OJ is an innovative online judge offering a platform for coding 
                enthusiasts to hone their programming skills. With a diverse problem
                set, automated evaluation, and engaging contests, PSTU-OJ provides an
                ideal environment for users to practice problem-solving, improve 
                algorithmic thinking,and participate in competitive coding.
                PSTU-OJ offers a space to challenge yourself, learn from others, and
                track your progress as you tackle a range of coding challenges.
              </p>
            </div>
          </div>
        </div>
      </div>
    <div class="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden" style="height: 70px">

      </div>
    </div>
    <section class="pb-20 bg-gray-200 -mt-24">
      <div class="container mx-auto px-4">
        <div class="flex flex-wrap">
          <div class="lg:pt-12 pt-6 w-full md:w-4/12 px-4 text-center">
            <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg">
              <div class="px-4 py-5 flex-auto">
                <div class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-red-400">
                <i class="fa-solid fa-gears fa-bounce" style="color: #401f51;"></i>
                  </div>
                    <h6 class="text-xl font-semibold">Problemset</h6>
                    <p class="mt-2 mb-4 text-gray-600">
                    Discover a realm of coding challenges in our problemset. From rookies to experts, each problem offers a chance to refine skills in diverse topics like algorithms, data structures, and beyond. Get ready to embark on a coding journey that suits your level."
                    </p>
                </div>
            </div>
          </div>
          <div class="w-full md:w-4/12 px-4 text-center">
            <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg">
              <div class="px-4 py-5 flex-auto">
                <div class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-blue-400">
                <i class="fa-brands fa-python fa-fade"></i>
                </div>
                <h6 class="text-xl font-semibold">Several Language Support</h6>
                <p class="mt-2 mb-4 text-gray-600">
                Our online judge embraces multiple programming languages including C, C++, Java, Python, and JavaScript. Find your coding comfort zone and excel in the language that resonates with you.
                </p>
              </div>
            </div>
          </div>
          <div class="lg:pt-12 pt-6 w-full md:w-4/12 px-4 text-center">
            <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg">
              <div class="px-4 py-5 flex-auto">
                <div class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-green-400">
                <i class="fa-brands fa-codepen fa-flip"></i>
                </div>
                <h6 class="text-xl font-semibold">Live Contests</h6>
                <p class="mt-2 mb-4 text-gray-600">
                Participate in dynamic coding contests that fuel your competitive spirit. From rapid rounds to immersive challenges, our contests offer a chance to showcase your coding prowess and strategic thinking. Embrace the excitement, solve problems, and climb the ranks
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="flex flex-wrap items-center mt-32">
          <div class="w-full md:w-5/12 px-4 mr-auto ml-auto">

            <h3 class="text-3xl mb-2 font-semibold leading-normal">
              Elevate Your Problem-Solving Proficiency
            </h3>
            <p class="text-lg font-light leading-relaxed mt-4 mb-4 text-gray-700">
            Refine your problem-solving acumen through tackling a myriad of coding puzzles. Consistent engagement and enthusiastic involvement in our weekly coding competitions will not only refine your coding aptitude but also foster strategic thinking and overall problem-solving finesse.
            </p>

            <!-- <a href="<?php echo SITE_URL; ?>/problems.php" class="font-bold text-gray-800 mt-8">Check Problemset!</a> -->
          </div>
          <div class="w-full md:w-4/12 px-4 mr-auto ml-auto">
            <div class="relative flex flex-col min-w-0 break-words ">

              <!-- <img src="./assets/img/home1.svg" alt="..." /> -->
              <img src="./assets/_new_assets/img/home-1.jpg" alt="..." />

            </div>
          </div>
        </div>
    </section>
    <section class="relative py-20">
      <div class="bottom-auto top-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden -mt-20" style="height: 80px">
        <svg class="absolute bottom-0 overflow-hidden" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none" version="1.1" viewBox="0 0 2560 100" x="0" y="0">  
          <polygon class="text-white fill-current" points="2560 0 2560 100 0 100"></polygon>   
        </svg>   
      </div>
      <div class="container mx-auto px-4">
        <div class="items-center flex flex-wrap">
          <div class="w-full md:w-4/12 ml-auto mr-auto px-4">
            <!-- <img alt="..." class="h-48 max-h-full ..." src="./assets/img/home2.svg" /> -->
            <img alt="..." class="h-48 max-h-full ..." src="./assets/_new_assets/img/home-2.jpg" />

          </div>
          <div class="w-full md:w-5/12 ml-auto mr-auto px-4">
            <div class="md:pr-12">
              <!-- <div class="text-pink-600 p-3 text-center inline-flex items-center justify-center w-16 h-16 mb-6 shadow-lg rounded-full bg-pink-300"> -->
               
              </div>
              <h3 class="text-3xl font-semibold">Learn and Share knowledge</h3>
              <p class="mt-4 text-lg leading-relaxed text-gray-600">
              seize the opportunity to bolster your coding repertoire. Immerse yourself in a wealth of 
              educational content, tutorials, and interactive simulations. Master new algorithms, 
              explore data structures, and stay updated on emerging programming paradigms in "Topics".

              Consider contributing articles that unveil effective problem-solving techniques,
              unravel coding challenges, or showcase your journey towards mastering a particular 
              programming language. Discuss industry trends, offer debugging strategies, 
              or even narrate your personal coding milestones. By sharing your experiences and ideas in "blog".
                
             </p>
              <!-- <ul class="list-none mt-6">
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
              </ul> -->
            </div>
          </div>
        </div>
      </div>
    </section>



  </main>
  <footer class="relative bg-gray-300 pt-8 pb-6">
    <div class="bottom-auto top-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden -mt-20" style="height: 80px">
      <svg class="absolute bottom-0 overflow-hidden" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none" version="1.1" viewBox="0 0 2560 100" x="0" y="0">
        <polygon class="text-gray-300 fill-current" points="2560 0 2560 100 0 100"></polygon>
      </svg>
    </div>
    <div class="container mx-auto px-4">
      <div class="flex flex-wrap">
        <div class="w-full lg:w-6/12 px-4">
          <h4 class="text-3xl font-semibold">Let's keep in touch!</h4>
          <h5 class="text-lg mt-0 mb-2 text-gray-700">
            Find us on any of these platforms.
          </h5>
          <div class="mt-6">
            <button class="bg-white text-blue-600 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2 p-3" type="button">
              <i class="flex fab fa-facebook-square"></i></button><button class="bg-white text-pink-400 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2 p-3" type="button">
              <i class="flex fab fa-dribbble"></i></button><button class="bg-white text-gray-900 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2 p-3" type="button">
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
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="">About Us</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="">Blog</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="#">Github</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="">Free Products</a>
                </li>
              </ul>
            </div>
            <div class="w-full lg:w-4/12 px-4">
              <span class="block uppercase text-gray-600 text-sm font-semibold mb-2">Other Resources</span>
              <ul class="list-unstyled">

                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="">Terms &amp; Conditions</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="">Privacy Policy</a>
                </li>
                <li>
                  <a class="text-gray-700 hover:text-gray-900 font-semibold block pb-2 text-sm" href="">Contact Us</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <hr class="my-6 border-gray-400" />
      <!-- <div class="flex flex-wrap items-center md:justify-between justify-center">
        <div class="w-full md:w-4/12 px-4 mx-auto text-center">
          <div class="text-sm text-gray-600 font-semibold py-1">
            Copyright PART jodi lekhi
            
          </div>
        </div>
      </div> -->
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