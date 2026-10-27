.class public Landroid/os/BinderStub;
.super Ljava/lang/Object;
.source "BinderStub.java"


# static fields
.field public static final blacklist ENABLED:Z

.field private static final blacklist INSTANCE:Landroid/os/BinderStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 10
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 11
    const-string/jumbo v0, "persist.sys.disable_binder_tracker"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    nop

    :goto_11
    sput-boolean v1, Landroid/os/BinderStub;->ENABLED:Z

    .line 12
    if-eqz v1, :cond_1e

    const-class v0, Landroid/os/BinderStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BinderStub;

    goto :goto_23

    :cond_1e
    new-instance v0, Landroid/os/BinderStub;

    invoke-direct {v0}, Landroid/os/BinderStub;-><init>()V

    :goto_23
    sput-object v0, Landroid/os/BinderStub;->INSTANCE:Landroid/os/BinderStub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/os/BinderStub;
    .registers 1

    .line 15
    sget-object v0, Landroid/os/BinderStub;->INSTANCE:Landroid/os/BinderStub;

    return-object v0
.end method


# virtual methods
.method public blacklist dump(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 29
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 19
    sget-boolean v0, Landroid/os/BinderStub;->ENABLED:Z

    return v0
.end method

.method public blacklist startTracking()V
    .registers 1

    .line 23
    return-void
.end method

.method public blacklist stopTracking()V
    .registers 1

    .line 26
    return-void
.end method

.method blacklist track(Landroid/os/Binder;)V
    .registers 2
    .param p1, "binder"    # Landroid/os/Binder;

    .line 32
    return-void
.end method
