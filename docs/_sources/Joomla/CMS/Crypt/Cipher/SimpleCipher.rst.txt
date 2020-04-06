----------------------------------------
Joomla\\CMS\\Crypt\\Cipher\\SimpleCipher
----------------------------------------

.. php:namespace: Joomla\\CMS\\Crypt\\Cipher

.. php:class:: SimpleCipher

    Crypt cipher for Simple encryption, decryption and key generation.

    .. php:method:: decrypt($data, Key $key)

        Method to decrypt a data string.

        :param $data:
        :type $key: Key
        :param $key:
        :returns: string The decrypted data string.

    .. php:method:: encrypt($data, Key $key)

        Method to encrypt a data string.

        :param $data:
        :type $key: Key
        :param $key:
        :returns: string The encrypted data string.

    .. php:method:: generateKey($options = array())

        Method to generate a new encryption key[/pair] object.

        :param $options:
        :returns: Key

    .. php:method:: _hexToInt($s, $i)

        Convert hex to an integer

        :param $s:
        :param $i:
        :returns: integer

    .. php:method:: _hexToIntArray($hex)

        Convert hex to an array of integers

        :param $hex:
        :returns: array An array of integers.

    .. php:method:: _intToHex($i)

        Convert an integer to a hexadecimal string.

        :param $i:
        :returns: string
