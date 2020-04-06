-------------------------------------------------
Joomla\\CMS\\Crypt\\Password\\SimpleCryptPassword
-------------------------------------------------

.. php:namespace: Joomla\\CMS\\Crypt\\Password

.. php:class:: SimpleCryptPassword

    Joomla Platform Password Crypter

    .. php:attr:: cost

        :type: integer

        :scope: protected

    .. php:attr:: defaultType

        :type: string

        :scope: protected

    .. php:method:: create($password, $type = null)

        Creates a password hash

        :param $password:
        :param $type:
        :returns: mixed The hashed password or false if the password is too long.

    .. php:method:: setCost($cost)

        Sets the cost parameter for the generated hash for algorithms that use a
        cost factor.

        :param $cost:
        :returns: void

    .. php:method:: getSalt($length)

        Generates a salt of specified length. The salt consists of characters in
        the set [./0-9A-Za-z].

        :param $length:
        :returns: string The string of random characters.

    .. php:method:: verify($password, $hash)

        Verifies a password hash

        :param $password:
        :param $hash:
        :returns: boolean True if the password is valid, false otherwise.

    .. php:method:: setDefaultType($type)

        Sets a default type

        :param $type:
        :returns: void

    .. php:method:: getDefaultType()

        Gets the default type

        :returns: string $type The default type
