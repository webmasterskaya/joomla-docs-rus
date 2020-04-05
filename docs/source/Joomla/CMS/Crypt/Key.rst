-----------------------
Joomla\\CMS\\Crypt\\Key
-----------------------

.. php:namespace: Joomla\\CMS\\Crypt

.. php:class:: Key

    Encryption key object for the Joomla Platform.

    .. php:attr:: private

        :type: string

    .. php:attr:: public

        :type: string

    .. php:attr:: type

        :type: string

        :scope: protected

    .. php:method:: __construct($type, $private = null, $public = null)

        Constructor.

        :param $type:
        :param $private:
        :param $public:

    .. php:method:: __get($name)

        Magic method to return some protected property values.

        :param $name:
        :returns: mixed
