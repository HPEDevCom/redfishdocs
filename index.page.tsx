import * as React from 'react';

import React from "react";

import {
  Grommet,
  Box,
  Text,
  Heading,
  ResponsiveContext,
  Grid,
  Card,
  CardBody,
  CardHeader,
  Paragraph,
} from "grommet";
import { hpe } from "grommet-theme-hpe";
import { Button } from '@redocly/theme';
import { Directions, Code, Compliance} from "grommet-icons";

/**
 UX/UI style requirements: 
1.	Text color should be #555555
2.	Page title should be MetricHPE Regular 36
3.	Page background should be #F1F1F1
4.	Card title should MetricHPE Regular 20
5.	Card content should be MetricHPE Light 18
*/
const backGroundColor = "#F1F1F1"
const cardColor = "#FFFFFF"
const pageTitleStyle = { fontFamily: "Metric", fontSize: "36px", fontWeight: 400, fontStyle: "normal",  color: "#555555"};
const pageDescStyle = { fontFamily: "Metric", fontSize: "18px", fontWeight: 300, fontStyle: "normal",  color: "#555555" }
// Note: The as "left"  is required on the textAlign property to satisfy TypeScript type checking
const cardTitleStyle = { fontFamily: "Metric", fontSize: "20px", fontWeight: 400, fontStyle: "normal",  color: "#555555", textAlign: "left" as "left" };
const cardContentStyle = { fontFamily: "Metric", fontSize: "18px", fontWeight: 300, fontStyle: "normal",  color: "#555555", textAlign: "left" as "left" };
const cardIndexStyle = { fontFamily: "Metric", fontSize: "28px", fontWeight: 700, fontStyle: "normal",  color: "#555555" };

export default function Page() {
  return (
    <Grommet theme={hpe}>
    <ResponsiveContext.Consumer>
      {(size) => {
        return (
            <Box 
              gap="none"
              pad={{ top: "large", bottom: 'xlarge', horizontal: 'large' }}
              background={backGroundColor}
            >
              <Box>
                <Heading level={1} size='small' margin='none' style={pageTitleStyle}>
                  HPE Support APIs
                </Heading>
                <Box width='large'>
                  <Paragraph margin="none" fill={true} style={pageDescStyle}>
                    Access learning materials and best practices for working with our APIs.
                  </Paragraph>
                </Box>
                <br/>
              </Box>
              <Box width="xlarge">
                <Grid
                  columns={{ count: 4, size: 'auto' }}
                  gap='small'
                  pad={{ bottom: 'xlarge'}}
                >
                  <Button
                    to="/docs/support/guides/getting_started/"
                  >
                    <Card className='card' background={cardColor} pad={{ vertical: 'medium', horizontal: 'medium' }} fill={true}>
                      <CardHeader pad="xxmedium">
                        <Box direction="row" justify="start" align="center" gap="small">
                          <Text style={cardIndexStyle}>1</Text>
                          <Directions color='plain' size='large'/>
                        </Box>
                      </CardHeader>
                      <CardBody pad={{ vertical: 'small', horizontal: '' }}>
                        <Text style={cardTitleStyle}>
                          Getting Started with APIs</Text>
                        <Paragraph style={cardContentStyle}>
                          Learn how to access and use HPE APIs
                        </Paragraph>
                      </CardBody>
                    </Card>
                  </Button>
                  <Button to="/">
                    <Card className='card' background={cardColor} pad={{ vertical: 'medium', horizontal: 'medium' }} fill={true}>
                      <CardHeader pad="xmedium">
                        <Box direction="row" justify="start" align="center" gap="small">
                          <Text style={cardIndexStyle}>2</Text>
                          <Code color='plain' size='large'/>
                        </Box>
                      </CardHeader>
                      <CardBody pad={{ vertical: 'small', horizontal: 'xxmedium' }}>
                        <Text style={cardTitleStyle}>
                          Create API Clients</Text>
                        <Paragraph style={cardContentStyle}>
                          View, manage and create API clients.
                        </Paragraph>
                      </CardBody>
                    </Card>
                  </Button>
                    <Button to="/docs/support/services/">
                      <Card className='card' background={cardColor} pad={{ vertical: 'medium', horizontal: 'medium' }} fill={true}>
                        <CardHeader pad="xmedium">
                          <Box direction="row" justify="start" align="center" gap="small">
                            <Text style={cardIndexStyle}>3</Text>
                            <Compliance color='plain' size='large'/>
                          </Box>
                        </CardHeader>
                        <CardBody pad={{ vertical: 'small', horizontal: 'xxmedium' }}>
                          <Text style={cardTitleStyle}>
                            Explore APIs</Text>
                          <Paragraph style={cardContentStyle}>
                            A catalog of HPE Support APIs.
                          </Paragraph>
                        </CardBody>
                      </Card>
                    </Button>
                </Grid>
              </Box>
            </Box>
        );
      }}
    </ResponsiveContext.Consumer>
    </Grommet>
  );
}
