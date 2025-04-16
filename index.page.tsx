// Learn more about how to build React pages in Realm: https://redocly.com/docs/realm/extend/how-to/create-react-page
import React from 'react';
import styled from 'styled-components';

import { ArrowRightIcon, Button } from '@redocly/theme';
import { Card } from '@redocly/theme/markdoc/components/Cards/Card';
import { Cards } from '@redocly/theme/markdoc/components/Cards/Cards';

export default function HomePage() {
  return (
    <div>
      <HeroContainer>
        <HeroBg />
        <h1>HPE server management with Redfish</h1>
        <p>Redfish® is a standard RESTful API designed to deliver simple and secure management for converged, hybridIT and the Software Defined Data Center (SDDC).</p>
        <Button size="large" variant="primary" tone="brand" to="/docs">
          Get started
        </Button>
      </HeroContainer>
      <Container>
        <Cards>
          <Card title="Guides" to="/docs">
            Access learning material and best practices for working with HPE Redfish® APIs. Browse this section to better understand the basic Redfish concepts and review generic examples.
          </Card>
          <Card title="Services" to="/docs/redfishservices">
            Explore and integrate with HPE Redfish® services like the ones implemented in the different HPE iLO generations.
          </Card>
          <Card title="Clients" to="/docs/redfishclients">
            Find Redfish client documentation that assist in compliance to API standards like the HPE iLOrest tool.
          </Card>
        </Cards>
      </Container>

      <Container>
        <ContactUsSection>
          <h3>Need help?</h3>
          <ButtonContainer>
            <Button variant="outlined" size="large" to="https://developer.hpe.com">
              Join the HPE developer community
            </Button>
          </ButtonContainer>
        </ContactUsSection>
      </Container>
    </div>
  );
}

const HeroBg = styled.div`
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;


  z-index: -1;

  &:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url(${require('./images/banner.jpg')});
    background-size: cover;
    //filter: blur(60px);
    opacity: 1.0;
  }
  //&:after {
    //content: '';
    //position: absolute;
    //inset: 0;
    //background-size: cover;
    //background-image: url(${require('./images/grid.svg')});
    //opacity: 0.2;
    //.dark & {
      //background-image: url(${require('./images/grid-dark.svg')});
    //}
  }
`;

const HeroContainer = styled.div`
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 32px;
  position: relative;
  .code-line::before {
    color: var(--text-color-disabled);
  }

  span {
    color: var(--text-color-secondary);
  }

  h1 {
    color: var(--text-color-primary);
    text-align: left;
    font-size: 40px;
    font-weight: 800;
    line-height: 102px;
    letter-spacing: 1px;
    margin-bottom: 24px;
    margin: 80px 0 24px 0;
  }

  > p {
    color: var(--text-color-primary);
    text-align: left;
    font-size: 16px;
    font-weight: 500;
    line-height: 28px;
    margin: 0 0 24px 0;
  }
`;

const Container = styled.div`
  margin-top: 64px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  color: var(--text-color-secondary);
  font-size: 20px;
  font-weight: 400;
  line-height: 28px;

  width: min(90%, 886px);
  margin: 64px auto 0;
  a {
    text-decoration: none;
  }

  p {
    margin: 0;
  }

  h3 {
    color: var(--text-color-primary);
    font-size: 24px;
    font-weight: 600;
    line-height: 32px;
    margin: 0 0 24px 0;
  }
`;

const ButtonContainer = styled.div`
  display: flex;
  gap: var(--spacing-xs);
  justify-content: center;
  flex-wrap: wrap;
`;

const ContactUsSection = styled.div`
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
  margin-bottom: var(--spacing-lg);
  flex-wrap: wrap;
  gap: var(--spacing-xs);
  h3 {
    margin: 0;
  }
`;
