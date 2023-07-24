import * as React from 'react';
import styled from 'styled-components';
import {
  SearchInputProps,
  SearchIcon,
  SearchClearIcon,
  SearchLoadingIcon,
  SearchInputField,
  SearchInputWrap,
} from '@redocly/developer-portal/ui';
/**
 * Custom Search Input. The implementation below is almost identical to our default SearchInput.
 */
export default function CustomSearchInput(props: SearchInputProps) {
  const { query, onChange, onToggleSearchResults, onKeyDown, onClear, loading } = props;
  const inputRef = React.useRef<HTMLInputElement | null>(null);
  const [isFocused, setIsFocused] = React.useState(false);
  React.useEffect(() => {
    if (isFocused && query.length > 0) {
      onToggleSearchResults(true);
    } else {
      onToggleSearchResults(false);
    }
  }, [isFocused, query]);
  return (
    <SearchInputWrap>
      <StyledSearchInputField
        type="text"
        autoComplete="off"
        value={query || ''}
        onChange={onChange}
        id="search"
        ref={inputRef}
        placeholder="Search the documentation"
        aria-label="Search..."
        onFocus={() => setIsFocused(true)}
        onBlur={() => setIsFocused(false)}
        onKeyDown={onKeyDown}
      />
      {isFocused ? (
        loading ? (
          <StyledSearchLoadingIcon />
        ) : (
          <StyledSearchClearIcon onClick={onClear} />
        )
      ) : (
        <StyledSearchIcon onClick={() => inputRef.current && inputRef.current.focus()} />
      )}
    </SearchInputWrap>
  );
}
const StyledSearchClearIcon = styled(SearchClearIcon)`
  position: absolute;
  cursor: pointer;
  width: 1em;
  height: 1em;
  left: 1em;
  transform: translateY(-50%);
  top: 50%;
  background-size: contain;
  background-repeat: no-repeat;
  @media only screen and (max-width: ${({ theme }) => theme.breakpoints.medium}) {
    width: 1.2em;
    height: 1.2em;
  }
`
const StyledSearchIcon = styled(SearchIcon)`
  position: absolute;
  cursor: pointer;
  width: 1em;
  height: 1em;
  left: 1em;
  transform: translateY(-50%);
  top: 50%;
  background-size: contain;
  background-repeat: no-repeat;
  @media only screen and (max-width: ${({ theme }) => theme.breakpoints.medium}) {
    width: 1.2em;
    height: 1.2em;
  }
`;
const StyledSearchInputField = styled(SearchInputField)`
  padding: 0.5em 5em 0.5em 2.5em!important;
  ::placeholder {
    color: gray;
    font-weight: 300;
    font-size: 15px;
  }
`;
const StyledSearchLoadingIcon = styled(SearchLoadingIcon)`
  position: absolute;
  cursor: pointer;
  width: 1em;
  height: 1em;
  left: 1em;
  transform: translateY(-50%);
  top: 50%;
  background-size: contain;
  background-repeat: no-repeat;
  @media only screen and (max-width: ${({ theme }) => theme.breakpoints.medium}) {
    width: 1.2em;
    height: 1.2em;
  }
`
