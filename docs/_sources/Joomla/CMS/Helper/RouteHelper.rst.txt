--------------------------------
Joomla\\CMS\\Helper\\RouteHelper
--------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: RouteHelper

    Route Helper

    A class providing basic routing for urls that are for content types found in the #__content_types table and rows found in the #__ucm_content table.

    .. php:attr:: lookup

        :type: array

        :scope: protected

    .. php:attr:: extension

        :type: string

        :scope: protected

    .. php:attr:: id

        :type: string

        :scope: protected

    .. php:attr:: view

        :type: string

        :scope: protected

    .. php:method:: getRoute($id, $typealias, $link = '', $language = null, $catid = null)

        A method to get the route for a specific item

        :param $id:
        :param $typealias:
        :param $link:
        :param $language:
        :param $catid:
        :returns: string The route of the item

    .. php:method:: findItem($needles = array())

        Method to find the item in the menu structure

        :param $needles:
        :returns: mixed

    .. php:method:: getCategoryRoute($catid, $language = 0, $extension = '')

        Fetches the category route

        :param $catid:
        :param $language:
        :param $extension:
        :returns: string

    .. php:method:: lookupItem($needles = array())

        Static alias to findItem() used to find the item in the menu structure

        :param $needles:
        :returns: mixed
