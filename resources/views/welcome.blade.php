<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/assets/style.css">
        <title>School Project</title>
    </head>
    <body class="font-sans antialiased dark:bg-black dark:text-white/50">
        <h1>What do you want to do ?</h1>
        <div>
            <div>
                <a href="/students/create">Add a student</a>
            </div>
            <div>
                <a href="/students">Show all students</a>
            </div>
            <div>
                <a href="/classes">Show students by class</a>
            </div>
        </div>
    </body>
</html>
