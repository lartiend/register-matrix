<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Lester Jan Kim Artienda">

    <title>{{ config('app.name', 'Matrix Registration') }}</title>
    @include('partials.styles')
</head>
<body class="container pt-2">

<div id="content" class="mx-auto">
	@yield('content')
</div>
    @include('partials.scripts')

</body>
</html>