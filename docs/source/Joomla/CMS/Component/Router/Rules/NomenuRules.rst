--------------------------------------------------
Joomla\\CMS\\Component\\Router\\Rules\\NomenuRules
--------------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router\\Rules

.. php:class:: NomenuRules

    Rule to process URLs without a menu item

    .. php:attr:: router

        :type: RouterView

        :scope: protected

        Router this rule belongs to

    .. php:method:: __construct(RouterView $router)

        Class constructor.

        :type $router: RouterView
        :param $router:

    .. php:method:: preprocess($query)

        Dummymethod to fullfill the interface requirements

        :param $query:
        :returns: void

    .. php:method:: parse($segments, $vars)

        Parse a menu-less URL

        :param $segments:
        :param $vars:
        :returns: void

    .. php:method:: build($query, $segments)

        Build a menu-less URL

        :param $query:
        :param $segments:
        :returns: void
