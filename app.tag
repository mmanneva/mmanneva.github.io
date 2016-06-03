<app>
	<div class="container">
		<ul class="list-inline tabs">
			<li each={t in tabs} onclick={open_tab} class="btn btn-default {active : t.id == selected_tab}">{t.title}</li>
		</ul>

		<form>
			<fieldset-basics></fieldset-basics>
			<fieldset-specification></fieldset-specification>
			<fieldset-look></fieldset-look>			
			<fieldset-attachments></fieldset-attachments>
			<fieldset-signoff></fieldset-signoff>

		</form>
	</div>
	<div class="fixed-overlay">
		<div class="container">
			<button class="btn btn-primary">Save</button>
		</div>
	</div>

	<style scoped>

		ul {
			margin: 20px auto;
			display: flex;
			align-items: center;
			justify-content: space-around;
		}
		li.selected {
			background-color: black;
			color: white;
		}

		ul li {
			width: 10em;
		}

		.fixed-overlay {
			position: fixed;
			bottom: 0; left: 0; right: 0;
			height: 3.5em;
			border-top: solid 1px #eee;
		}
		.fixed-overlay button { 
			float: right;
			margin-top: 0.5em;
		}
	</style>

	<script>
		var tag = this;

		tag.tabs = [
			{ title: 'Basics', id: 'basics' },
			{ title: 'Specifications', id: 'specification' },
			{ title: 'Look & Feel', id: 'look' },
			{ title: 'Attachments', id: 'attachments' },
			{ title: 'Signoff', id: 'signoff' }];
		tag.selected_tab = 'basics';

		open_tab = function(e) {
			console.log(e.item);
			tag.selected_tab = e.item.t.id;
		}

	</script>
</app>

<fieldset-specification>
	<fieldset class="row" if={parent.selected_tab == 'specification'}>
		<div class="form-horizontal">
			<h1 class="col-xs-12">Specifications</h1>
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">Dimensions</label>
				<div class="col-sm-10">
					<input type="text" class="form-control dimensions"> x <input type="text" class="form-control dimensions">
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">Capacity</label>
				<div class="col-sm-10"><input type="number" class="form-control dimensions"> persons</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">Number of Stops</label>
				<div class="col-sm-10"><input type="number" class="form-control dimensions"></div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">Openings</label>
				<div class="col-sm-10"><input type="number" class="form-control dimensions"></div>
			</div>
		</div>
		<div class="form-horizontal">
			<div class="form-group">
				<b>Additional options</b>
			</div>
			<div class="form-group">
				<b class="control-label col-sm-2">Pit?</b> 
				<div class="col-sm-10">
					<label><input type="radio"> Yes</label> <label><input type="radio"> No</label>
				</div>
			</div>
			<div class="form-group">
				<b class="control-label col-sm-2">Telephone?</b> 
				<div class="col-sm-10">
					<label><input type="radio"> Yes</label> <label><input type="radio"> No</label>
				</div>
			</div>
			<div class="form-group">
				<b class="control-label col-sm-2">Shaft?</b> 
				<div class="col-sm-10">
					<label><input type="radio"> Yes</label> <label><input type="radio"> No</label>
				</div>
			</div>
		</div>
	</fieldset>
	
	<script>
		var tag = this
		console.log(parent.selected_tab)
	</script>

</fieldset-specification>

<fieldset-basics>
	<fieldset class="row form-group" if={parent.selected_tab == 'basics'}>
		<h1 class="col-xs-12">Basics</h1>
		<div class="col-xs-12">
			<label for="project_address">Project address</label>
			<textarea name="project_address" id="project_address" cols="30" rows="5" class="form-control"></textarea>
		</div>
		<div class="col-xs-12">
			<div class="row">
				<label class="col-sm-3 col-lg-2">
					<input type="radio" name="rc_switch" id="rc_switch_0" value="residential">
					Residential
				</label>
				<label class="col-sm-3 col-lg-2">
					<input type="radio" name="rc_switch" id="rc_switch_1" value="commercial"> 
					Commercial
				</label>
			</div>
		</div>
		<div class="col-xs-12">
			<div class="row">
				<label class="col-sm-3 col-lg-2">
					<input type="radio" name="rc_switch" id="rc_switch_0" value="residential">
					New
				</label>
				<label class="col-sm-3 col-lg-2">
					<input type="radio" name="rc_switch" id="rc_switch_1" value="commercial"> 
					Retrofit
				</label>
			</div>
		</div>
		<div class="col-xs-12">
			<label for="contact_details">Contact details</label>
			<textarea name="contact_details" id="contact_details" cols="30" rows="5" class="form-control"></textarea>
		</div>
	</fieldset>
</fieldset-basics>

<fieldset-look>
	<fieldset class="row" if={parent.selected_tab == 'look'}>
		<h1 class="col-xs-12">Look & feel options</h1>
		<div>
			<label for="">Doors</label>
			<b>[some selector here]</b>
		</div>
		<div>
			<label for="">Floor</label>
			<b>[some selector here]</b>
		</div>
		<div>
			<label for="">Panels</label>
			<b>[some selector here]</b>
		</div>
	</fieldset>
</fieldset-look>

<fieldset-attachments>
	<fieldset class="row" if={parent.selected_tab == 'attachments'}>
		<h1 class="col-xs-12">Attachments</h1>
		<div>Documents</div>
		<ul>
			<li>List</li>
			<li>of</li>
			<li>Documents</li>
			<li><a href="#">Add new...</a></li>
		</ul>
		<div>Lift models</div>
		<ul>
			<li>Why</li>
			<li>is</li>
			<li>this</li>
			<li>plural?</li>
			<li><a href="#">Add new...</a></li>
		</ul>
		<div>Reference projects</div>
		<ul>
			<li>What</li>
			<li>data</li>
			<li>behind</li>
			<li>this?</li>
			<li><a href="#">Add new...</a></li>
		</ul>
	</fieldset>
</fieldset-attachments>

<fieldset-signoff>
	<fieldset class="row" if={parent.selected_tab == 'signoff'}>
		<h1 class="col-xs-12">Signoff</h1>
		<h2>Dates</h2>
		<div class="form-horizontal">
			<div class="form-group">
				<label for="" class="col-sm-2">TOP</label>
				<div class="col-sm-10">
					<input type="text">
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2">Delivery</label>
				<div class="col-sm-10">
					<input type="text">
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2">Order</label>
				<div class="col-sm-10">
					<input type="text">
				</div>
			</div>
		</div>
	</fieldset>
</fieldset-signoff>

