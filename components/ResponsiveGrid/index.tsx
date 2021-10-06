import React from 'react';
import PropTypes from 'prop-types';
import { Grid, ResponsiveContext } from 'grommet';

const ResponsiveGrid = ({ children, columns, rows, cardType, ...props }) => {
  return (
    <ResponsiveContext.Consumer>
    {(size) => {
      let rowGap;

      if (cardType === 'platform') {
        rowGap = {
          row: size === 'small' ? 'large' : '120px',
          column: '120px'
        }
      } else if (cardType === 'landing'){
        rowGap={
          row: 'large',
          column: 'xlarge'
        }
      }
      return (
        <Grid
          gap={rowGap}
          {...props}
          rows={rows[size]}
          columns={columns[size]}
        >
          {children}
        </Grid>
      );
    }}
  </ResponsiveContext.Consumer>)
};

ResponsiveGrid.propTypes = {
  children: PropTypes.node,
  columns: PropTypes.object,
  rows: PropTypes.object,
};

export default ResponsiveGrid;