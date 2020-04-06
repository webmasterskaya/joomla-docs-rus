------------------------------
Joomla\\CMS\\User\\UserWrapper
------------------------------

.. php:namespace: Joomla\\CMS\\User

.. php:class:: UserWrapper

    Wrapper class for UserHelper

    .. php:method:: addUserToGroup($userId, $groupId)

        Helper wrapper method for addUserToGroup

        :param $userId:
        :param $groupId:
        :returns: boolean True on success

    .. php:method:: getUserGroups($userId)

        Helper wrapper method for getUserGroups

        :param $userId:
        :returns: array List of groups

    .. php:method:: removeUserFromGroup($userId, $groupId)

        Helper wrapper method for removeUserFromGroup

        :param $userId:
        :param $groupId:
        :returns: boolean True on success

    .. php:method:: setUserGroups($userId, $groups)

        Helper wrapper method for setUserGroups

        :param $userId:
        :param $groups:
        :returns: boolean True on success

    .. php:method:: getProfile($userId = 0)

        Helper wrapper method for getProfile

        :param $userId:
        :returns: object

    .. php:method:: activateUser($activation)

        Helper wrapper method for activateUser

        :param $activation:
        :returns: boolean True on success

    .. php:method:: getUserId($username)

        Helper wrapper method for getUserId

        :param $username:
        :returns: integer The user id or 0 if not found.

    .. php:method:: hashPassword($password, $algorithm = PASSWORD_BCRYPT, $options = array())

        Helper wrapper method for hashPassword

        :param $password:
        :param $algorithm:
        :param $options:
        :returns: string The encrypted password.

    .. php:method:: verifyPassword($password, $hash, $user_id = 0)

        Helper wrapper method for verifyPassword

        :param $password:
        :param $hash:
        :param $user_id:
        :returns: boolean True if the password and hash match, false otherwise

    .. php:method:: getCryptedPassword($plaintext, $salt = '', $encryption = 'md5-hex', $show_encrypt = false)

        Helper wrapper method for getCryptedPassword

        :param $plaintext:
        :param $salt:
        :param $encryption:
        :param $show_encrypt:
        :returns: string The encrypted password.

    .. php:method:: getSalt($encryption = 'md5-hex', $seed = '', $plaintext = '')

        Helper wrapper method for getSalt

        :param $encryption:
        :param $seed:
        :param $plaintext:
        :returns: string The generated or extracted salt.

    .. php:method:: genRandomPassword($length = 8)

        Helper wrapper method for genRandomPassword

        :param $length:
        :returns: string Random Password

    .. php:method:: invalidateCookie($userId, $cookieName)

        Helper wrapper method for invalidateCookie

        :param $userId:
        :param $cookieName:
        :returns: boolean True on success

    .. php:method:: clearExpiredTokens()

        Helper wrapper method for clearExpiredTokens

        :returns: mixed Database query result

    .. php:method:: getRememberCookieData()

        Helper wrapper method for getRememberCookieData

        :returns: mixed An array of information from an authentication cookie or false if there is no cookie

    .. php:method:: getShortHashedUserAgent()

        Helper wrapper method for getShortHashedUserAgent

        :returns: string A hashed user agent string with version replaced by 'abcd'
