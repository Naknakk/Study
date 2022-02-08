/*:
## Advanced Rules
 You could also verify that a password contains at least one uppercase letter and one lowercase letter. That way an attacker can't limit their algorithm to lowercase letters, hoping a user was too lazy to use the shift key when typing their password.
 
 Another useful check is making sure that the password doesn't contain the username, so that the user can't choose "user01" and "user01password!".
 */
import Foundation
let tenCommonPasswords = [
    "123456",
    "123456789",
    "qwerty",
    "password",
    "12345678",
    "111111",
    "iloveyou",
    "1q2w3e",
    "123123",
    "password1"
]
let digits = "0123456789"
let punctuation = "!@#$%^&*(),.<>;'`~[]{}\\|/?_-+= "
/*:
### Implement your algorithm below with the additional new rules:

- Contains at least one uppercase letter and one lowercase letter
- Doesn't contain the username
 
 - Note: To detect whether a character is uppercase, use the `isUppercase` property.
 */

/*:
[Previous](@previous)  |  page 3 of 5  |  [Next: Custom Algorithm](@next)
 */