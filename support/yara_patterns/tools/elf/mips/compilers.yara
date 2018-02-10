import "elf"

rule gcc_android_ndk_r8_1
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.4.3"
		extra = "Android NDK r8"
		pattern = "0?001C3C?0??9C2721E09903E0FFBD271C00BFAF1000BCAF1880828F?0??42900D00401400000000??8?828F07004010000000001C80828F0000448C??8?998F09F82003000000001000BC8F1880828F01000324?0??43A01C00BF8F2000BD270800E003"
	strings:
		$1 = { 0? 00 1C 3C ?0 ?? 9C 27 21 E0 99 03 E0 FF BD 27 1C 00 BF AF 10 00 BC AF 18 80 82 8F ?0 ?? 42 90 0D 00 40 14 00 00 00 00 ?? 8? 82 8F 07 00 40 10 00 00 00 00 1C 80 82 8F 00 00 44 8C ?? 8? 99 8F 09 F8 20 03 00 00 00 00 10 00 BC 8F 18 80 82 8F 01 00 03 24 ?0 ?? 43 A0 1C 00 BF 8F 20 00 BD 27 08 00 E0 03 }
	condition:
		$1 at elf.entry_point
}

rule gcc_android_ndk_r8_2
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.4.3"
		extra = "Android NDK r8"
		pattern = "0100110400000000??001C3C?8??9C2721E09F032120A003212800001880868F1C80878F?8??E724E0FFBD27??8?998F0800200300000000?0??0?00?8??0?00?0??0?00?C??0?00?4??0?00??001C3C?4??9C2721E09903E0FFBD271C00BFAF1000BCAF"
	strings:
		$1 = { 01 00 11 04 00 00 00 00 ?? 00 1C 3C ?8 ?? 9C 27 21 E0 9F 03 21 20 A0 03 21 28 00 00 18 80 86 8F 1C 80 87 8F ?8 ?? E7 24 E0 FF BD 27 ?? 8? 99 8F 08 00 20 03 00 00 00 00 ?0 ?? 0? 00 ?8 ?? 0? 00 ?0 ?? 0? 00 ?C ?? 0? 00 ?4 ?? 0? 00 ?? 00 1C 3C ?4 ?? 9C 27 21 E0 99 03 E0 FF BD 27 1C 00 BF AF 10 00 BC AF }
	condition:
		$1 at elf.entry_point
}

rule gcc_454
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.5.4"
		pattern = "2100E0030100110400000000??001C3C?0??9C2721F80000??8?848F0000A58F0400A627F8FF012424E8A103E0FFBD27??8?878F??8?888F000000001000A8AF1400A2AF1800BDAF??8?998F0000000009F8200300000000FFFF001000000000D0FFBD27"
	strings:
		$1 = { 21 00 E0 03 01 00 11 04 00 00 00 00 ?? 00 1C 3C ?0 ?? 9C 27 21 F8 00 00 ?? 8? 84 8F 00 00 A5 8F 04 00 A6 27 F8 FF 01 24 24 E8 A1 03 E0 FF BD 27 ?? 8? 87 8F ?? 8? 88 8F 00 00 00 00 10 00 A8 AF 14 00 A2 AF 18 00 BD AF ?? 8? 99 8F 00 00 00 00 09 F8 20 03 00 00 00 00 FF FF 00 10 00 00 00 00 D0 FF BD 27 }
	condition:
		$1 at elf.entry_point
}

rule gcc_452_xc32
{
	meta:
		tool = "C"
		name = "XC32 GCC"
		version = "4.5.2"
		extra = "MPLAB XC32 Compiler v1.21 for PIC32"
		pattern = "C0BF1A3C10005A27080040030000000000601A40C0045A7F05004013000000000?9D1A3C????5A2708004003000000000?A01D3CF??FBD270?A01C3C?0??9C270260094020582001801E2A7D8449497D02608940C000000000E0DC4102608B400?9D083C"
	strings:
		$1 = { C0 BF 1A 3C 10 00 5A 27 08 00 40 03 00 00 00 00 00 60 1A 40 C0 04 5A 7F 05 00 40 13 00 00 00 00 0? 9D 1A 3C ?? ?? 5A 27 08 00 40 03 00 00 00 00 0? A0 1D 3C F? ?F BD 27 0? A0 1C 3C ?0 ?? 9C 27 02 60 09 40 20 58 20 01 80 1E 2A 7D 84 49 49 7D 02 60 89 40 C0 00 00 00 00 E0 DC 41 02 60 8B 40 0? 9D 08 3C }
	condition:
		$1 at elf.entry_point
}

