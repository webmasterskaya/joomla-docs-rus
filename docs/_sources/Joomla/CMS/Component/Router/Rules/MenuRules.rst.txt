------------------------------------------------
Joomla\\CMS\\Component\\Router\\Rules\\MenuRules
------------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router\\Rules

.. php:class:: MenuRules

    Rule to identify the right Itemid for a view in a component

    .. php:attr:: router

        :type: RouterView

        :scope: protected

        Router this rule belongs to

    .. php:attr:: lookup

        :type: array

        :scope: protected

        Lookup array of the menu items

    .. php:method:: __construct(RouterView $router)

        Class constructor.

        :type $router: RouterView
        :param $router:

    .. php:method:: preprocess($query)

        Finds the right Itemid for this query

        :param $query:
        :returns: void

    .. php:method:: buildLookup($language = '*')

        Method to build the lookup array

        :param $language:
        :returns: void

    .. php:method:: parse($segments, $vars)

        Dummymethod to fullfill the interface requirements

        :param $segments:
        :param $vars:
        :returns: void

    .. php:method:: build($query, $segments)

        Dummymethod to fullfill the interface requirements

        :param $query:
        :param $segments:
        :returns: void
