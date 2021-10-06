import { readableColor, transparentize } from 'polished';
import saturnTheme from './grommet-theme.json';

export const theme = {
  spacing: {
    unit: 5,
    sectionHorizontal: ({ spacing }) => spacing.unit * 8,
    sectionVertical: ({ spacing }) => spacing.unit * 8,
  },
  breakpoints: {
    xs: `${saturnTheme.global.breakpoints.small.value}px`,
    small: `${saturnTheme.global.breakpoints.small.value}px`,
    medium: `${saturnTheme.global.breakpoints.small.value}px`,
    large: `${saturnTheme.global.breakpoints.medium.value}px`,
  },
  colors: {
    tonalOffset: 0.2,
    primary: {
      main: saturnTheme.global.colors['green!'],
      contrastText: saturnTheme.global.colors['background-front'].dark,
    },
    success: {
      main: saturnTheme.global.colors['status-ok'].light,
      light: saturnTheme.global.colors['status-ok'].light,
      dark: saturnTheme.global.colors['status-ok'].dark,
      contrastText: ({ colors }) => readableColor(colors.success.main),
    },
    error: {
      main: saturnTheme.global.colors['status-error'].light,
      light: saturnTheme.global.colors['status-error'].light,
      dark: saturnTheme.global.colors['status-error'].dark,
      contrastText: ({ colors }) => readableColor(colors.error.main),
    },
    warning: {
      main: saturnTheme.global.colors['status-warning'].light,
      light: saturnTheme.global.colors['status-warning'].light,
      dark: saturnTheme.global.colors['status-warning'].dark,
      contrastText: ({ colors }) => readableColor(colors.warning.main),
    },
    info: {
      main: saturnTheme.global.colors['status-unknown'].light,
      light: saturnTheme.global.colors['status-unknown'].light,
      dark: saturnTheme.global.colors['status-unknown'].dark,
      contrastText: ({ colors }) => readableColor(colors.info.main),
    },
    text: {
      primary: saturnTheme.global.colors.text.light,
    },
    border: {
      dark: saturnTheme.global.colors.border.dark,
      light: saturnTheme.global.colors.border.light,
    },
    responses: {
      success: {
        color: ({ colors }) => colors.success.main,
        backgroundColor: ({ colors }) => transparentize(0.9, colors.success.main),
      },
      error: {
        color: ({ colors }) => colors.error.main,
        backgroundColor: ({ colors }) => transparentize(0.9, colors.error.main),
      },
      redirect: {
        color: ({ colors }) => colors.warning.main,
        backgroundColor: ({ colors }) => transparentize(0.9, colors.responses.redirect.color),
      },
      info: {
        color: ({ colors }) => colors.info.main,
        backgroundColor: ({ colors }) => transparentize(0.9, colors.responses.info.color),
      },
    },
    http: {
      get: saturnTheme.global.colors['green!'],
      post: saturnTheme.global.colors['yellow!'],
      put: saturnTheme.global.colors['orange!'],
      options: saturnTheme.global.colors['purple!'],
      patch: saturnTheme.global.colors['teal!'],
      delete: saturnTheme.global.colors['red!'],
      basic: '#999',
      link: saturnTheme.global.colors['blue!'],
      head: saturnTheme.global.colors['blue!'],
    },
  },
  sidebar: {
    backgroundColor: '#fafafa',
    width: '320px',
    spacing: {
	    paddingVertical: 12,
	    offsetNesting: 6,
    }
  },
  typography: {
    fontSize: '18px',
    lineHeight: '1.45em',
    fontWeightRegular: '400',
    fontWeightBold: '600',
    fontWeightLight: '300',
    fontFamily: 'Metric, Arial, sans-serif',
    headings: {
      fontFamily: saturnTheme.global.font.family,
      fontWeight: '600',
      lineHeight: ({ typography }) => typography.lineHeight,
    },
    heading1: {
      fontSize: saturnTheme.heading.level[1].medium.size,
      fontWeight: ({ typography }) => typography.headings.fontWeight,
      fontFamily: ({ typography }) => typography.headings.fontFamily,
      lineHeight: ({ typography }) => typography.headings.lineHeight,
      color: ({ colors }) => colors.text.primary,
      capitalize: false,
    },
    heading2: {
      fontSize: saturnTheme.heading.level[2].medium.size,
      fontWeight: ({ typography }) => typography.headings.fontWeight,
      color: ({ colors }) => colors.text.primary,
      fontFamily: ({ typography }) => typography.headings.fontFamily,
      lineHeight: ({ typography }) => typography.headings.lineHeight,
      capitalize: false,
    },
    heading3: {
      fontSize: saturnTheme.heading.level[3].medium.size,
      fontWeight: ({ typography }) => typography.headings.fontWeight,
      color: ({ colors }) => colors.text.primary,
      fontFamily: ({ typography }) => typography.headings.fontFamily,
      lineHeight: ({ typography }) => typography.headings.lineHeight,
      capitalize: false,
    },
    heading4: {
      fontSize: saturnTheme.heading.level[4].medium.size,
      fontWeight: ({ typography }) => typography.headings.fontWeight,
      color: ({ colors }) => colors.text.primary,
      fontFamily: ({ typography }) => typography.headings.fontFamily,
      lineHeight: ({ typography }) => typography.headings.lineHeight,
      capitalize: false,
    },
    heading5: {
      fontSize: saturnTheme.heading.level[5].medium.size,
      fontWeight: ({ typography }) => typography.headings.fontWeight,
      color: ({ colors }) => colors.text.primary,
      fontFamily: ({ typography }) => typography.headings.fontFamily,
      lineHeight: ({ typography }) => typography.headings.lineHeight,
      capitalize: false,
    },
    heading6: {
      fontSize: saturnTheme.heading.level[6].medium.size,
      fontWeight: ({ typography }) => typography.headings.fontWeight,
      color: ({ colors }) => colors.text.primary,
      fontFamily: ({ typography }) => typography.headings.fontFamily,
      lineHeight: ({ typography }) => typography.headings.lineHeight,
      capitalize: false,
    },
    code: {
      fontSize: '14px',
      fontFamily: 'Courier, monospace',
      fontWeight: ({ typography }) => typography.fontWeightRegular,
      color: '#e53935',
      backgroundColor: 'rgba(38, 50, 56, 0.04)',
      wrap: false,
    },
    links: {
      color: ({ colors }) => colors.primary.main,
      hover: ({ colors }) => colors.text.primary,
      fontWeight: '500',
    },
  },
  rightPanel: {
    width: '40%',
    textColor: ({ colors }) => colors.text.primary,
  },
};

