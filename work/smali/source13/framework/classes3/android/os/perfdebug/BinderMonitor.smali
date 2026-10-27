.class public Landroid/os/perfdebug/BinderMonitor;
.super Ljava/lang/Object;
.source "BinderMonitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/os/perfdebug/BinderMonitor;
    .registers 1

    .line 15
    const-class v0, Landroid/os/perfdebug/BinderMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/BinderMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist monitorBinderBegin(II)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "flags"    # I

    .line 20
    return-void
.end method

.method public blacklist monitorBinderEnd(Landroid/os/BinderProxy;II)V
    .registers 4
    .param p1, "binderProxy"    # Landroid/os/BinderProxy;
    .param p2, "code"    # I
    .param p3, "flags"    # I

    .line 24
    return-void
.end method
