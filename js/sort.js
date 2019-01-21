
function sortTable(id, sortColumn, perPage) {
  var table, rows, sorting, i, x, y, shouldSwap, dir, sortColumnIndex, switchcount = 0;
  table = document.getElementById(id);
  sorting = true;
  dir = table.value;
  // Set the sorting direction to ascending:
  if(table.value == null) {
    dir = "asc";
    sortAscending = true;
  } else {
    sortAscending = table.value == "asc";
  }
  // Counter in case infinite loop is encountered
  rows = table.getElementsByTagName("tr");
  rows = sortList(rows, sortColumn, sortAscending, (element) => {
    return element.querySelector("#"+sortColumn).outerText.toLowerCase();
  });
  resetPaginator(id, rows, perPage);
  if(counter == 10000)
    console.log("counter limit reached")
  if(dir == "asc")
    table.value = "desc";
  else if(dir == "desc")
    table.value = "asc";
}
function resetPaginator(id, rows, perPage){
  // Display correct amount of items per page
  var index = 0, displayCount = 0;
  while(index < rows.length && displayCount < perPage){
    if(rows[index].className != "hide"){
      rows[index].style.display = '';
      displayCount++;
    }
    index++;
  }
  paginator = document.getElementById(id+"-pager");
  links = paginator.getElementsByTagName("li");
  var pager = $('.pager');
  pager.data("curr",0);
  pager.find('.prev_link').hide();
  pager.find('.next_link').show();
  for(i=1;i<links.length-1;i++){
    links[i].firstChild.className = "page_link page-link";
  }
  paginator.getElementsByTagName("li")[1].firstChild.className = "page_link page-link active";
}
function sortList(rows, sortType, sortAscending, elementFunction) {
  var sorting, x, y, shouldSwap, switchcount = 0;
  sorting = true;
  // Counter in case infinite loop is encountered
  counter = 0;
  counterMax = rows.length * 1000;
  while (sorting && counter < 10000) {
    counter++;
    sorting = false;
    for(var i = 0; i < (rows.length - 1); i++) {
      // start by saying there should be no switching:
      shouldSwap = false;
      // Get the text from the two elements you want to compare, one from current row and one from the next
      x = elementFunction(rows[i]);
      y = elementFunction(rows[i+1]);
      rows[i].style.display = 'none';
      if(sortType == "points"){
        x = parseInt(x, 10);
        y = parseInt(y, 10);
      }else if(sortType == "starve"){
        var tempArray = x.split(':');
        x = tempArray[0]*60 + tempArray[1];
        var tempArray = y.split(':');
        y = tempArray[0]*60 + tempArray[1];
      }
      if(sortAscending) {
        if (x > y) {
          shouldSwap= true;
          break;
        }
      } else if(!sortAscending && x < y){
        shouldSwap= true;
        break;
      }
    }
    // make the swap
    if (shouldSwap) {
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      sorting = true;
      switchcount ++;
    }
  }
  return rows;
}

// function sortTable(id, n) {
//   var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
//   table = document.getElementById(id);
//   switching = true;
//   //Set the sorting direction to ascending:
//   dir = "asc";
//   /*Make a loop that will continue until
//   no switching has been done:*/
//   while (switching) {
//     //start by saying: no switching is done:
//     switching = false;
//     rows = table.getElementsByTagName("TR");
//     /*Loop through all table rows (except the
//     first, which contains table headers):*/
//     for (i = 1; i < (rows.length - 1); i++) {
//       //start by saying there should be no switching:
//       shouldSwitch = false;
//       /*Get the two elements you want to compare,
//       one from current row and one from the next:*/
//       x = rows[i].getElementsByTagName("TD")[n];
//       y = rows[i + 1].getElementsByTagName("TD")[n];
//       /*check if the two rows should switch place,
//       based on the direction, asc or desc:*/
//       if (dir == "asc") {
//         if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
//           //if so, mark as a switch and break the loop:
//           shouldSwitch= true;
//           break;
//         }
//       } else if (dir == "desc") {
//         if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
//           //if so, mark as a switch and break the loop:
//           shouldSwitch= true;
//           break;
//         }
//       }
//     }
//     if (shouldSwitch) {
//       /*If a switch has been marked, make the switch
//       and mark that a switch has been done:*/
//       rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
//       switching = true;
//       //Each time a switch is done, increase this count by 1:
//       switchcount ++;
//     } else {
//       /*If no switching has been done AND the direction is "asc",
//       set the direction to "desc" and run the while loop again.*/
//       if (switchcount == 0 && dir == "asc") {
//         dir = "desc";
//         switching = true;
//       }
//     }
//   }
// }
