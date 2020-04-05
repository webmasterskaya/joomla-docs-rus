---------------------------
Joomla\\CMS\\Feed\\FeedLink
---------------------------

.. php:namespace: Joomla\\CMS\\Feed

.. php:class:: FeedLink

    Feed Link class.

    .. php:attr:: uri

        :type: string

        The URI to the linked resource.

    .. php:attr:: relation

        :type: string

        The relationship between the feed and the linked resource.

    .. php:attr:: type

        :type: string

        The resource type.

    .. php:attr:: language

        :type: string

        The language of the resource found at the given URI.

    .. php:attr:: title

        :type: string

        The title of the resource.

    .. php:attr:: length

        :type: integer

        The length of the resource in bytes.

    .. php:method:: __construct($uri = null, $relation = null, $type = null, $language = null, $title = null, $length = null)

        Constructor.

        :param $uri:
        :param $relation:
        :param $type:
        :param $language:
        :param $title:
        :param $length:
