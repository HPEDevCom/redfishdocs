import * as React from 'react';
import PropTypes from 'prop-types';
import { ResponsiveContext } from 'grommet';
import HoverCard from '../HoverCard';
import { CardBody, Heading } from 'grommet';

export default function ComingSoonCard({
  titleText,
}) {
  const size = React.useContext(ResponsiveContext);
  const isSmallSize = size === 'small';
  const basis = {
    'small': '500px',
    'medium': '600px',
    'large': 'large',
    'xlarge': 'large'
  }[size];
  return (
    <HoverCard
      height='280px'
      margin={{ horizontal: 'medium', bottom: 'large' }}
      basis={basis}
      pad='medium'
      background='light-2'
    >
      <CardBody align='center' justify='center' pad='small'>
        <Heading margin='none' level='2'>
          {titleText}
        </Heading>
        <Heading margin='none' level='2'>
          Coming Soon
        </Heading>
      </CardBody>
    </HoverCard>
  );
}

ComingSoonCard.propTypes = {
  titleText: PropTypes.string.isRequired,
}
