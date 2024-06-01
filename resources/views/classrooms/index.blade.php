<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/style.css">
    <title>Class Index</title>
</head>
<body>
    <h1>This has all the classes</h1>
    <table>
        <tr>
            <th>Class</th>
            <th>N° Of Students</th>
            <th>Details</th>
        </tr>
        @foreach($classrooms as $classroom)
            <tr>
                <td>{{ $classroom->name }}</td>
                <td>{{ $classroom->students_count }}</td>
                <td><a href="{{ route('classrooms.show', $classroom->name) }}">View students</a></td>
            </tr>
        @endforeach
    </table>
</body>
</html>