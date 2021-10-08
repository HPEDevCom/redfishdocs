import * as React from 'react';
import PropTypes from 'prop-types';
import { ResponsiveContext } from 'grommet';
import HoverCard from '../HoverCard';
import { Box, CardBody, Text, Heading, Image, Button } from 'grommet';
import { navigate } from '@redocly/ui';

export default function LandingCard({
  titleText,
  bodyText,
  icon,
  path
}) {
  const size = React.useContext(ResponsiveContext);
  const isSmallSize = size === 'small';
  const imageSize = isSmallSize ? '50px' : '150px';
  const basis = {
    'small': '500px',
    'medium': '600px',
  }[size] || 'large';
  return (
    <HoverCard
      basis={basis}
      height={!isSmallSize && '280px'}
      margin={{ horizontal: 'medium', bottom: 'large' }}
      pad='medium'
      onClick={() => navigate(path)}
    >
      <CardBody justify='center' pad='small'>
        <Box
          justify='between'
          align='center'
          gap='small'
          direction={isSmallSize ? 'column' : 'row'}
        >
          <Box height={imageSize} width={imageSize}>
            <Image src={icon} />
          </Box>
          <Box basis={!isSmallSize && '2/3'}>
            <Heading
              textAlign={isSmallSize ? 'center' : 'start'}
              margin={{ top: 'none', bottom: 'small' }}
              level='2'
            >
              {titleText}
            </Heading>
            <Text size='large'>
              {bodyText}
            </Text>
          </Box>
        </Box>
      </CardBody>
    </HoverCard>
  );
}

LandingCard.propTypes = {
  titleText: PropTypes.string.isRequired,
  bodyText: PropTypes.string.isRequired,
  icon: PropTypes.string.isRequired,
  path: PropTypes.string.isRequired,
}
