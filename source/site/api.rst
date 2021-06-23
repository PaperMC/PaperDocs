=============
Downloads API
=============

.. warning::
    Version 1 of the API has been deprecated as of November 24th, 2020.

    We encourage everyone to use the new version of the API as the
    previous one will soon be removed.

After months of requests (years in the case of a few hosting providers), PaperMC
has added a downloads API to standardize download links and finding specific
versions of our software for specific versions of Minecraft.

It is a simple RESTful JSON API. Like most APIs it uses versioned endpoints;
the current version is ``v2``. If any breaking changes are made it will be
incremented to ``v3`` and announced, with the old version continuing to
function for some time until further announcements are made.

I just want to download the latest jar
--------------------------------------
Unlike the v1 API, there is no API endpoint to simply fetch the latest jar.
This is intentional, as it had been primarily used to auto-update servers,
which is highly discouraged.

Downloading from the command line
---------------------------------
Because the filenames given by the API include version numbers,
start scripts will have to continuously change to match the filename.
For this reason, it is recommended that you choose a consistent name,
such as `paperclip.jar` or `waterfall.jar`, and save your downloads
to that file. This also has the advantage of not cluttering up
your server directories with unneeded previous versions.

If you're using `curl` you can use the ``-o`` flag by itself to specify
your own name for the downloaded file (ex: ``curl -o paperclip.jar http://someurl``).
For more information, please see
`curl's own documentation <https://curl.haxx.se/docs/manpage.html>`_.

If you're using `wget`, you can use the ``-O`` flag to specify your own name
for the downloaded file. (ex: ``wget http://someurl -O paperclip.jar``)
For more information, please see
`wget's own documentation <https://www.gnu.org/software/wget/manual/wget.html>`_.

Other tools may not use the above options, and may even choose their own names.
You will have to consult those specific tools' documentation to determine how
that is handled. You can always simply rename the file immediately after
download if your preferred tool does not allow you to set the file name
for some reason.

======================
Endpoint Documentation
======================


Swagger docs
------------
To view the full `v2` documentation, including example responses
for all below-documented endpoints and an interactive request generator,
please go to `<https://papermc.io/api/docs/>`_

Overview
--------

The downloads API is project-based, and downloads can be obtained via the following format:
``https://papermc.io/api/v2/projects/{PROJECT}/versions/{VERSION}/builds/{BUILD}/downloads/{DOWNLOAD}``

Example getting a listing of available project versions for Waterfall:
``https://papermc.io/api/v2/projects/waterfall``

NOTE: The parent (``https://papermc.io/api``) does not currently enumerate the
available API versions and will instead redirect to a usage page on the current
version of the API.

PROJECT
-------
- ``paper`` - The PaperMC server implementation
- ``waterfall`` - The Waterfall server proxy
- ``travertine`` - The Travertine proxy; Waterfall, but supporting Minecraft 1.7. Now deprecated.

The parent (``https://papermc.io/api/v2/projects``) will return a list
of all available projects if accessed directly.

VERSION
-------
This will vary from project to project above. By accessing the API using just
the project name (ex: ``https://papermc.io/api/v2/projects/paper``),
the API will return an array of available versions (which includes
minor releases) and version groups (which do not).

These versions correspond to the version of Minecraft the software is targeting.
For example, ``https://papermc.io/api/v2/projects/paper/versions/1.16.5``
will return all build IDs targeting the 1.16.5 version of Minecraft.

BUILD
-----
A specific build of the given project. These build versions correspond
with the build IDs specified by the backend continuous integration tools. As of
v2 of the API they will always be integers.

For example, ``https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/435`` will return
information about the build for 1.16.5 with the ID of 435.

DOWNLOAD
--------
Finally, if you want to download a version of something, you must append
the name of the file to download to the URL format in the example above.

For example, to download build 430 of the Waterfall project for 1.16,
you would access the following URL:

``https://papermc.io/api/v2/projects/waterfall/versions/1.16/builds/430/downloads/waterfall-1.16-430.jar``

The final piece of the URL, `waterfall-1.16-430.jar` can be found by using the
previously documented endpoint to obtain information about a build.

Note that filenames are not guaranteed to follow the same naming format,
and you must query the API properly to get the name of each build.

Downloads served in this way will include ``content-type``, ``content-length``,
and ``content-disposition`` headers for proper identification, progress, and
naming of resources.

.. code-block:: text

    content-type: application/java-archive
    content-length: 17759028
    cache-control: public, max-age=14400, s-maxage=604800
    content-disposition: attachment; filename*=UTF-8''waterfall-1.16-430.jar

API Versions
------------
``v1`` - The initial launch version of the API, now deprecated.

``v2`` - The current version of the API recommended for all usage.
