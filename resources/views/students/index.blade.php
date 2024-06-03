<!--INDEX VIEW FOR STUDENTS-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/style.css">
    <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
    <title>Students : All</title>
</head>
<body>
    <a href="/" class="nav-button left">Home</a>
    <a href="/students/create"  class="nav-button right">Create</a>
    <h1>this is the student index !</h1>
    <table>
        <tr>
            <th>N°</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Class</th>
            <th>Age</th>
        </tr>
        @foreach($students as $student)
            <tr>
                <td>{{ $student->id }}</td>
                <td>{{ $student->first_name }}</td>
                <td>{{ $student->last_name }}</td>
                <td>{{ $student->class->name }}</td>
                <td>{{ $student->studentAge }}<br>({{ $student->birthdate }})</td>
            </tr>
        @endforeach
    </table>
</body>
</html>
