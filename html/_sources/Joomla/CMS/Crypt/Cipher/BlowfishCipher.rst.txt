------------------------------------------
Joomla\\CMS\\Crypt\\Cipher\\BlowfishCipher
------------------------------------------

.. php:namespace: Joomla\\CMS\\Crypt\\Cipher

.. php:class:: BlowfishCipher

    Crypt cipher for Blowfish encryption, decryption and key generation.

    .. php:attr:: type

        :type: integer

        :scope: protected

    .. php:attr:: mode

        :type: integer

        :scope: protected

    .. php:attr:: keyType

        :type: string

        :scope: protected

    .. php:method:: __construct()

        Constructor.

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

    .. php:method:: pbkdf2($p, $s, $kl, $c = 10000, $a = 'sha256')

        PBKDF2 Implementation for deriving keys.

        :param $p:
        :param $s:
        :param $kl:
        :param $c:
        :param $a:
        :returns: string The derived key.
