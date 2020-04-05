---------------------------------
Joomla\\CMS\\Pathway\\SitePathway
---------------------------------

.. php:namespace: Joomla\\CMS\\Pathway

.. php:class:: SitePathway

    Class to manage the site application pathway.

    .. php:attr:: _pathway

        :type: array

        :scope: protected

    .. php:attr:: _count

        :type: integer

        :scope: protected

    .. php:attr:: instances

        :type: Pathway[]

        :scope: protected

        JPathway instances container.

    .. php:method:: __construct($options = array())

        Class constructor.

        :param $options:

    .. php:method:: getInstance($client, $options = array())

        Returns a Pathway object

        :param $client:
        :param $options:
        :returns: Pathway A Pathway object.

    .. php:method:: getPathway()

        Return the Pathway items array

        :returns: array Array of pathway items

    .. php:method:: setPathway($pathway)

        Set the Pathway items array.

        :param $pathway:
        :returns: array The previous pathway data.

    .. php:method:: getPathwayNames()

        Create and return an array of the pathway names.

        :returns: array Array of names of pathway items

    .. php:method:: addItem($name, $link = '')

        Create and add an item to the pathway.

        :param $name:
        :param $link:
        :returns: boolean True on success

    .. php:method:: setItemName($id, $name)

        Set item name.

        :param $id:
        :param $name:
        :returns: boolean True on success

    .. php:method:: _makeItem($name, $link)

        Create and return a new pathway object.

        :param $name:
        :param $link:
        :returns: Pathway Pathway item object

    .. php:method:: makeItem($name, $link)

        Create and return a new pathway object.

        :param $name:
        :param $link:
        :returns: Pathway Pathway item object
