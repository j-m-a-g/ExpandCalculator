package crc646a48d2299a34ff42;


public class CustomFrameRenderer
	extends crc64ee486da937c010f4.FrameRenderer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Plugin.MaterialDesignControls.Android.CustomFrameRenderer, Plugin.MaterialDesignControls.Android", CustomFrameRenderer.class, __md_methods);
	}


	public CustomFrameRenderer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == CustomFrameRenderer.class) {
			mono.android.TypeManager.Activate ("Plugin.MaterialDesignControls.Android.CustomFrameRenderer, Plugin.MaterialDesignControls.Android", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public CustomFrameRenderer (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == CustomFrameRenderer.class) {
			mono.android.TypeManager.Activate ("Plugin.MaterialDesignControls.Android.CustomFrameRenderer, Plugin.MaterialDesignControls.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public CustomFrameRenderer (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == CustomFrameRenderer.class) {
			mono.android.TypeManager.Activate ("Plugin.MaterialDesignControls.Android.CustomFrameRenderer, Plugin.MaterialDesignControls.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
