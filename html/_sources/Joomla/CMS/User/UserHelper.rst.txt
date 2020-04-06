-----------------------------
Joomla\\CMS\\User\\UserHelper
-----------------------------

.. php:namespace: Joomla\\CMS\\User

.. php:class:: UserHelper

    Authorisation helper class, provides static methods to perform various tasks relevant
    to the Joomla user and authorisation classes

    This class has influences and some method logic from the Horde Auth package

    .. php:method:: addUserToGroup($userId, $groupId)

        Method to add a user to a group.

        :param $userId:
        :param $groupId:
        :returns: boolean True on success

    .. php:method:: getUserGroups($userId)

        Method to get a list of groups a user is in.

        :param $userId:
        :returns: array List of groups

    .. php:method:: removeUserFromGroup($userId, $groupId)

        Method to remove a user from a group.

        :param $userId:
        :param $groupId:
        :returns: boolean True on success

    .. php:method:: setUserGroups($userId, $groups)

        Method to set the groups for a user.

        :param $userId:
        :param $groups:
        :returns: boolean True on success

    .. php:method:: getProfile($userId = 0)

        Gets the user profile information

        :param $userId:
        :returns: object

    .. php:method:: activateUser($activation)

        Method to activate a user

        :param $activation:
        :returns: boolean True on success

    .. php:method:: getUserId($username)

        Returns userid if a user exists

        :param $username:
        :returns: integer The user id or 0 if not found.

    .. php:method:: hashPassword($password, $algorithm = PASSWORD_BCRYPT, $options = array())

        Hashes a password using the current encryption.

        :param $password:
        :param $algorithm:
        :param $options:
        :returns: string The encrypted password.

    .. php:method:: verifyPassword($password, $hash, $user_id = 0)

        Formats a password using the current encryption. If the user ID is given
        and the hash does not fit the current hashing algorithm, it automatically
        updates the hash.

        :param $password:
        :param $hash:
        :param $user_id:
        :returns: boolean True if the password and hash match, false otherwise

    .. php:method:: getCryptedPassword($plaintext, $salt = '', $encryption = 'md5-hex', $show_encrypt = false)

        Formats a password using the old encryption methods.

        :param $plaintext:
        :param $salt:
        :param $encryption:
        :param $show_encrypt:
        :returns: string The encrypted password.

    .. php:method:: getSalt($encryption = 'md5-hex', $seed = '', $plaintext = '')

        Returns a salt for the appropriate kind of password encryption using the
        old encryption methods.
        Optionally takes a seed and a plaintext password, to extract the seed
        of an existing password, or for encryption types that use the plaintext
        in the generation of the salt.

        :param $encryption:
        :param $seed:
        :param $plaintext:
        :returns: string The generated or extracted salt.

    .. php:method:: genRandomPassword($length = 8)

        Generate a random password

        :param $length:
        :returns: string Random Password

    .. php:method:: _toAPRMD5($value, $count)

        Converts to allowed 64 characters for APRMD5 passwords.

        :param $value:
        :param $count:
        :returns: string $value converted to the 64 MD5 characters.

    .. php:method:: _bin($hex)

        Converts hexadecimal string to binary data.

        :param $hex:
        :returns: string Binary data.

    .. php:method:: invalidateCookie($userId, $cookieName)

        Method to remove a cookie record from the database and the browser

        :param $userId:
        :param $cookieName:
        :returns: boolean True on success

    .. php:method:: clearExpiredTokens()

        Clear all expired tokens for all users.

        :returns: mixed Database query result

    .. php:method:: getRememberCookieData()

        Method to get the remember me cookie data

        :returns: mixed An array of information from an authentication cookie or false if there is no cookie

    .. php:method:: getShortHashedUserAgent()

        Method to get a hashed user agent string that does not include browser
        version.
        Used when frequent version changes cause problems.

        :returns: string A hashed user agent string with version replaced by 'abcd'

    .. php:method:: checkSuperUserInUsers($userIds)

        Check if there is a super user in the user ids.

        :param $userIds:
        :returns: boolean True on success, false on failure
