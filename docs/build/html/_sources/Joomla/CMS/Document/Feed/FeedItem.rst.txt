-------------------------------------
Joomla\\CMS\\Document\\Feed\\FeedItem
-------------------------------------

.. php:namespace: Joomla\\CMS\\Document\\Feed

.. php:class:: FeedItem

    Data object representing a feed item

    .. php:attr:: title

        :type: string

        Title item element

        required

    .. php:attr:: link

        :type: string

        Link item element

        required

    .. php:attr:: description

        :type: string

        Description item element

        required

    .. php:attr:: author

        :type: string

        Author item element

        optional

    .. php:attr:: authorEmail

        :type: string

        Author email element

        optional

    .. php:attr:: category

        :type: array

        Category element

        optional

    .. php:attr:: comments

        :type: string

        Comments element

        optional

    .. php:attr:: enclosure

        :type: FeedEnclosure

        Enclosure element

    .. php:attr:: guid

        :type: string

        Guid element

        optional

    .. php:attr:: date

        :type: string

        Published date

        optional

        May be in one of the following formats:

        RFC 822:
        "Mon, 20 Jan 03 18:05:41 +0400"
        "20 Jan 03 18:05:41 +0000"

        ISO 8601:
        "2003-01-20T18:05:41+04:00"

        Unix:
        1043082341

    .. php:attr:: source

        :type: string

        Source element

        optional

    .. php:method:: setEnclosure(FeedEnclosure $enclosure)

        Set the FeedEnclosure for this item

        :type $enclosure: FeedEnclosure
        :param $enclosure:
        :returns: FeedItem instance of $this to allow chaining
