; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [116 x i32] [
	i32 27584802, ; 0: SegmentedControl.FormsPlugin.Android => 0x1a4e922 => 13
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 47
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 42
	i32 102832730, ; 3: Plugin.SimpleAudioPlayer => 0x6211a5a => 11
	i32 134690465, ; 4: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 51
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 37
	i32 209399409, ; 6: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 22
	i32 318968648, ; 7: Xamarin.AndroidX.Activity.dll => 0x13031348 => 19
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 16
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 31
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 41
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 29
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 13: System.dll => 0x1bff388e => 15
	i32 527452488, ; 14: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 51
	i32 627609679, ; 15: Xamarin.AndroidX.CustomView => 0x2568904f => 27
	i32 691348768, ; 16: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 53
	i32 700284507, ; 17: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 48
	i32 720511267, ; 18: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 52
	i32 809851609, ; 19: System.Drawing.Common.dll => 0x30455ad9 => 55
	i32 928116545, ; 20: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 47
	i32 956575887, ; 21: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 52
	i32 967690846, ; 22: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 31
	i32 974778368, ; 23: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 996170219, ; 24: Plugin.SimpleAudioPlayer.Abstractions => 0x3b6059eb => 10
	i32 1012816738, ; 25: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 36
	i32 1035644815, ; 26: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 21
	i32 1042160112, ; 27: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 44
	i32 1052210849, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 33
	i32 1084122840, ; 29: Xamarin.Kotlin.StdLib => 0x409e66d8 => 50
	i32 1094342857, ; 30: SegmentedControl.FormsPlugin.Abstractions.dll => 0x413a58c9 => 12
	i32 1098259244, ; 31: System => 0x41761b2c => 15
	i32 1254968684, ; 32: ExpandCalculator.Android.dll => 0x4acd4d6c => 0
	i32 1275534314, ; 33: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 53
	i32 1293217323, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 28
	i32 1365406463, ; 35: System.ServiceModel.Internals.dll => 0x516272ff => 56
	i32 1376866003, ; 36: Xamarin.AndroidX.SavedState => 0x52114ed3 => 36
	i32 1406073936, ; 37: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 24
	i32 1460219004, ; 38: Xamarin.Forms.Xaml => 0x57092c7c => 45
	i32 1469204771, ; 39: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 20
	i32 1592978981, ; 40: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 41: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 34
	i32 1626988262, ; 42: Plugin.SimpleAudioPlayer.Abstractions.dll => 0x60f9dee6 => 10
	i32 1636350590, ; 43: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 26
	i32 1639515021, ; 44: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 45: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 46
	i32 1698840827, ; 46: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 49
	i32 1729485958, ; 47: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 23
	i32 1766324549, ; 48: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 37
	i32 1776026572, ; 49: System.Core.dll => 0x69dc03cc => 14
	i32 1788241197, ; 50: Xamarin.AndroidX.Fragment => 0x6a96652d => 29
	i32 1808609942, ; 51: Xamarin.AndroidX.Loader => 0x6bcd3296 => 34
	i32 1813058853, ; 52: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 50
	i32 1813201214, ; 53: Xamarin.Google.Android.Material => 0x6c13413e => 46
	i32 1867746548, ; 54: Xamarin.Essentials.dll => 0x6f538cf4 => 41
	i32 1877905662, ; 55: Plugin.MaterialDesignControls => 0x6fee90fe => 9
	i32 1878053835, ; 56: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 45
	i32 1879924135, ; 57: Xamarin.CommunityToolkit.Markup => 0x700d5da7 => 40
	i32 1983156543, ; 58: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 49
	i32 2019465201, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 33
	i32 2055257422, ; 60: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 32
	i32 2097448633, ; 61: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 30
	i32 2126786730, ; 62: Xamarin.Forms.Platform.Android => 0x7ec430aa => 43
	i32 2201107256, ; 63: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 54
	i32 2201231467, ; 64: System.Net.Http => 0x8334206b => 1
	i32 2279755925, ; 65: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 35
	i32 2287417322, ; 66: Plugin.SimpleAudioPlayer.dll => 0x885737ea => 11
	i32 2475788418, ; 67: Java.Interop.dll => 0x93918882 => 5
	i32 2605712449, ; 68: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 54
	i32 2619180705, ; 69: ExpandCalculator => 0x9c1d86a1 => 3
	i32 2620871830, ; 70: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 26
	i32 2677814565, ; 71: Plugin.MaterialDesignControls.Android.dll => 0x9f9c3525 => 8
	i32 2732626843, ; 72: Xamarin.AndroidX.Activity => 0xa2e0939b => 19
	i32 2737747696, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 20
	i32 2766581644, ; 74: Xamarin.Forms.Core => 0xa4e6af8c => 42
	i32 2770495804, ; 75: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 48
	i32 2778768386, ; 76: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 38
	i32 2810250172, ; 77: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 24
	i32 2819470561, ; 78: System.Xml.dll => 0xa80db4e1 => 17
	i32 2838095031, ; 79: SegmentedControl.FormsPlugin.Abstractions => 0xa929e4b7 => 12
	i32 2853208004, ; 80: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 38
	i32 2905242038, ; 81: mscorlib.dll => 0xad2a79b6 => 7
	i32 2978675010, ; 82: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 28
	i32 2986342291, ; 83: Xamanimation => 0xb1fff793 => 18
	i32 3004003036, ; 84: Plugin.MaterialDesignControls.dll => 0xb30d72dc => 9
	i32 3044182254, ; 85: FormsViewGroup => 0xb57288ee => 4
	i32 3111772706, ; 86: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3137288473, ; 87: ExpandCalculator.dll => 0xbaff3919 => 3
	i32 3247949154, ; 88: Mono.Security => 0xc197c562 => 57
	i32 3258312781, ; 89: Xamarin.AndroidX.CardView => 0xc235e84d => 23
	i32 3317135071, ; 90: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 27
	i32 3353484488, ; 91: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 30
	i32 3353544232, ; 92: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 39
	i32 3362522851, ; 93: Xamarin.AndroidX.Core => 0xc86c06e3 => 25
	i32 3366347497, ; 94: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 95: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 35
	i32 3404865022, ; 96: System.ServiceModel.Internals => 0xcaf21dfe => 56
	i32 3407215217, ; 97: Xamarin.CommunityToolkit => 0xcb15fa71 => 39
	i32 3429136800, ; 98: System.Xml => 0xcc6479a0 => 17
	i32 3445645929, ; 99: SegmentedControl.FormsPlugin.Android.dll => 0xcd606269 => 13
	i32 3476120550, ; 100: Mono.Android => 0xcf3163e6 => 6
	i32 3523711065, ; 101: Xamarin.CommunityToolkit.Markup.dll => 0xd2079059 => 40
	i32 3536029504, ; 102: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 43
	i32 3632359727, ; 103: Xamarin.Forms.Platform => 0xd881692f => 44
	i32 3641597786, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 32
	i32 3672681054, ; 105: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3682565725, ; 106: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 22
	i32 3689375977, ; 107: System.Drawing.Common => 0xdbe768e9 => 55
	i32 3779127884, ; 108: Plugin.MaterialDesignControls.Android => 0xe140ea4c => 8
	i32 3829621856, ; 109: System.Numerics.dll => 0xe4436460 => 16
	i32 3877213230, ; 110: ExpandCalculator.Android => 0xe719942e => 0
	i32 3896760992, ; 111: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 25
	i32 3955647286, ; 112: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 21
	i32 4047670059, ; 113: Xamanimation.dll => 0xf1428b2b => 18
	i32 4105002889, ; 114: Mono.Security.dll => 0xf4ad5f89 => 57
	i32 4151237749 ; 115: System.Core => 0xf76edc75 => 14
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [116 x i32] [
	i32 13, i32 47, i32 42, i32 11, i32 51, i32 37, i32 22, i32 19, ; 0..7
	i32 16, i32 31, i32 41, i32 29, i32 7, i32 15, i32 51, i32 27, ; 8..15
	i32 53, i32 48, i32 52, i32 55, i32 47, i32 52, i32 31, i32 4, ; 16..23
	i32 10, i32 36, i32 21, i32 44, i32 33, i32 50, i32 12, i32 15, ; 24..31
	i32 0, i32 53, i32 28, i32 56, i32 36, i32 24, i32 45, i32 20, ; 32..39
	i32 2, i32 34, i32 10, i32 26, i32 1, i32 46, i32 49, i32 23, ; 40..47
	i32 37, i32 14, i32 29, i32 34, i32 50, i32 46, i32 41, i32 9, ; 48..55
	i32 45, i32 40, i32 49, i32 33, i32 32, i32 30, i32 43, i32 54, ; 56..63
	i32 1, i32 35, i32 11, i32 5, i32 54, i32 3, i32 26, i32 8, ; 64..71
	i32 19, i32 20, i32 42, i32 48, i32 38, i32 24, i32 17, i32 12, ; 72..79
	i32 38, i32 7, i32 28, i32 18, i32 9, i32 4, i32 2, i32 3, ; 80..87
	i32 57, i32 23, i32 27, i32 30, i32 39, i32 25, i32 5, i32 35, ; 88..95
	i32 56, i32 39, i32 17, i32 13, i32 6, i32 40, i32 43, i32 44, ; 96..103
	i32 32, i32 6, i32 22, i32 55, i32 8, i32 16, i32 0, i32 25, ; 104..111
	i32 21, i32 18, i32 57, i32 14 ; 112..115
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
