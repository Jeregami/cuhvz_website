
<!-- WEEKLONG SECTION -->
<div class="darkslide">
  <div class="container center">

    <div class="row">
      <img src="/images/grave.png" class="u-max-full-width">
      <h2 class="section-heading orange">
        <?php
          if(isset($_SESSION["title"])){
            $weeklong = $_SESSION["weeklong"];
            $title = $_SESSION["title"];
            echo "<a href='/weeklong/info.php?name=$weeklong'>$title</a>";
          }
          else
            echo "Weeklong Game";

        ?>
      </h2>
      <h5 class="deeporange">
      <?php
      if(isset($_SESSION["weeklong_dates"]))
      echo $_SESSION["weeklong_dates"];
      ?></h5>
      <br>

      <h5 class="subheader" id="game_state">Gametime Remaining</h5>

      <!-- Countdown Clock -->
      <div id="clockdiv">
        <div class="offset-by-two two columns">
          <span class="clocknumber subheader days">0</span><br>
          <span class="clocklabel">Days</span>
        </div>
        <div class="two columns">
          <span class="clocknumber subheader hours">0</span><br>
          <span class="clocklabel">Hrs</span>
        </div>
        <div class="two columns">
          <span class="clocknumber subheader minutes">0</span><br>
          <span class="clocklabel">Min</span>
        </div>
        <div class="two columns">
          <span class="clocknumber subheader seconds">0</span><br>
          <span class="clocklabel">Sec</span>
        </div>
      </div>
      <!-- End Countdown Clock -->
  </div> <!-- end row -->

  <br><br>

    <div class="row">
      <h2 class="subheadline"><span class="white" id="registered"><?php $countusers ?> Players Registered</span></h2>
      <?php
      // if(!$_SESSION["started"]){
      //   if($user->is_logged_in()){
      //     $signupLink = "/profile.php?join=".$_SESSION['title']."&eventId=".$_SESSION['weeklong'];
      //   }else{
      //     $signupLink = "/login.php?join=".$_SESSION['title']."&eventId=".$_SESSION['weeklong'];
      //   }
      //   echo "<p><a href='$signupLink'>Wanna play? Be sure to register for the game.</a></p>";
      // }
      if($user->is_logged_in()){
        $signupLink = "/profile.php?join=".$_SESSION['title']."&eventId=".$_SESSION['weeklong'];
      }else{
        $signupLink = "/login.php?join=".$_SESSION['title']."&eventId=".$_SESSION['weeklong'];
      }
      if(!$_SESSION["started"]){
        echo "<p><a href='$signupLink'>Wanna play? Be sure to register for the game.</a></p>";
      }else{
        $startDate = new DateTime(date($_SESSION["start_date"]));
        $lateStartDate = $startDate->format('Y-m-d')." 17:00:00";
        $currentTime = new DateTime(date('Y-m-d H:i:s'));
        $lateStartDate = new DateTime(date($lateStartDate));
        // error_log($lateStartDate->format('Y-m-d H:i:s'), 0);
        if($currentTime < $lateStartDate){
          $signupLink = $signupLink."&late=human";
          echo "<p><a href='$signupLink'>Late to the game? Hurry up and join now!</a></p>";
        }else{
          // $signupLink = $signupLink."&late=zombie";
          // echo "<p><a href='$signupLink'>Late to the game? Join now and start as a zombie</a></p>";
        }
      }

      ?>
      <img src="/images/zombie.png" class="u-max-full-width">
    </div>

   </div> <!-- end container -->

  </div>

 </div> <!-- end container -->

</div>
<?php
  $end_date = $_SESSION["start_date"];
?>
<script src="/js/countdown_1.0.js"></script>
<script>
/*
var end = <?= "\"".$end_date."\"" ?>;
console.log(end);
initializeClock('clockdiv', end);
*/
</script>
