.class public Landroid/os/perfdebug/VsyncFrame;
.super Ljava/lang/Object;
.source "VsyncFrame.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/os/perfdebug/VsyncFrame;
    .registers 1

    .line 12
    const-class v0, Landroid/os/perfdebug/VsyncFrame;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/VsyncFrame;

    return-object v0
.end method


# virtual methods
.method public blacklist updateCurFrame(I)V
    .registers 2
    .param p1, "frame"    # I

    .line 16
    return-void
.end method
