# ova fja u pcb.hpp ima 2 args: jedan se prenosi u a0, drugi u a1
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    # &old->context u a0
    # &running->context u a1

    // cuvaju se stare vrednosti u kontextu old niti
    sd ra, 0*8(a0)
    sd sp, 1*8(a0)

    // loaduju se nove vrednosti iz a1(context nove)
    ld ra, 0*8(a1)
    ld sp, 1*8(a1)

    ret