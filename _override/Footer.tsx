import * as React from 'react';

import { Grommet, grommet, Text, Anchor, Box } from 'grommet';

interface FooterColumnObject {
  items: Array<Object>,
}

interface FooterProps {
  footer: {
    columns: Array<FooterColumnObject>,
    copyrightText: String,
  },
}

export default function Footer(props:FooterProps) {
  const { columns, copyrightText } = props.footer;
  const items = columns[0].items;

  const linkItems = items.reduce((total:Array<any>, curr:Object, i:Number) => {
    total.push(curr);
    if (i !== items.length - 1) {
      total.push('|');
    }
    return total;
  }, []);

  return (
    <Grommet theme={grommet}>
      <Box
        direction='row'
        justify='between'
        pad={{ horizontal: 'medium', vertical: 'small' }}
        background='#E5E5E5'
        wrap={true}
      >
        <Box margin={{ vertical: 'small' }} basis='large'>
          <Text size='small'>{copyrightText}</Text>
        </Box>
        <Box margin={{ vertical: 'small' }} wrap={true} direction='row' gap='xsmall' align='center'>
          {linkItems.map((item) => {
            if (typeof item !== 'object') {
              return item;
            }
            return (
              <Anchor
                weight='normal'
                color='dark-1'
                size='small'
                href={item.link}
                target={item.external ? '_external' : null}
              >{item.label}</Anchor>
            );
          })}
        </Box>
      </Box>
    </Grommet>
  );
}
