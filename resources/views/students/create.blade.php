<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/style.css">
    <title>New Student</title>
</head>
<body>
    <h1>this is the create students page</h1>
    <form action="{{ route('students.store') }}" method="POST">
        @csrf
        <input type="text" placeholder="First Name" name="first_name">
        <input type="text" placeholder="Last Name" name="last_name">
        <input type="date" name="birthdate">
        <input type="text" placeholder="Address" name="address">
        <select name="class_id">
            @foreach ($classes as $class)
                <option value="{{ $class->id }}">{{ $class->name }}</option>
            @endforeach
        </select>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
