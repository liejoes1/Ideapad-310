/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /var/folders/k8/hndwz7f952z1fhhj3gwdr40r0000gn/T/BD18CF86-A7CB-4B5D-9956-B1A0D669A833-406-0000002D95A9A774/SSDT-4.aml, Sat Jul 22 20:38:17 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000051E (1310)
 *     Revision         0x02
 *     Checksum         0x59
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.GEXP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PCI0.SAT0, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (RCG0, IntObj)    // (from opcode)
    External (ZPOD, UnknownObj)    // (from opcode)

    If ((RCG0 & One) && One)
    {
        Scope (\_SB.PCI0.SAT0.PRT1)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66"))
                {
                    While (One)
                    {
                        _T_0 = ToInteger (Arg2)
                        If (_T_0 == Zero)
                        {
                            While (One)
                            {
                                _T_1 = ToInteger (Arg1)
                                If (_T_1 == One)
                                {
                                    While (One)
                                    {
                                        _T_2 = ToInteger (ZPOD)
                                        If (Match (Package (0x03)
                                                        {
                                                            One, 
                                                            0x02, 
                                                            0x03
                                                        }, MEQ, _T_2, MTR, Zero, Zero) != Ones)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                                Break
                            }
                        }
                        ElseIf (_T_0 == One)
                        {
                            Return (One)
                        }
                        ElseIf (_T_0 == 0x02)
                        {
                            While (One)
                            {
                                _T_3 = ToInteger (ZPOD)
                                If (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_3, MTR, Zero, Zero) != Ones)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                ElseIf (Match (Package (0x02)
                                                {
                                                    0x02, 
                                                    0x03
                                                }, MEQ, _T_3, MTR, Zero, Zero) != Ones)
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                                Break
                            }

                            Return (One)
                        }
                        ElseIf (_T_0 == 0x03)
                        {
                            While (One)
                            {
                                _T_4 = ToInteger (ZPOD)
                                If (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_4, MTR, Zero, Zero) != Ones)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                ElseIf (Match (Package (0x01)
                                                {
                                                    0x02
                                                }, MEQ, _T_4, MTR, Zero, Zero) != Ones)
                                {
                                    If (\_SB.GGIV (0x01040001) == Zero)
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                ElseIf (Match (Package (0x01)
                                                {
                                                    0x03
                                                }, MEQ, _T_4, MTR, Zero, Zero) != Ones)
                                {
                                    If (\_SB.GGIV (0x01050000) == Zero)
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                                Break
                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }
        }

        Scope (\_SB.PCI0.SAT0.PRT3)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66"))
                {
                    While (One)
                    {
                        _T_0 = ToInteger (Arg2)
                        If (_T_0 == Zero)
                        {
                            While (One)
                            {
                                _T_1 = ToInteger (Arg1)
                                If (_T_1 == One)
                                {
                                    While (One)
                                    {
                                        _T_2 = ToInteger (ZPOD)
                                        If (Match (Package (0x03)
                                                        {
                                                            One, 
                                                            0x02, 
                                                            0x03
                                                        }, MEQ, _T_2, MTR, Zero, Zero) != Ones)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                                Break
                            }
                        }
                        ElseIf (_T_0 == One)
                        {
                            Return (One)
                        }
                        ElseIf (_T_0 == 0x02)
                        {
                            While (One)
                            {
                                _T_3 = ToInteger (ZPOD)
                                If (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_3, MTR, Zero, Zero) != Ones)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                ElseIf (Match (Package (0x02)
                                                {
                                                    0x02, 
                                                    0x03
                                                }, MEQ, _T_3, MTR, Zero, Zero) != Ones)
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                                Break
                            }

                            Return (One)
                        }
                        ElseIf (_T_0 == 0x03)
                        {
                            While (One)
                            {
                                _T_4 = ToInteger (ZPOD)
                                If (Match (Package (0x01)
                                                {
                                                    One
                                                }, MEQ, _T_4, MTR, Zero, Zero) != Ones)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                ElseIf (Match (Package (0x01)
                                                {
                                                    0x02
                                                }, MEQ, _T_4, MTR, Zero, Zero) != Ones)
                                {
                                    If (\_SB.GGIV (0x01040001) == Zero)
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                ElseIf (Match (Package (0x01)
                                                {
                                                    0x03
                                                }, MEQ, _T_4, MTR, Zero, Zero) != Ones)
                                {
                                    If (\_SB.GGIV (0x01050000) == Zero)
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                                Break
                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_E02, 0, Serialized)  // _Exx: Edge-Triggered GPE
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = ToInteger (ZPOD)
                    If (Match (Package (0x02)
                                    {
                                        0x02, 
                                        0x03
                                    }, MEQ, _T_0, MTR, Zero, Zero) != Ones)
                    {
                        If (\_SB.GGIV (0x01040001) == Zero)
                        {
                            \_SB.SGOV (0x01060001, One)
                        }

                        Notify (\_SB.PCI0.SAT0, 0x81)
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }
            }
        }
    }
}

