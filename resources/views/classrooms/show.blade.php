<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/style.css">
    <title>Class : {{ $classroom->name }}</title>
</head>
<body>
    <h1>{{ $classroom->name }}</h1>
    @if($classroom->students->isEmpty())
        <h2>Erorr 69 : No datas have been finded im de batadase</h2>
    @else
        <table>
            <tr>
                <th>N°</th>
                <th>First Name</th>
                <th>Last Name</th>
            </tr>
            @foreach($classroom->students as $student)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $student->first_name }}</td>
                <td>{{ $student->last_name }}</td>
            </tr>
            @endforeach
        </table>
    @endif
</body>
</html>