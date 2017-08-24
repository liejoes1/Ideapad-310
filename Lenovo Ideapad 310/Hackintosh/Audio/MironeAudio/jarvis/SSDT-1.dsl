/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /var/folders/k8/hndwz7f952z1fhhj3gwdr40r0000gn/T/BD18CF86-A7CB-4B5D-9956-B1A0D669A833-406-0000002D95A9A774/SSDT-1.aml, Sat Jul 22 20:38:17 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000029F (671)
 *     Revision         0x02
 *     Checksum         0x79
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.I2C0.DFUD, DeviceObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (GPBS, UnknownObj)    // (from opcode)
    External (SDS0, UnknownObj)    // (from opcode)
    External (SHAP, UnknownObj)    // (from opcode)
    External (USBH, UnknownObj)    // (from opcode)

    Scope (\)
    {
        Device (SHAD)
        {
            Name (_HID, EisaId ("INT33D0"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((SDS0 & One) || (USBH & One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (PGCE, Zero)
                Name (PGCD, Zero)
                Name (PGCG, 0x2E)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PGCV, Zero)
                Name (DFUV, Zero)
                If (Arg0 == ToUUID ("03c868d5-563f-42a8-9f57-9a18d949b7cb"))
                {
                    If (SHAP == One)
                    {
                        PGCG = 0x3A
                    }

                    If (ToInteger (Arg1) >= One)
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (Arg2)
                            If (_T_0 == Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x0F                                           
                                })
                            }
                            ElseIf (_T_0 == One)
                            {
                                PGCE = DerefOf (Arg3 [Zero])
                                PGCD = DerefOf (Arg3 [One])
                                OLDV = \_SB.GGOV (0x02010016)
                                \_SB.SGOV (0x02010016, PGCE)
                                If (PGCD > Zero)
                                {
                                    Sleep (PGCD)
                                    \_SB.GGOV (0x02010016)
                                    OLDV
                                }

                                If (\_SB.GGOV (0x02010016) == One)
                                {
                                    Sleep (0x96)
                                    If (\_SB.GGOV (0x02010014) == One) {}
                                    Else
                                    {
                                        Notify (\_SB.PCI0.I2C0.DFUD, One)
                                    }
                                }

                                Return (Zero)
                            }
                            ElseIf (_T_0 == 0x02)
                            {
                                DFUE = DerefOf (Arg3 [Zero])
                                DFUD = DerefOf (Arg3 [One])
                                OLDV = \_SB.GGOV (0x02010014)
                                \_SB.GGOV (0x02010014)
                                DFUE
                                If (DFUD > Zero)
                                {
                                    Sleep (DFUD)
                                    \_SB.GGOV (0x02010014)
                                    OLDV
                                }

                                Return (Zero)
                            }
                            ElseIf (_T_0 == 0x03)
                            {
                                DFUV = \_SB.GGOV (0x02010014)
                                PGCV = \_SB.GGOV (0x02010016)
                                Return (Package (0x02)
                                {
                                    PGCV, 
                                    DFUV
                                })
                            }

                            Break
                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }
}

