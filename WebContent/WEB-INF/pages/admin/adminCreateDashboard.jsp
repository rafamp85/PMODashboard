<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

	<form name='createDashboardByProject' action="<c:url value='createDashboardByProject'/>" method='GET'>
		<table class="deleteProject">
			<tr>
				<th colspan="4">CREATE DASHBOARD</th>
			</tr>
			
			<tr>
				<td>
				<p class="project">
        			<select id="idAuth" name="idAuth" onchange='submit()'>
        				<option selected="selected"> ---- Select ---- </option>
        				<c:forEach var="listValue" items="${listProjects}">
        				<option value='${listValue.idAuth}'>${listValue.projectName}</option>
        				</c:forEach>
        			</select>
    			</p>
				</td>
			</tr>
		</table>
	</form>	

	
	 <c:if test="${dashboardSelectedForCreate}">
	<form name='createDashboard' action="<c:url value='createDashboard'/>" method='GET'>
		<table class="createProject">
		
			<tr><td><input type="hidden" id="idAuth" name="idAuth" value='${idAuth}' /></td></tr>
			
    		<tr>
    			<td>ID Priority:</td>
    			<td>
    			<p class="idPriority">
        			<input type="text" name="idPriority" id="idPriority" />
    			</p>
   				</td>
   				
   				<td>SubProject:</td>
    			<td>
    			<p class="subProject">
        			<input type="text" name="subProject" id="subProject" />
    			</p>
   				</td>
    		</tr>

			<tr>
    			<td>Item:</td>
    			<td>
    			<p class="item">
        			<input type="text" name="item" id="item" />
    			</p>
   				</td>
   				
   				<td>Qty Target:</td>
    			<td>
    			<p class="qtyTarget">
        			<input type="text" name="qtyTarget" id="qtyTarget" />
    			</p>
   				</td>
    		</tr>
    		
    		<tr>
    			<td>Qty AoT:</td>
    			<td>
    			<p class="qtyAoT">
        			<input type="text" name="qtyAoT" id="qtyAoT" />
    			</p>
   				</td>
   				
    			<td>Advance:</td>
    			<td>
    			<p class="advance">
        			<input type="text" name="advance" id="advance" />
    			</p>
   				</td>
    		</tr>
    		
    		<tr>   				
   				<td>Status:</td>
    			<td>
    			<p class="status">
        			<select id="status" name="status">
        				<option>On Risk</option>
        				<option>On Going</option>
        				<option>Finished</option>
        				<option>On Hold</option>
        			</select>
    			</p>
   				</td>
   				
   				
    			<td>Remarks:</td>
    			<td>
    			<p class="remarks">
        			<input type="text" name="remarks" id="remarks" />
    			</p>
   				</td>
    		</tr>
    		
    		<tr>   				
    			<td>Historic:</td>
    			<td>
    			<p class="historic">
        			<input type="text" name="historic" id="historic" />
    			</p>
   				</td>
    		</tr>
   			
   			<tr><td><br><br></td></tr>
			
			<tr>	
   				<td colspan="4">
    			<p class="submit">
        			<input type="button" value="Create" onClick="validateCreateDashboard();" />
    			</p>
    			</td>
   			</tr>	 
   		</table>
    </form>  
    </c:if>