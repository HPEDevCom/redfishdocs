import * as React from 'react';

import {
  Grommet,
  Anchor,
  Box,
  ResponsiveContext,
  Button,
  Layer,
  Image,
  Heading,
} from 'grommet';
import { hpe } from 'grommet-theme-hpe';
import { Menu as MenuIcon, Close as CloseIcon } from 'grommet-icons';
import { SearchBox, theme, navigate } from '@redocly/ui';
import './NavBar.css';

function MobileMenu({ links, search, logo }) {
  const ref = React.useRef(null);
  const [displayMenu, setDisplayMenu] = React.useState(false);
  const handleClick = (state:boolean) => setDisplayMenu(state);

  return (
    <>
      <Box
        direction='row'
        align='center'
        justify={displayMenu ? 'end' : 'between'}
        pad={{ horizontal: 'medium', vertical: 'medium' }}
        height={displayMenu && '100vh'}
        ref={ref}
      >
        {!displayMenu && (
          <>
            <Button plain={true}>
              <Box>
                <Image alignSelf='center' src={logo} onClick={() => navigate('/')} />
              </Box>
            </Button>
            <Button icon={<MenuIcon />} onClick={() => handleClick(true)} />
          </>
        )}
      </Box>
      {displayMenu && (
        <Layer position='top' target={ref.current} animate={false}>
          <Box align='end' pad='medium'>
            <Button icon={<CloseIcon />} onClick={() => handleClick(false)} />
          </Box>
          <Box gap='large' align='center'>
            {links.map((link) => (
              <Anchor
                label={link.label}
                href={link.link}
                target={link.external && '_blank' }
                color='black'
                weight='bold'
                style={{ textDecoration: 'none' }}
              />
            ))}
          </Box>
          {search && <SearchBox className='search-box-override' />}
          {/* <LoginMenu /> */}
        </Layer>
      )}
    </>
  )
}

function Menu({ links, search, logo }) {
  const size = React.useContext(ResponsiveContext);

  if (size === 'small') {
    return <MobileMenu links={links} search={search} logo={logo} />
  }

  return (
    <Box
      direction='row'
      align='center'
      justify='between'
      pad={{ horizontal: 'medium', vertical: 'small' }}
      border='bottom'
    >
      <Box
        direction='row'
        gap='small'
        align='center'
        onClick={() => navigate('/')}
      >
        <Image alignSelf='center' src={logo} />
        <Heading level={3} margin='none' size='20px'>HPE Dev Portal</Heading>
      </Box>
      <Box direction='row' align='center' gap='large' justify='between'>
        {links.map((link) => (
          <Anchor
            label={link.label}
            href={link.link}
            target={link.external && '_blank' }
            color='black'
            weight='bold'
            style={{ textDecoration: 'none' }}
          />
        ))}
        {search && <SearchBox className='search-box-override' />}
        {/* <LoginMenu /> */}
      </Box>
    </Box>
  );
}

export default function NavBar(props) {
  const links = props.items.filter(item => item.type === 'href');
  const search = props.items.filter(item => item.type === 'search')[0] || null;
  console.log(props)
  return (
    <>
      <Grommet theme={{
        ...hpe,
        ...theme,
      }}>
        <Menu links={links} search={search} logo={props.logo} />
      </Grommet>
    </>
  );
}
