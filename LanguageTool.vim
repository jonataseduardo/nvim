""Grammar checker

let g:languagetool_jar='$HOME/apps/languagetool/languagetool-standalone/target/LanguageTool-5.2-SNAPSHOT/LanguageTool-5.2-SNAPSHOT/languagetool-commandline.jar'

nnoremap <leader>ll :LanguageToolCheck<cr>
nnoremap <leader>lc :LanguageToolClear<cr>
vnoremap <leader>ll :LanguageToolCheck<cr>
vnoremap <leader>lc :LanguageToolClear<cr>
