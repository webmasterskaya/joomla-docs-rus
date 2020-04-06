-------------------------
Joomla\\CMS\\Crypt\\Crypt
-------------------------

.. php:namespace: Joomla\\CMS\\Crypt

.. php:class:: Crypt

    Crypt is a Joomla Platform class for handling basic encryption/decryption of data.

    .. php:method:: __construct(CipherInterface $cipher = null, Key $key = null)

        Object Constructor takes an optional key to be used for
        encryption/decryption. If no key is given then the
        secret word from the configuration object is used.

        :type $cipher: CipherInterface
        :param $cipher:
        :type $key: Key
        :param $key:

    .. php:method:: decrypt($data)

        Method to decrypt a data string.

        :param $data:
        :returns: string The decrypted data string.

    .. php:method:: encrypt($data)

        Method to encrypt a data string.

        :param $data:
        :returns: string The encrypted data string.

    .. php:method:: generateKey($options = array())

        Method to generate a new encryption key[/pair] object.

        :param $options:
        :returns: Key

    .. php:method:: setKey(Key $key)

        Method to set the encryption key[/pair] object.

        :type $key: Key
        :param $key:
        :returns: Crypt

    .. php:method:: genRandomBytes($length = 16)

        Generate random bytes.

        :param $length:
        :returns: string Random binary data

    .. php:method:: timingSafeCompare($known, $unknown)

        A timing safe comparison method.

        This defeats hacking attempts that use timing based attack vectors.

        NOTE: Length will leak.

        :param $known:
        :param $unknown:
        :returns: boolean True if the two strings are exactly the same.

    .. php:method:: hasStrongPasswordSupport()

        Tests for the availability of updated crypt().
        Based on a method by Anthony Ferrera

        :returns: boolean Always returns true since 3.3

    .. php:method:: safeStrlen($str)

        Safely detect a string's length

        This method is derived from \ParagonIE\Halite\Util::safeStrlen()

        :param $str:
        :returns: integer

    .. php:method:: safeSubstr($str, $start, $length = null)

        Safely extract a substring

        This method is derived from \ParagonIE\Halite\Util::safeSubstr()

        :param $str:
        :param $start:
        :param $length:
        :returns: string
