" Vim syntax file
" Language:         HTCondor Configuration file
" Maintainer:       Carmelo Pellegrino <carmelo.pellegrino@cnaf.infn.it>
" Latest Revision:  2026-02-27

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim
syn case ignore

" HTC constants
syn region htcVariable     start="\$("  end=")" end=/$/ keepend contained
syn region htcString       start=/"/  end=/"/  end=/$/  skip=/\\./ contains=htcVariable
syn region htcString       start=/`/  end=/`/  end=/$/  skip=/\\./ contains=htcVariable
syn region htcString       start=/\(s\)\@<!'\(s \|t \)\@!/  end=/'/  end=/$/  skip=/\\./ contains=htcVariable

syn keyword htcBool        true false undefined yes no
syn match   htcNumber      display '\<\d\+\>'
syn match   htcNumberFloat display '\<\d\+\.\d\+\([eE][+-]\?\d\+\)\?\>'

" HTC universe
syn keyword htcUniverse    vanilla
syn keyword htcUniverse    scheduler
syn keyword htcUniverse    local
syn keyword htcUniverse    grid
syn keyword htcUniverse    java
syn keyword htcUniverse    vm
syn keyword htcUniverse    parallel
syn keyword htcUniverse    docker
syn keyword htcUniverse    container
syn keyword htcTransOut    ON_EXIT ON_EXIT_OR_EVICT ON_SUCCESS

syn cluster htcValues contains=htcString,htcNumber,htcNumberFloat,htcBool,htcUniverse,htcTransOut,htcVariable,htcInvalidComment

syn region htcValue oneline contains=@htcValues start=/=/  end=/$/ transparent

" Comments
syn region htcComment oneline start=/^#/ end=/$/

" Invalid comments
syn region htcInvalidComment oneline start=/^.?#/ end=/$/

" HTC Knob
syn keyword htcKnob arguments
syn match   htcKnob display 'request_[a-zA-Z\.]\+'
syn match   htcCustomKnob display '^+[a-zA-Z0-9]\+'

" HTC Machine ClassAds
syn keyword htcMachineClassAd Machine

" HTC Job ClassAds
syn keyword htcJobClassAd RemoteHost
syn keyword htcJobClassAd LastRemoteHost

" Highlight Links
hi def link htcNumber           Number
hi def link htcNumberFloat      Float

hi def link htcComment          Comment
hi def link htcInvalidComment   DiffDelete

hi def link htcBool             Boolean
hi def link htcString           String

hi def link htcUrl              Underlined
hi def link htcIPv4             Underlined
hi def link htcIPv6             Underlined
hi def link htcPath             Keyword

hi def link htcKnob             Structure
hi def link htcMachineClassAd   Added
hi def link htcJobClassAd       Function
hi def link htcCustomKnob       Keyword

hi def link htcUniverse         Identifier
hi def link htcTransOut         Identifier
hi def link htcVariable         Statement

let b:current_syntax = "htc"

let &cpo = s:cpo_save
unlet s:cpo_save
