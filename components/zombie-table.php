<table class="stats-row stats-table">
  <thead>
  <tr class='add-line table-hide-mobile'>
    <th onclick="sortTable('zombie-table', 'username', 15)">Username</th>
    <th>Type</th>
    <th onclick="sortTable('zombie-table', 'kills', 15)">Kills</th>
    <th  onclick="sortTable('zombie-table', 'starve', 15)" style="line-height: 1.2em;">Starve Timer</th>
    <th onclick="sortTable('zombie-table', 'points', 15)">Points</th>
  </tr>
  </thead>
  <tbody id="zombie-table" class="hide-mobile">
    <?php
    $data=$weeklong->get_zombies_from($name);
      if($displayStats && $data != null){
        $data=$weeklong->get_zombies_from($name);
        foreach($data as $zombie){
          $status = getZombieType($zombie["status"]);
          $starve_date = new DateTime(date($zombie["starve_date"]));
          $current_time = new DateTime(date('Y-m-d H:i:s'));
          $end_time = new DateTime(date($weeklong->get_weeklong($name)["end_date"]));
          if($current_time > $end_time){
            $current_time = $end_time;
          }
          $time_left = $current_time->diff($starve_date);
          $hours = $time_left->format('%H')+($time_left->format('%a')*24);
          $formatTime = $hours.$time_left->format(':%I:%S');
          $points = $zombie["points"];
          if($points == null){
            $points = 0;
          }
          echo "<tr class='table-hide-mobile add-line'>";
          echo "<td id='username'>".$zombie["username"]."</td>";
          echo "<td>".$status."</td>";
          echo "<td id='kills'>".($zombie["kill_count"]+0)."</td>";
          echo "<td class='red' id='starve'>".$formatTime."</td>";
          echo "<td id='points'>".$points."</td>";
          echo "</tr>";
        }
      }
    ?>
  </tbody>
  <thead>
    <tr class='table-show-mobile add-line'>
      <th>
        <div class="mobile-table-line-1" onclick="sortTable('zombie-table-mobile', 'username', 15)">Username</div>
        <div class="mobile-table-line-1" style='float: right;'>Type</div>
        <div>
          <div class="mobile-table-line-2" onclick="sortTable('zombie-table-mobile', 'kills', 15)">Kills</div>
          <div class="mobile-table-line-2" onclick="sortTable('zombie-table-mobile', 'points', 15)">Points</div>
          <div class="mobile-table-line-2" onclick="sortTable('zombie-table-mobile', 'starve', 15)">Starve Timer</div>
        </div>
      </th>
      </tr>
  </thead>
  <tbody id="zombie-table-mobile" class="show-mobile">
    <?php
    $data=$weeklong->get_zombies_from($name);
      if($displayStats && $data != null){
        $data=$weeklong->get_zombies_from($name);
        foreach($data as $zombie){
          $status = getZombieType($zombie["status"]);
          $starve_date = new DateTime(date($zombie["starve_date"]));
          $current_time = new DateTime(date('Y-m-d H:i:s'));
          $end_time = new DateTime(date($weeklong->get_weeklong($name)["end_date"]));
          if($current_time > $end_time){
            $current_time = $end_time;
          }
          $time_left = $current_time->diff($starve_date);
          $hours = $time_left->format('%H')+($time_left->format('%a')*24);
          $formatTime = $hours.$time_left->format(':%I:%S');
          $points = $zombie["points"];
          if($points == null){
            $points = 0;
          }
          echo "<tr class='add-line table-show-mobile'><td>";
              echo "<div class='mobile-table-line-1' id='username'>".$zombie["username"]."</div>";
              echo "<div class='mobile-table-line-1 red' style='float: right;'>".$status."</div>";
              echo "<div>";
                echo "<div class='mobile-table-line-2' id='kills'>".($zombie["kill_count"]+0)."</div>";
                echo "<div class='mobile-table-line-2' id='points'>".$points."</div>";
                echo "<div class='mobile-table-line-2 red' id='starve'>".$formatTime."</div>";
              echo "</div>";
          echo "</td></tr>";
        }
      }
    ?>
  </tbody>
</table>
<div class="outer-div">
  <div class="inner-div">
    <ul class="pagination pagination-lg pager hide-mobile" id="zombie-table-pager"></ul>
  </div>
</div>
<div class="outer-div">
  <div class="inner-div">
    <ul class="pagination pagination-lg pager show-mobile" id="zombie-table-mobile-pager"></ul>
  </div>
</div>
