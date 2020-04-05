----------------------------------------
Joomla\\CMS\\Crypt\\Cipher\\CryptoCipher
----------------------------------------

.. php:namespace: Joomla\\CMS\\Crypt\\Cipher

.. php:class:: CryptoCipher

    Crypt cipher for encryption, decryption and key generation via the php-encryption library.

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

        Method to generate a new encryption key object.

        :param $options:
        :returns: Key
