import * as React from 'react';
import styled from 'styled-components';
import { Card } from 'grommet';

type HoverCardProps = {
  children: any,
  height: string,
  margin: Object | string
  basis: string,
  pad: string,
  background?: string,
  onClick: Function,
}

const StyledCard = styled(Card)`
  transition: all 0.3s ease-in-out;
`;

export default function HoverCard({
  children,
  ...rest
}: HoverCardProps) {
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
