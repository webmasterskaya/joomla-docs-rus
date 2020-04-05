-----------------------
Joomla\\CMS\\Date\\Date
-----------------------

.. php:namespace: Joomla\\CMS\\Date

.. php:class:: Date

    JDate is a class that stores a date and provides logic to manipulate
    and render that date in a variety of formats.

    .. php:attr:: format

        :type: string

        The format string to be applied when using the __toString() magic method.

    .. php:attr:: gmt

        :type: object

        :scope: protected

        Placeholder for a \DateTimeZone object with GMT as the time zone.

    .. php:attr:: stz

        :type: object

        :scope: protected

        Placeholder for a \DateTimeZone object with the default server
        time zone as the time zone.

    .. php:attr:: tz

        :type: \DateTimeZone

        :scope: protected

        The \DateTimeZone object for usage in rending dates as strings.

    .. php:method:: __construct($date = 'now', $tz = null)

        Constructor.

        :param $date:
        :param $tz:

    .. php:method:: __get($name)

        Magic method to access properties of the date given by class to the format
        method.

        :param $name:
        :returns: mixed A value if the property name is valid, null otherwise.

    .. php:method:: __toString()

        Magic method to render the date object in the format specified in the
        public
        static member Date::$format.

        :returns: string The date as a formatted string.

    .. php:method:: getInstance($date = 'now', $tz = null)

        Proxy for new JDate().

        :param $date:
        :param $tz:
        :returns: Date

    .. php:method:: dayToString($day, $abbr = false)

        Translates day of week number to a string.

        :param $day:
        :param $abbr:
        :returns: string The day of the week.

    .. php:method:: calendar($format, $local = false, $translate = true)

        Gets the date as a formatted string in a local calendar.

        :param $format:
        :param $local:
        :param $translate:
        :returns: string The date string in the specified format format.

    .. php:method:: format($format, $local = false, $translate = true)

        Gets the date as a formatted string.

        :param $format:
        :param $local:
        :param $translate:
        :returns: string The date string in the specified format format.

    .. php:method:: getOffsetFromGmt($hours = false)

        Get the time offset from GMT in hours or seconds.

        :param $hours:
        :returns: float The time offset from GMT either in hours or in seconds.

    .. php:method:: monthToString($month, $abbr = false)

        Translates month number to a string.

        :param $month:
        :param $abbr:
        :returns: string The month of the year.

    .. php:method:: setTimezone($tz)

        Method to wrap the setTimezone() function and set the internal time zone
        object.

        :param $tz:
        :returns: Date

    .. php:method:: toISO8601($local = false)

        Gets the date as an ISO 8601 string.  IETF RFC 3339 defines the ISO 8601
        format
        and it can be found at the IETF Web site.

        :param $local:
        :returns: string The date string in ISO 8601 format.

    .. php:method:: toSql($local = false, JDatabaseDriver $db = null)

        Gets the date as an SQL datetime string.

        :param $local:
        :type $db: JDatabaseDriver
        :param $db:
        :returns: string The date string in SQL datetime format.

    .. php:method:: toRFC822($local = false)

        Gets the date as an RFC 822 string.  IETF RFC 2822 supercedes RFC 822 and
        its definition
        can be found at the IETF Web site.

        :param $local:
        :returns: string The date string in RFC 822 format.

    .. php:method:: toUnix()

        Gets the date as UNIX time stamp.

        :returns: integer The date as a UNIX timestamp.

    .. php:method:: __wakeup()

    .. php:method:: __set_state($array)

        :param $array:

    .. php:method:: createFromImmutable($DateTimeImmutable)

        :param $DateTimeImmutable:

    .. php:method:: createFromFormat($format, $time, Class [ <internal:date> class DateTimeZone ] {

      - Constants [14] {
        Constant [ public int AFRICA ] { 1 }
        Constant [ public int AMERICA ] { 2 }
        Constant [ public int ANTARCTICA ] { 4 }
        Constant [ public int ARCTIC ] { 8 }
        Constant [ public int ASIA ] { 16 }
        Constant [ public int ATLANTIC ] { 32 }
        Constant [ public int AUSTRALIA ] { 64 }
        Constant [ public int EUROPE ] { 128 }
        Constant [ public int INDIAN ] { 256 }
        Constant [ public int PACIFIC ] { 512 }
        Constant [ public int UTC ] { 1024 }
        Constant [ public int ALL ] { 2047 }
        Constant [ public int ALL_WITH_BC ] { 4095 }
        Constant [ public int PER_COUNTRY ] { 4096 }
      }

      - Static properties [0] {
      }

      - Static methods [3] {
        Method [ <internal:date> static public method __set_state ] {

          - Parameters [1] {
            Parameter #0 [ <required> array $array ]
          }
        }

        Method [ <internal:date> static public method listAbbreviations ] {

          - Parameters [0] {
          }
        }

        Method [ <internal:date> static public method listIdentifiers ] {

          - Parameters [2] {
            Parameter #0 [ <optional> $what ]
            Parameter #1 [ <optional> $country ]
          }
        }
      }

      - Properties [0] {
      }

      - Methods [6] {
        Method [ <internal:date, ctor> public method __construct ] {

          - Parameters [1] {
            Parameter #0 [ <required> $timezone ]
          }
        }

        Method [ <internal:date> public method __wakeup ] {
        }

        Method [ <internal:date> public method getName ] {

          - Parameters [0] {
          }
        }

        Method [ <internal:date> public method getOffset ] {

          - Parameters [1] {
            Parameter #0 [ <required> $object ]
          }
        }

        Method [ <internal:date> public method getTransitions ] {

          - Parameters [2] {
            Parameter #0 [ <optional> $timestamp_begin ]
            Parameter #1 [ <optional> $timestamp_end ]
          }
        }

        Method [ <internal:date> public method getLocation ] {

          - Parameters [0] {
          }
        }
      }
    }
     $object)

        :param $format:
        :param $time:
        :type $object: Class [ <internal:date> class DateTimeZone ] {

          - Constants [14] {
            Constant [ public int AFRICA ] { 1 }
            Constant [ public int AMERICA ] { 2 }
            Constant [ public int ANTARCTICA ] { 4 }
            Constant [ public int ARCTIC ] { 8 }
            Constant [ public int ASIA ] { 16 }
            Constant [ public int ATLANTIC ] { 32 }
            Constant [ public int AUSTRALIA ] { 64 }
            Constant [ public int EUROPE ] { 128 }
            Constant [ public int INDIAN ] { 256 }
            Constant [ public int PACIFIC ] { 512 }
            Constant [ public int UTC ] { 1024 }
            Constant [ public int ALL ] { 2047 }
            Constant [ public int ALL_WITH_BC ] { 4095 }
            Constant [ public int PER_COUNTRY ] { 4096 }
          }

          - Static properties [0] {
          }

          - Static methods [3] {
            Method [ <internal:date> static public method __set_state ] {

              - Parameters [1] {
                Parameter #0 [ <required> array $array ]
              }
            }

            Method [ <internal:date> static public method listAbbreviations ] {

              - Parameters [0] {
              }
            }

            Method [ <internal:date> static public method listIdentifiers ] {

              - Parameters [2] {
                Parameter #0 [ <optional> $what ]
                Parameter #1 [ <optional> $country ]
              }
            }
          }

          - Properties [0] {
          }

          - Methods [6] {
            Method [ <internal:date, ctor> public method __construct ] {

              - Parameters [1] {
                Parameter #0 [ <required> $timezone ]
              }
            }

            Method [ <internal:date> public method __wakeup ] {
            }

            Method [ <internal:date> public method getName ] {

              - Parameters [0] {
              }
            }

            Method [ <internal:date> public method getOffset ] {

              - Parameters [1] {
                Parameter #0 [ <required> $object ]
              }
            }

            Method [ <internal:date> public method getTransitions ] {

              - Parameters [2] {
                Parameter #0 [ <optional> $timestamp_begin ]
                Parameter #1 [ <optional> $timestamp_end ]
              }
            }

            Method [ <internal:date> public method getLocation ] {

              - Parameters [0] {
              }
            }
          }
        }

        :param $object:

    .. php:method:: getLastErrors()

    .. php:method:: modify($modify)

        :param $modify:

    .. php:method:: add($interval)

        :param $interval:

    .. php:method:: sub($interval)

        :param $interval:

    .. php:method:: getTimezone()

    .. php:method:: getOffset()

    .. php:method:: setTime($hour, $minute, $second, $microseconds)

        :param $hour:
        :param $minute:
        :param $second:
        :param $microseconds:

    .. php:method:: setDate($year, $month, $day)

        :param $year:
        :param $month:
        :param $day:

    .. php:method:: setISODate($year, $week, $day)

        :param $year:
        :param $week:
        :param $day:

    .. php:method:: setTimestamp($unixtimestamp)

        :param $unixtimestamp:

    .. php:method:: getTimestamp()

    .. php:method:: diff($object, $absolute)

        :param $object:
        :param $absolute:
