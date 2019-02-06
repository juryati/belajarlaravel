@if(session('success'))
  <div class="alert alret-success fade in">
    <button type="button" class="close pull-right" data-dismiss="alert" aria-label="close">
      <span aria-hidden-"true">&times;</span>
    </button>
      {!! session('succes')!!}
  </div>
@endif

@if(seddion('error'))
  <div class="alert alert-danger fade in">
    <button type="button" class="close pull-right" data-dismiss="alert" aria-label="close">
      <span aria-hidden-"true">&times;</span>
    </button>
    {!! session('error')!!}
  </div>
  @endif

  @if(count($errors)>0)
    <div class="alert alert-danger fade in">
      <button type="button" lass="close pull-right" data-dismiss="alert" aria-label="close">
        <span aria-hidden-"true">&times;</span>
      </button>
      <p>Perhatikan</p>
      <ul>
        @foreach ($errors->all () as $error)
        <li>{{$error}}</li>
        @endforceach
      </ul>
    </div>
@endif