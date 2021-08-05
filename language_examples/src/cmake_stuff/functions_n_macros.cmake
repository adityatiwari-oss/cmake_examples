function(
    func_FOO 
    _arg_value 
    _arg_reference)

    #Local Variable FUNC_VAR 
    set(FUNC_VAR "I live only in this function")
    message(STATUS "${Green}Varible in func ------------------ _arg_value = " ${_arg_value} ${ColourReset} )
    message(STATUS "${Green}Varible in func ------------------ _arg_reference NAME = " ${_arg_reference}${ColourReset} )
    message(STATUS "${Green}Varible in func ------------------ _arg_reference VALUE = " ${${_arg_reference}} ${ColourReset} )
    message(STATUS "${Green}Varible in func ------------------ FUNC_VAR = " ${FUNC_VAR}${ColourReset} )
    set(${_arg_reference} "I an going out" PARENT_SCOPE)
endfunction()        

macro(macro_mac)
# MACRO_VAR will be available in parent scop
set(MACRO_VAR "I was created in a macro")
endmacro()
