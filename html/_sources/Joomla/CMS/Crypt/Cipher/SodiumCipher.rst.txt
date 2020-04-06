----------------------------------------
Joomla\\CMS\\Crypt\\Cipher\\SodiumCipher
----------------------------------------

.. php:namespace: Joomla\\CMS\\Crypt\\Cipher

.. php:class:: SodiumCipher

    JCrypt cipher for sodium algorithm encryption, decryption and key generation.

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

    .. php:method:: setNonce($nonce)

        Set the nonce to use for encrypting/decrypting messages

        :param $nonce:
        :returns: void
