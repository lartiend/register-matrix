@extends('template')

@section('content')

<form>
	<div class="form-group">
    <h5><label for="child"><u>Input</u></label></h5>
		<input type="text" class="form-control" id="child" name='child' placeholder="Enter integer from 1-15" required="" autocomplete="off">
	</div>
	<button type="submit" id="submit" class="btn btn-outline-primary">
  Register
  </button>
</form>

@endsection

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>Output</u></h5>
      </div>
      <div class="modal-body">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-9">
              <span id="details"></span>
            </div>
            <div class="col-md-3 align-self-center">
      <button type="button" class="btn btn-secondary" data-dismiss="modal" id="back">Back</button></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
