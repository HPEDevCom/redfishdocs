import * as React from 'react';
import 'styled-components';
import { Grommet } from 'grommet';
import { hpe } from 'grommet-theme-hpe';
import { theme } from '@redocly/ui';
import { Helmet } from 'react-helmet';

type AppProps = {
  children: any
}

export function App({ children }: AppProps) {

  return (
    <><Helmet>
      <meta content="hpe" name="company_code" />
      <meta content="hpe.1.0" name="hp_design_version" />
      <meta content="support.docs" name="lifecycle" />
      <meta content="follow, index" name="robots" />
      <meta content="Segment Neutral" name="segment" />
      <meta content="HPE server management with Redfish®" name="simple_title" />
      <meta content="ww" name="target_country" />
      <meta content="Commercial.Technical End User" name="user_profile" />
      <meta content="R12305" name="web_section_id" />
    </Helmet>
    <Grommet theme={{
      ...hpe,
      ...theme,
    }}>
      {children}
    </Grommet></>
  );
}
