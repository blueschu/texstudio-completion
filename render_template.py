#!/usr/bin/env python3
import argparse
import sys
from typing import Final

import jinja2

_ENV_ARGS: Final = {
    'keep_trailing_newline': True,
    'trim_blocks': True,  # Omit first newline after each tag.
    'lstrip_blocks': True,  # Strip whitespace at the beginning of lines.
}


def main(args: list[str]):
    parsed_args = _make_parser().parse_args(args)

    env = jinja2.Environment(loader=jinja2.FileSystemLoader('.'), **_ENV_ARGS)
    env.filters['addprefix'] = lambda s, p: f"{p}{s}"
    env.filters['addsuffix'] = lambda s, f: f"{s}{f}"
    template = env.get_template(parsed_args.template_file.name)

    sys.stdout.write(template.render())


def _make_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser()
    parser.add_argument('template_file', type=argparse.FileType('r'))

    return parser


if __name__ == '__main__':
    main(sys.argv[1:])
