import * as React from 'react';

import {
  Anchor,
  Box,
  ResponsiveContext,
  Button,
  Text,
  Layer,
} from 'grommet';
import { Menu as MenuIcon, Close as CloseIcon } from 'grommet-icons';
import { SearchBox, LoginMenu, navigate } from '@redocly/ui';
import './NavBar.css';

type LinkObject = {
  type: string,
  label: string,
  link: string,
  external: string,
}

type MenuProps = {
  links: Array<LinkObject>,
  search: Object,
  location: Object,
}

function MobileMenu({ links, search, location }: MenuProps) {
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
        height={displayMenu ? '100vh' : ''}
        ref={ref}
      >
        {!displayMenu && (
          <>
            <Button
              onClick={() => navigate('/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>HPE server management with Redfish®
                </Text>
              </Box>
            </Button>

            <Button
              onClick={() => navigate('/docs/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>Guides
                </Text>
              </Box>
            </Button>

            <Button
              onClick={() => navigate('/docs/redfishservices/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>Services
                </Text>
              </Box>
            </Button>
            
            <Button
              onClick={() => navigate('/docs/redfishclients/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>Clients
                </Text>
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
          {search && <SearchBox className='search-box-override' location={location} />}
        </Layer>
      )}
    </>
  )
}

function TabletMenu({ links, search, location }: MenuProps) {
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
        height={displayMenu ? '100vh' : ''}
        ref={ref}
      >
        {!displayMenu && (
          <>
            <Button
              onClick={() => navigate('/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>HPE server management with Redfish®
                </Text>
              </Box>
            </Button>

            <Button
              onClick={() => navigate('/docs/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>Guides
                </Text>
              </Box>
            </Button>

            <Button
              onClick={() => navigate('/docs/redfishservices/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>Services
                </Text>
              </Box>
            </Button>
            <Button
              onClick={() => navigate('/docs/redfishclients/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong" style={{ lineHeight: '18px' }}>Clients
                </Text>
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
          {search && <SearchBox className='search-box-override' location={location} />}
        </Layer>
      )}
    </>
  )
}

function SmallMenu({ links, search, location }: MenuProps) {
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
        height={displayMenu ? '100vh' : ''}
        ref={ref}
      >
        {!displayMenu && (
          <>
            <Button
              onClick={() => navigate('/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong">HPE server management with Redfish®
                </Text>
              </Box>
            </Button>

            <Button
              onClick={() => navigate('/docs/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong">Guides
                </Text>
              </Box>
            </Button>

            <Button
              onClick={() => navigate('/docs/redfishservices/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong">Services
                </Text>
              </Box>
            </Button>
            <Button
              onClick={() => navigate('/docs/redfishclients/')}
            >
              <Box>
                <Text size='xsmall' weight='bold' color="text-strong">Clients
                </Text>
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
          {search && <SearchBox className='search-box-override' location={location} />}
        </Layer>
      )}
    </>
  )
}


function Menu({ links, search, location }: MenuProps) {
  const size = React.useContext(ResponsiveContext);
  if (size === 'small') {
    return <MobileMenu links={links} search={search} location={search}/>
  } else if (size === 'xsmall') {
    return <SmallMenu links={links} search={search} location={search}/>
  } else if (size === 'medium') {
    return <TabletMenu links={links} search={search} location={search} />
  }
  return (
    <Box
      direction='row'
      align='center'
      justify='between'
      pad={{ horizontal: 'medium', vertical: 'small' }}
      border='bottom'
    >
      <Button
        onClick={() => navigate('/')}
      >
        <Box>
          <Text weight='bold' color="text-strong" style={{ lineHeight: '20px' }}>HPE server management with Redfish®
          </Text>
        </Box>
      </Button>

      <Box direction='row-responsive' responsive={true} overflow='auto' wrap={true} background="light" gap='large' align='right' pad={{ horizontal: 'medium' }} margin={{ right: '10px' }}>
          <Button
              onClick={() => navigate('/docs/')}
            >
                <Text weight='bold' color="text-strong" style={{ lineHeight: '20px' }}> Guides
                </Text>
          </Button>

          <Button
              onClick={() => navigate('/docs/redfishservices/')}
            >
                <Text weight='bold' color="text-strong" style={{ lineHeight: '20px' }}> Services
                </Text>
          </Button>
          
          <Button
              onClick={() => navigate('/docs/redfishclients/')}
            >
                <Text weight='bold' color="text-strong" style={{ lineHeight: '20px' }}> Clients
                </Text>
          </Button>
          
        </Box>

      <Box direction='row' align='center' gap='large' justify='between'>
        {links.map((link) => (
          <Anchor
            key={link.link}
            label={link.label}
            href={link.link}
            target={link.external && '_blank' }
            color='black'
            weight='bold'
            style={{ textDecoration: 'none' }}
          />
        ))}
        {search && <SearchBox className='search-box-override' location={location} />}
        <LoginMenu />
      </Box>
    </Box>
  );
}

type NavBarProps = {
  items: Array<{
    type: string,
  }>,
}

export default function NavBar(props: NavBarProps) {
  const links = props.items.filter(item => item.type === 'href');
  const search = props.items.filter(item => item.type === 'search')[0] || null;
  const location = props.items.filter(item => item.type === 'location');
  return <Menu links={links} search={search} location={location} />;
}
