-----------------------------------------------------
Joomla\\CMS\\Component\\Router\\Rules\\RulesInterface
-----------------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router\\Rules

.. php:interface:: RulesInterface

    RouterRules interface for Joomla

    .. php:method:: preprocess($query)

        Prepares a query set to be handed over to the build() method.
        This should complete a partial query set to work as a complete non-SEFed
        URL and in general make sure that all information is present and properly
        formatted. For example, the Itemid should be retrieved and set here.

        :param $query:
        :returns: void

    .. php:method:: parse($segments, $vars)

        Parses a URI to retrieve informations for the right route through
        the component.
        This method should retrieve all its input from its method arguments.

        :param $segments:
        :param $vars:
        :returns: void

    .. php:method:: build($query, $segments)

        Builds URI segments from a query to encode the necessary informations
        for a route in a human-readable URL.
        This method should retrieve all its input from its method arguments.

        :param $query:
        :param $segments:
        :returns: void
