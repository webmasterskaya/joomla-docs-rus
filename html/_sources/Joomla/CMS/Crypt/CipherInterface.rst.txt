-----------------------------------
Joomla\\CMS\\Crypt\\CipherInterface
-----------------------------------

.. php:namespace: Joomla\\CMS\\Crypt

.. php:interface:: CipherInterface

    Crypt cipher interface.

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
