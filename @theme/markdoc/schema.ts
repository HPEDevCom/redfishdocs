// Learn how to build your own Markdoc tags: https://redocly.com/docs/realm/extend/tutorials/build-markdoc-tags
import type { Schema, transform } from '@markdoc/markdoc';

export const tags: Record<string, Schema> = {

  'split': {
    render: 'Split',
  },

  'link-internal': {
    render: 'LinkInternal',
    attributes: {
      href: { type: String, required: true },
    },
  },

  'link-external': {
    render: 'LinkExternal',
    attributes: {
      href: { type: String, required: true },
    },
  },
}

export const functions = {
  concat: {
    transform(args: string[]){
    return Object.values(args).join('');
    },
  },
}
