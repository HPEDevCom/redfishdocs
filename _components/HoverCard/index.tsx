import * as React from 'react';
import PropTypes from 'prop-types';
import styled from 'styled-components';
import { Card } from 'grommet';

const StyledCard = styled(Card)`
  transition: all 0.3s ease-in-out;
`;

export default function HoverCard({
  children,
  ...rest
}) {
  const [isFocused, setIsFocused] = React.useState(false);

  return (
    <StyledCard
      background="background-front"
      elevation={isFocused ? 'medium' : 'small'}
      onBlur={() => setIsFocused(false)}
      onFocus={() => setIsFocused(true)}
      onMouseOut={() => setIsFocused(false)}
      onMouseOver={() => setIsFocused(true)}
      {...rest}
    >
      {children}
    </StyledCard>
  );
}
