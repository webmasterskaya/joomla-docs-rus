---------------------------------
Joomla\\CMS\\Crypt\\CryptPassword
---------------------------------

.. php:namespace: Joomla\\CMS\\Crypt

.. php:interface:: CryptPassword

    Joomla Platform Password Hashing Interface

    .. php:method:: create($password, $type = null)

        Creates a password hash

        :param $password:
        :param $type:
        :returns: string The hashed password.

    .. php:method:: verify($password, $hash)

        Verifies a password hash

        :param $password:
        :param $hash:
        :returns: boolean True if the password is valid, false otherwise.

    .. php:method:: setDefaultType($type)

        Sets a default prefix

        :param $type:
        :returns: void

    .. php:method:: getDefaultType()

        Gets the default type

        :returns: void
