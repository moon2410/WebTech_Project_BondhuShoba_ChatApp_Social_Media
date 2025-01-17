<?php
$name = htmlspecialchars($_POST['name']);
$email = htmlspecialchars($_POST['email']);
$phone = htmlspecialchars($_POST['phone']);
$website = htmlspecialchars($_POST['website']);
$message = htmlspecialchars($_POST['message']);


if (!empty($email) && !empty($message)) {

    $email_parts = explode('@', $email);
    if (count($email_parts) != 2 || empty($email_parts[0]) || empty($email_parts[1])) {
        echo "Enter a valid email address!";
    } 
    else {
        if (!empty($phone) && !ctype_digit($phone)) {
            echo "Phone number should contain only numbers!";
        } 

        elseif (!empty($website) && (strpos($website, "http://") === false && strpos($website, "https://") === false)) {
            echo "Enter a valid website URL!";
        } 
        else {
            $email_sanitized = str_replace(['@', '.', ','], '_', $email); 
            $unique_number = rand(100, 999999); 
            $filename = '../contact_us/' . $email_sanitized . '_' . $unique_number . '.txt'; 

            $file_content = "Name: $name\nEmail: $email\nPhone: $phone\nWebsite: $website\n\nMessage:\n$message\n\nRegards,\n$name";

            if (file_put_contents($filename, $file_content)) {
                echo "Your message has been saved in a text file.";
            } else {
                echo "Failed to save the message.";
            }
        }
    }
} else {
    echo "Email and message fields are required!";
}
?>
