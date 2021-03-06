<table class="stats-row stats-table" id="dead-table">
  <thead>
    <tr class='table-hide-mobile'>
      <th>Username</th>
      <th>Starved</th>
      <th>Kills</th>
      <th>Points</th>
    </tr>
  </thead>
  <tbody id="deceased-table" class="hide-mobile">
    <?php
      $data=$weeklong->get_deceased_from($name);
      if($displayStats && $data!=null){
        foreach($data as $dead){
            $starve_date = new DateTime(date($dead["starve_date"]));
            $formatTime = $starve_date->format('H:i m-d-Y');
            $points = $dead["points"];
            if($points == null){
              $points = 0;
            }
            echo "<tr class='table-hide-mobile add-line'>";
            echo "<td>".$dead["username"]."</td>";
            echo "<td class='red'>".$formatTime."</td>";
            echo "<td>".($dead["kill_count"])."</td>";
            echo "<td>".$points."</td>";
            echo "</tr>";
        }
      }
    ?>
  </tbody>
  <thead>
    <tr class='table-show-mobile add-line'>
      <th>
        <div class="mobile-table-line-1" onclick="sortTable('deceased-table-mobile', 'username', 15)">Username</div>
        <div class="mobile-table-line-2" onclick="sortTable('deceased-table-mobile', 'kills', 15)" style='float: right'>Kills</div>
        <div>
          <div class="mobile-table-line-2" onclick="sortTable('deceased-table-mobile', 'starve', 15)">Starve Timer</div>
          <div class="mobile-table-line-2" onclick="sortTable('deceased-table-mobile', 'points', 15)" style='float: right'>Points</div>
        </div>
      </th>
      </tr>
  </thead>
  <tbody id="deceased-table-mobile" class="show-mobile">
    <?php
      $data=$weeklong->get_deceased_from($name);
      if($displayStats && $data!=null){
        foreach($data as $dead){
            $starve_date = new DateTime(date($dead["starve_date"]));
            $formatTime = $starve_date->format('H:i m-d-Y');
            $points = $dead["points"];
            if($points == null){
              $points = 0;
            }
            echo "<tr class='add-line table-show-mobile'><td>";
                echo "<div class='mobile-table-line-1' id='username'>".$dead["username"]."</div>";
                echo "<div class='mobile-table-line-2' id='kills' style='float: right'>".($dead["kill_count"]+0)."</div>";
                echo "<div>";
                  echo "<div class='mobile-table-line-1 red' id='starve'>".$formatTime."</div>";
                  echo "<div class='mobile-table-line-2' id='points' style='float: right'>".$points."</div>";
                echo "</div>";
            echo "</td></tr>";
        }
      }
    ?>
  </tbody>
</table>
<div class="outer-div">
  <div class="inner-div">
    <ul class="pagination pagination-lg pager hide-mobile" id="deceased-table-pager"></ul>
  </div>
</div>
<div class="outer-div">
  <div class="inner-div">
    <ul class="pagination pagination-lg pager show-mobile" id="deceased-table-mobile-pager"></ul>
  </div>
</div>
