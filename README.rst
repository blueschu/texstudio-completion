TeXstudio Completion Files
==========================

TeXstudio Completion Word List (.cwl) files for LaTeX packages.

A descrpiption of the cwl format can be found in the `TeXstudio user manual`_ (see 4.14).


.. _TeXstudio user manual: https://htmlpreview.github.io/?https://github.com/texstudio-org/texstudio/master/utilities/manual/usermanual_en.html

To build all completion files, run

.. code-block:: shell

    $ make all

The cwl files can be installed manually by placing them in ``~/.config/texstudio/completion/user`` (Unix) or ``%appdata%\texstudio\completion\use`` (Windows).
