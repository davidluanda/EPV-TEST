<?php
require('php-files/conn.php');
?>
<!doctype html>
 <style>
</style>
</head>
<body>
<center>
<h1>EPVATE - INTERVIEW QUESTION</h1>
<?php
if(isset($_POST['Delete'])){
									$id =$_POST['id'];
	                     $Delete = mysqli_query($conn,"DELETE FROM `task_table` WHERE `id` = '$id'");
				        if($Delete){
			                echo'<p><strong>CONGRATULATION!, TASK DELETED.</strong></p>';
	                      }else{
	                       echo'<p class="text-center text-danger"><strong>SORRY!, REQUEST  FAIL.</strong><br> contact with developer for more clasification </p>';	
	                          }	
							}

?>
									<?php
									$FETCH = mysqli_query($conn,"SELECT * from `task_table`");
									$Sno =1;
									if(mysqli_num_rows($FETCH) > 0){
										?><table border="1px" width="50%" style="text-align:center;">
                                    <thead>
                                        <tr>
                                            <th class="serial">#</th>
                                            <th>Task Date</th>
											<th>Task Name</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
<tbody><?PHP
									while($fetch = mysqli_fetch_array($FETCH)){
								     $task_name = $fetch['task_name'];
									 $task_date = $fetch['task_date'];
									  $id = $fetch['id'];
										?>
										
 <tr>
                                            <td class="serial"><?php echo $Sno++; ?>.</td>
                                            <td> <?php echo $task_date; ?> </td>
											<td> <?php echo $task_name; ?> </td>
											<input type="hidden" name="id" value="<?php echo $id ?>">
											<td>  <button type="submit" name="Update" >Update</button> | <button type="submit" name="Delete" >Delete</button> </td>
												
											 
                                           
                                        </tr>
										
										
										<?PHP
									}
									
									echo'</table>';
									}else{
										echo'<p> CURRENT THERE IS NO ADDED TASK  </P>';
									}
									
									?>
									
          <?php
		 if(isset($_POST['Add_task'])){
			 $date = date('Y-M-D');
			  $task_name =$_POST['task_name'];
			$add_task = mysqli_query($conn,"INSERT INTO `task_table`(`id`, `task_date`, `task_name`) VALUES (Null,'$date','$task_name')");
			  if($add_task){
echo'<p><strong>CONGRATULATION!,  .</strong>TASK ADDED SUCCESFULLY</p>';  
}else{
echo'<p><strong>SORRY!,  FAIL.</strong><br> There is an error while task added , please contact wth developer.</p>'; 
		 }}
  
?>




<form method="post" action="">
                        <div class="form-group">
                            <label>Task Name</label><br>
						<textarea name="task_name" >Enter Task here...</textarea>
                     
                        </div>
                        
                       <br><br>
                            

                        </div>
                        <button type="submit" name="Add_task" >Add Task</button>
                    </form>
					</center>
</body>
</html>