rule gcc_435_psp
{
	meta:
		tool = "C"
		name = "GCC PSP"
		version = "4.3.5"
		pattern = "0000033CF0FFBD27000062240800B2AF0400B1AF0C00BFAF0000B0AF21888000050040102190A0000000629400104230140040149008033C9008023C9008033C800150241800632409F86000000000000000023C00004224110040102120200209F80002"
	strings:
		$1 = { 00 00 03 3C F0 FF BD 27 00 00 62 24 08 00 B2 AF 04 00 B1 AF 0C 00 BF AF 00 00 B0 AF 21 88 80 00 05 00 40 10 21 90 A0 00 00 00 62 94 00 10 42 30 14 00 40 14 90 08 03 3C 90 08 02 3C 90 08 03 3C 80 01 50 24 18 00 63 24 09 F8 60 00 00 00 00 00 00 00 02 3C 00 00 42 24 11 00 40 10 21 20 20 02 09 F8 00 02 }
	condition:
		$1 at elf.entry_point
}

rule llvm_32
{
	meta:
		tool = "C"
		name = "LLVM"
		version = "3.2"
		pattern = "3C1C00??279C???00000F8213C04004?2484????8FA5000027A600042401FFF803A1E82427BDFFE03C07004?24E7????3C08004?2508????AFA80010AFA20014AFBD00180C??????000000001000FFFF000000000000000000000000000000003C0400"
	strings:
		$1 = { 3C 1C 00 ?? 27 9C ?? ?0 00 00 F8 21 3C 04 00 4? 24 84 ?? ?? 8F A5 00 00 27 A6 00 04 24 01 FF F8 03 A1 E8 24 27 BD FF E0 3C 07 00 4? 24 E7 ?? ?? 3C 08 00 4? 25 08 ?? ?? AF A8 00 10 AF A2 00 14 AF BD 00 18 0C ?? ?? ?? 00 00 00 00 10 00 FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3C 04 00 }
	condition:
		$1 at elf.entry_point
}

rule gc
{
	meta:
		tool = "C"
		name = "gc"
		language = "Go"
		pattern = "0801????0000000000000000000000008FA4000023A500040801????000000003C01000?2421????00200008000000008FA40004240210960000000C0000003403E00008000000008FA400048FA500088FA6000C24020FA50000000C10E0000200000000"
	strings:
		$1 = { 08 01 ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 8F A4 00 00 23 A5 00 04 08 01 ?? ?? 00 00 00 00 3C 01 00 0? 24 21 ?? ?? 00 20 00 08 00 00 00 00 8F A4 00 04 24 02 10 96 00 00 00 0C 00 00 00 34 03 E0 00 08 00 00 00 00 8F A4 00 04 8F A5 00 08 8F A6 00 0C 24 02 0F A5 00 00 00 0C 10 E0 00 02 00 00 00 00 }
	condition:
		$1 at elf.entry_point
}

rule gc_le
{
	meta:
		tool = "C"
		name = "gc"
		language = "Go"
		pattern = "????01080000000000000000000000000000A48F0400A523????0108000000000?00013C????212408002000000000000400A48F961002240C000000340000000800E003000000000400A48F0800A58F0C00A68FA50F02240C0000000200E01000000000"
	strings:
		$1 = { ?? ?? 01 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 A4 8F 04 00 A5 23 ?? ?? 01 08 00 00 00 00 0? 00 01 3C ?? ?? 21 24 08 00 20 00 00 00 00 00 04 00 A4 8F 96 10 02 24 0C 00 00 00 34 00 00 00 08 00 E0 03 00 00 00 00 04 00 A4 8F 08 00 A5 8F 0C 00 A6 8F A5 0F 02 24 0C 00 00 00 02 00 E0 10 00 00 00 00 }
	condition:
		$1 at elf.entry_point
}
