; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [228 x i32] [
	i32 27584802, ; 0: SegmentedControl.FormsPlugin.Android => 0x1a4e922 => 13
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 61
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 95
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 90
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 77
	i32 102832730, ; 5: Plugin.SimpleAudioPlayer => 0x6211a5a => 11
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 77
	i32 134690465, ; 7: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 99
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 38
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 79
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 36
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 55
	i32 232815796, ; 12: System.Web.Services => 0xde07cb4 => 110
	i32 261689757, ; 13: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 41
	i32 278686392, ; 14: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 59
	i32 280482487, ; 15: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 53
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 28
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 20
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 57
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 18
	i32 441335492, ; 20: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 40
	i32 442521989, ; 21: Xamarin.Essentials => 0x1a605985 => 89
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 52
	i32 465846621, ; 23: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 24: System.dll => 0x1bff388e => 17
	i32 476646585, ; 25: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 53
	i32 486930444, ; 26: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 65
	i32 526420162, ; 27: System.Transactions.dll => 0x1f6088c2 => 104
	i32 527452488, ; 28: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 99
	i32 605376203, ; 29: System.IO.Compression.FileSystem => 0x24154ecb => 108
	i32 627609679, ; 30: Xamarin.AndroidX.CustomView => 0x2568904f => 46
	i32 639843206, ; 31: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 51
	i32 663517072, ; 32: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 84
	i32 666292255, ; 33: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 33
	i32 690569205, ; 34: System.Xml.Linq.dll => 0x29293ff5 => 26
	i32 691348768, ; 35: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 101
	i32 700284507, ; 36: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 96
	i32 720511267, ; 37: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 100
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 107
	i32 809851609, ; 39: System.Drawing.Common.dll => 0x30455ad9 => 106
	i32 843511501, ; 40: Xamarin.AndroidX.Print => 0x3246f6cd => 72
	i32 928116545, ; 41: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 95
	i32 956575887, ; 42: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 100
	i32 967690846, ; 43: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 57
	i32 974778368, ; 44: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 996170219, ; 45: Plugin.SimpleAudioPlayer.Abstractions => 0x3b6059eb => 10
	i32 1012816738, ; 46: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1035644815, ; 47: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 32
	i32 1042160112, ; 48: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 92
	i32 1052210849, ; 49: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 62
	i32 1084122840, ; 50: Xamarin.Kotlin.StdLib => 0x409e66d8 => 98
	i32 1094342857, ; 51: SegmentedControl.FormsPlugin.Abstractions.dll => 0x413a58c9 => 12
	i32 1098259244, ; 52: System => 0x41761b2c => 17
	i32 1175144683, ; 53: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 82
	i32 1178241025, ; 54: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 69
	i32 1204270330, ; 55: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 33
	i32 1254968684, ; 56: ExpandCalculator.Android.dll => 0x4acd4d6c => 0
	i32 1264511973, ; 57: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 78
	i32 1267360935, ; 58: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 83
	i32 1275534314, ; 59: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 101
	i32 1293217323, ; 60: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 48
	i32 1364015309, ; 61: System.IO => 0x514d38cd => 112
	i32 1365406463, ; 62: System.ServiceModel.Internals.dll => 0x516272ff => 111
	i32 1376866003, ; 63: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1395857551, ; 64: Xamarin.AndroidX.Media.dll => 0x5333188f => 66
	i32 1406073936, ; 65: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 42
	i32 1411638395, ; 66: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 22
	i32 1460219004, ; 67: Xamarin.Forms.Xaml => 0x57092c7c => 93
	i32 1461719063, ; 68: System.Security.Cryptography.OpenSsl => 0x57201017 => 24
	i32 1462112819, ; 69: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 70: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 31
	i32 1582372066, ; 71: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 47
	i32 1592978981, ; 72: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 73: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 64
	i32 1624863272, ; 74: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 86
	i32 1626988262, ; 75: Plugin.SimpleAudioPlayer.Abstractions.dll => 0x60f9dee6 => 10
	i32 1635184631, ; 76: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 51
	i32 1636350590, ; 77: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 45
	i32 1639515021, ; 78: System.Net.Http.dll => 0x61b9038d => 19
	i32 1657153582, ; 79: System.Runtime => 0x62c6282e => 23
	i32 1658241508, ; 80: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 80
	i32 1658251792, ; 81: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 94
	i32 1670060433, ; 82: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 41
	i32 1698840827, ; 83: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 97
	i32 1729485958, ; 84: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 37
	i32 1766324549, ; 85: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 79
	i32 1776026572, ; 86: System.Core.dll => 0x69dc03cc => 15
	i32 1788241197, ; 87: Xamarin.AndroidX.Fragment => 0x6a96652d => 52
	i32 1808609942, ; 88: Xamarin.AndroidX.Loader => 0x6bcd3296 => 64
	i32 1813058853, ; 89: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 98
	i32 1813201214, ; 90: Xamarin.Google.Android.Material => 0x6c13413e => 94
	i32 1818569960, ; 91: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 70
	i32 1867746548, ; 92: Xamarin.Essentials.dll => 0x6f538cf4 => 89
	i32 1877905662, ; 93: Plugin.MaterialDesignControls => 0x6fee90fe => 9
	i32 1878053835, ; 94: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 93
	i32 1879924135, ; 95: Xamarin.CommunityToolkit.Markup => 0x700d5da7 => 88
	i32 1885316902, ; 96: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 34
	i32 1919157823, ; 97: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 67
	i32 1983156543, ; 98: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 97
	i32 2011961780, ; 99: System.Buffers.dll => 0x77ec19b4 => 14
	i32 2019465201, ; 100: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 62
	i32 2055257422, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 58
	i32 2079903147, ; 102: System.Runtime.dll => 0x7bf8cdab => 23
	i32 2090596640, ; 103: System.Numerics.Vectors => 0x7c9bf920 => 21
	i32 2097448633, ; 104: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 54
	i32 2126786730, ; 105: Xamarin.Forms.Platform.Android => 0x7ec430aa => 91
	i32 2201107256, ; 106: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 102
	i32 2201231467, ; 107: System.Net.Http => 0x8334206b => 19
	i32 2217644978, ; 108: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 82
	i32 2244775296, ; 109: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 65
	i32 2256548716, ; 110: Xamarin.AndroidX.MultiDex => 0x8680336c => 67
	i32 2261435625, ; 111: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 56
	i32 2279755925, ; 112: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2287417322, ; 113: Plugin.SimpleAudioPlayer.dll => 0x885737ea => 11
	i32 2315684594, ; 114: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 29
	i32 2403452196, ; 115: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 50
	i32 2409053734, ; 116: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 71
	i32 2465532216, ; 117: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 40
	i32 2471841756, ; 118: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 119: Java.Interop.dll => 0x93918882 => 5
	i32 2501346920, ; 120: System.Data.DataSetExtensions => 0x95178668 => 105
	i32 2505896520, ; 121: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 61
	i32 2581819634, ; 122: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 83
	i32 2605712449, ; 123: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 102
	i32 2619180705, ; 124: ExpandCalculator => 0x9c1d86a1 => 3
	i32 2620871830, ; 125: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 45
	i32 2624644809, ; 126: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 49
	i32 2633051222, ; 127: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 59
	i32 2677814565, ; 128: Plugin.MaterialDesignControls.Android.dll => 0x9f9c3525 => 8
	i32 2693849962, ; 129: System.IO.dll => 0xa090e36a => 112
	i32 2701096212, ; 130: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 80
	i32 2732626843, ; 131: Xamarin.AndroidX.Activity => 0xa2e0939b => 28
	i32 2737747696, ; 132: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 31
	i32 2766581644, ; 133: Xamarin.Forms.Core => 0xa4e6af8c => 90
	i32 2770495804, ; 134: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 96
	i32 2778768386, ; 135: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 85
	i32 2779977773, ; 136: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 75
	i32 2810250172, ; 137: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 42
	i32 2819470561, ; 138: System.Xml.dll => 0xa80db4e1 => 25
	i32 2821294376, ; 139: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 75
	i32 2838095031, ; 140: SegmentedControl.FormsPlugin.Abstractions => 0xa929e4b7 => 12
	i32 2853208004, ; 141: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 85
	i32 2855708567, ; 142: Xamarin.AndroidX.Transition => 0xaa36a797 => 81
	i32 2903344695, ; 143: System.ComponentModel.Composition => 0xad0d8637 => 109
	i32 2905242038, ; 144: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916838712, ; 145: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 86
	i32 2919462931, ; 146: System.Numerics.Vectors.dll => 0xae037813 => 21
	i32 2921128767, ; 147: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 30
	i32 2978675010, ; 148: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 48
	i32 2986342291, ; 149: Xamanimation => 0xb1fff793 => 27
	i32 2996846495, ; 150: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 60
	i32 3004003036, ; 151: Plugin.MaterialDesignControls.dll => 0xb30d72dc => 9
	i32 3016983068, ; 152: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 78
	i32 3024354802, ; 153: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 55
	i32 3044182254, ; 154: FormsViewGroup => 0xb57288ee => 4
	i32 3057625584, ; 155: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 68
	i32 3111772706, ; 156: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3137288473, ; 157: ExpandCalculator.dll => 0xbaff3919 => 3
	i32 3204380047, ; 158: System.Data.dll => 0xbefef58f => 103
	i32 3211777861, ; 159: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 47
	i32 3247949154, ; 160: Mono.Security => 0xc197c562 => 113
	i32 3258312781, ; 161: Xamarin.AndroidX.CardView => 0xc235e84d => 37
	i32 3267021929, ; 162: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 35
	i32 3317135071, ; 163: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 46
	i32 3317144872, ; 164: System.Data => 0xc5b79d28 => 103
	i32 3340431453, ; 165: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 34
	i32 3345895724, ; 166: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 73
	i32 3346324047, ; 167: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 69
	i32 3353484488, ; 168: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 54
	i32 3353544232, ; 169: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 87
	i32 3362522851, ; 170: Xamarin.AndroidX.Core => 0xc86c06e3 => 44
	i32 3366347497, ; 171: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 172: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3395150330, ; 173: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 22
	i32 3403906625, ; 174: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 24
	i32 3404865022, ; 175: System.ServiceModel.Internals => 0xcaf21dfe => 111
	i32 3407215217, ; 176: Xamarin.CommunityToolkit => 0xcb15fa71 => 87
	i32 3429136800, ; 177: System.Xml => 0xcc6479a0 => 25
	i32 3430777524, ; 178: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 179: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 49
	i32 3445645929, ; 180: SegmentedControl.FormsPlugin.Android.dll => 0xcd606269 => 13
	i32 3476120550, ; 181: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 182: System.Transactions => 0xcfd0c798 => 104
	i32 3493954962, ; 183: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 39
	i32 3501239056, ; 184: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 35
	i32 3509114376, ; 185: System.Xml.Linq => 0xd128d608 => 26
	i32 3523711065, ; 186: Xamarin.CommunityToolkit.Markup.dll => 0xd2079059 => 88
	i32 3536029504, ; 187: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 91
	i32 3567349600, ; 188: System.ComponentModel.Composition.dll => 0xd4a16f60 => 109
	i32 3618140916, ; 189: Xamarin.AndroidX.Preference => 0xd7a872f4 => 71
	i32 3627220390, ; 190: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 72
	i32 3632359727, ; 191: Xamarin.Forms.Platform => 0xd881692f => 92
	i32 3633644679, ; 192: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 30
	i32 3641597786, ; 193: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 58
	i32 3672681054, ; 194: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 195: System.Web.Services.dll => 0xdb2009fe => 110
	i32 3682565725, ; 196: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 36
	i32 3684561358, ; 197: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 39
	i32 3689375977, ; 198: System.Drawing.Common => 0xdbe768e9 => 106
	i32 3706696989, ; 199: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 43
	i32 3718780102, ; 200: Xamarin.AndroidX.Annotation => 0xdda814c6 => 29
	i32 3724971120, ; 201: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 68
	i32 3748608112, ; 202: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 16
	i32 3758932259, ; 203: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 56
	i32 3779127884, ; 204: Plugin.MaterialDesignControls.Android => 0xe140ea4c => 8
	i32 3786282454, ; 205: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 38
	i32 3822602673, ; 206: Xamarin.AndroidX.Media => 0xe3d849b1 => 66
	i32 3829621856, ; 207: System.Numerics.dll => 0xe4436460 => 20
	i32 3877213230, ; 208: ExpandCalculator.Android => 0xe719942e => 0
	i32 3885922214, ; 209: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 81
	i32 3888767677, ; 210: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 73
	i32 3896760992, ; 211: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 44
	i32 3920810846, ; 212: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 108
	i32 3921031405, ; 213: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 84
	i32 3931092270, ; 214: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 70
	i32 3945713374, ; 215: System.Data.DataSetExtensions.dll => 0xeb2ecede => 105
	i32 3955647286, ; 216: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 32
	i32 3959773229, ; 217: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 60
	i32 4025784931, ; 218: System.Memory => 0xeff49a63 => 18
	i32 4047670059, ; 219: Xamanimation.dll => 0xf1428b2b => 27
	i32 4101593132, ; 220: Xamarin.AndroidX.Emoji2 => 0xf479582c => 50
	i32 4105002889, ; 221: Mono.Security.dll => 0xf4ad5f89 => 113
	i32 4151237749, ; 222: System.Core => 0xf76edc75 => 15
	i32 4182413190, ; 223: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 63
	i32 4213026141, ; 224: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 16
	i32 4256097574, ; 225: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 43
	i32 4260525087, ; 226: System.Buffers => 0xfdf2741f => 14
	i32 4292120959 ; 227: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 63
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [228 x i32] [
	i32 13, i32 61, i32 95, i32 90, i32 77, i32 11, i32 77, i32 99, ; 0..7
	i32 38, i32 79, i32 36, i32 55, i32 110, i32 41, i32 59, i32 53, ; 8..15
	i32 28, i32 20, i32 57, i32 18, i32 40, i32 89, i32 52, i32 7, ; 16..23
	i32 17, i32 53, i32 65, i32 104, i32 99, i32 108, i32 46, i32 51, ; 24..31
	i32 84, i32 33, i32 26, i32 101, i32 96, i32 100, i32 107, i32 106, ; 32..39
	i32 72, i32 95, i32 100, i32 57, i32 4, i32 10, i32 76, i32 32, ; 40..47
	i32 92, i32 62, i32 98, i32 12, i32 17, i32 82, i32 69, i32 33, ; 48..55
	i32 0, i32 78, i32 83, i32 101, i32 48, i32 112, i32 111, i32 76, ; 56..63
	i32 66, i32 42, i32 22, i32 93, i32 24, i32 107, i32 31, i32 47, ; 64..71
	i32 2, i32 64, i32 86, i32 10, i32 51, i32 45, i32 19, i32 23, ; 72..79
	i32 80, i32 94, i32 41, i32 97, i32 37, i32 79, i32 15, i32 52, ; 80..87
	i32 64, i32 98, i32 94, i32 70, i32 89, i32 9, i32 93, i32 88, ; 88..95
	i32 34, i32 67, i32 97, i32 14, i32 62, i32 58, i32 23, i32 21, ; 96..103
	i32 54, i32 91, i32 102, i32 19, i32 82, i32 65, i32 67, i32 56, ; 104..111
	i32 74, i32 11, i32 29, i32 50, i32 71, i32 40, i32 1, i32 5, ; 112..119
	i32 105, i32 61, i32 83, i32 102, i32 3, i32 45, i32 49, i32 59, ; 120..127
	i32 8, i32 112, i32 80, i32 28, i32 31, i32 90, i32 96, i32 85, ; 128..135
	i32 75, i32 42, i32 25, i32 75, i32 12, i32 85, i32 81, i32 109, ; 136..143
	i32 7, i32 86, i32 21, i32 30, i32 48, i32 27, i32 60, i32 9, ; 144..151
	i32 78, i32 55, i32 4, i32 68, i32 2, i32 3, i32 103, i32 47, ; 152..159
	i32 113, i32 37, i32 35, i32 46, i32 103, i32 34, i32 73, i32 69, ; 160..167
	i32 54, i32 87, i32 44, i32 5, i32 74, i32 22, i32 24, i32 111, ; 168..175
	i32 87, i32 25, i32 1, i32 49, i32 13, i32 6, i32 104, i32 39, ; 176..183
	i32 35, i32 26, i32 88, i32 91, i32 109, i32 71, i32 72, i32 92, ; 184..191
	i32 30, i32 58, i32 6, i32 110, i32 36, i32 39, i32 106, i32 43, ; 192..199
	i32 29, i32 68, i32 16, i32 56, i32 8, i32 38, i32 66, i32 20, ; 200..207
	i32 0, i32 81, i32 73, i32 44, i32 108, i32 84, i32 70, i32 105, ; 208..215
	i32 32, i32 60, i32 18, i32 27, i32 50, i32 113, i32 15, i32 63, ; 216..223
	i32 16, i32 43, i32 14, i32 63 ; 224..227
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
