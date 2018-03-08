<?php 

require($_SERVER['DOCUMENT_ROOT'].'/includes/config.php');


// include header template
require('../layout/header.php');

include $_SERVER['DOCUMENT_ROOT'].'/layout/navbar.php' ?>



<div class="lightslide">

  <div class="player_container">

    <div class="content lightslide-list" style="overflow: auto;">
      <div class="subheadline orange" style="margin: 0; text-align: center; font-size: 50px;">Player Statistics</div>
      <div class="statistics">
        <?php
          $displayStats = false;
          if(isset($_GET["name"])){
            $name = $_GET["name"];
            if($weeklong->get_weeklong($name)){
              $displayStats = true;
              echo "<p class='subheadline' style='margin: 0; text-align: center; color: white; font-size: 20px;'>";
              echo "Humans: ".sizeof($weeklong->get_humans_from($name));
              echo " &emsp; Zombies: ".sizeof($weeklong->get_zombies_from($name));
              echo " &emsp; Deceased: ".sizeof($weeklong->get_deceased_from($name));
              echo "</p>";
            }
          }
        ?>
        <div class='human-container'>
          <div class='subheader white center'><h3><strong>Humans</strong></h3></div>
          <div class='subheader orange'>
            <div class='center'>Username</div>
          </div>
          <?php
            if($displayStats){
              $data=$weeklong->get_humans_from($name);
              foreach($data as $human){
                echo "<div class='subheader white'>";
                echo "<div class='human'>".$human["username"]."</div>";
                echo "</div>";
              }
            }
          ?>
        </div>


        <div class='nonhuman-container'>
          <div class='subheader white center'><h3><strong>Zombies</strong></h3></div>
          <div class='subheader orange'>
            <div class='username'>Username</div>
            <div class='kills'>Kills</div>
            <div class='date'>Until Death</div>
          </div>
          <?php
            if($displayStats){
              $data=$weeklong->get_zombies_from($name); 
              foreach($data as $zombie){
                echo "<div class='subheader white'>";
                echo "<div class='username'>".$zombie["username"]."</div>";
                echo "<div class='kills'>".($zombie["kill_count"]+0)."</div>";
                $starve_date = new DateTime(date($zombie["starve_date"]));
                $current_time = new DateTime(date('Y-m-d H:i:s'));
                $time_left = $current_time->diff($starve_date);
                $hours = $time_left->format('%H')+($time_left->format('%a')*24);
                echo "<div class='date red'>".$hours.$time_left->format(':%I:%S')."</div>";
                echo "</div>";
              }
            }
          ?>
        </div>

        <div class='nonhuman-container'>
          <div class='subheader white center'><h3><strong>Deceased</strong></h3></div>
          <div class='subheader orange'>
            <div class='username'>Username</div>
            <div class='kills'>Kills</div>
            <div class='date'>Time of Death</div>
          </div>
          <?php
            if($displayStats){
              $data=$weeklong->get_deceased_from($name);
              foreach($data as $dead){
                  echo "<div class='subheader white'>";
                  echo "<div class='username'>".$dead["username"]."</div>";
                  echo "<div class='kills'>".($dead["kill_count"]+0)."</div>";
                  $starve_date = new DateTime(date($dead["starve_date"]));
                  echo "<div class='date red'>".$starve_date->format('H:i m-d-Y')."</div>";
                  echo "</div>";
              }
            }
          ?>
        </div>

      </div>
    </div>

  </div> <!-- end container -->

</div> <!-- end signup section -->

<!-- End Document
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script src="/js/sort.js"></script>
<?php
// include footer template
require($_SERVER['DOCUMENT_ROOT'].'/layout/footer.php');
?>