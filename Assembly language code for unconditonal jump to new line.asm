
include 'emu8086.inc'
.stack 100h
.data
.code
main proc        
    print 'Hello'
    call newline
    print 'world'
    call newline
    print 'Bscs'
    call newline
    print '3D'
    main endp
newline proc
    print 10
    print 13
    newline endp
    ret
end main
