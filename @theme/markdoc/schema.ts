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
    transform(...strings: string[]) {
      return strings.join('');
    },
  },

  concat1: (strings: string[]) => {
      return strings[0] + strings[1];
  },

  // The following concat2 function works with 2 args!
  concat2: {
    transform(strings: string[]) {
      return strings[0] + strings[1];
    },
  },

  concat3: {
    transform(...args: any[]) {
      console.log("Arguments:", args);
      return args.map(arg => {
        // Extract the value for string literals
        if (arg && typeof arg === 'object' && 'value' in arg) {
          return arg.value;
        }
        // Fallback for raw strings or numbers
        return String(arg);
      }).join('');
    }
  }
}