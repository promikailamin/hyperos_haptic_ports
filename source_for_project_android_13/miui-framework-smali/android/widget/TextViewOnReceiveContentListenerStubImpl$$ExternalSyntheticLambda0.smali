.class public final synthetic Landroid/widget/TextViewOnReceiveContentListenerStubImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/ref/WeakReference;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-static {p1, p2}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->lambda$getDragViews$0(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)I

    move-result p1

    return p1
.end method
