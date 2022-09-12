function! Glualint_callback(bufnr, lines) abort
    " let pattern = '^\(\[\.\/\w\]\+\): \[\(E|W\)\w\+\] line \(\d\+\), column \(\d\+\) - line \(\d\+\), column \(\d\+\): \(.*\)$'
    let pattern = '^.\{-}: [\(\w\)\w\+\] line \(\d\+\), column \(\d\+\) - line \(\d\+\), column \(\d\+\): \(.*\)$'
    let result = []

    for line in a:lines
        let matches = matchlist(line, pattern)
        let element = {
                    \ 'text': matches[6],
                    \ 'lnum': matches[2],
                    \ 'col': matches[3],
                    \ 'end_lnum': matches[4],
                    \ 'end_col': matches[5],
                    \ 'type': matches[1],
                    \ }

        call add(result, element)
    endfor

    return result
endfunction

" Add GLuaFixer to Ale
call ale#linter#Define('lua', {
\     'name': 'GLuaFixer',
\     'alias': ['glualint'],
\     'executable': 'glualint',
\     'command': '%e lint --stdin',
\     'callback': 'Glualint_callback',
\     'lint_file': 0,
\ })
