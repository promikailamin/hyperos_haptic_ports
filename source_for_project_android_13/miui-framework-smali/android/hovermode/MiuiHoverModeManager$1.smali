.class Landroid/hovermode/MiuiHoverModeManager$1;
.super Landroid/util/Singleton;
.source "MiuiHoverModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hovermode/MiuiHoverModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hovermode/IMiuiHoverMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/hovermode/IMiuiHoverMode;
    .registers 2

    .line 28
    nop

    .line 29
    const-string v0, "MiuiHoverMode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/hovermode/IMiuiHoverMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hovermode/IMiuiHoverMode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/hovermode/MiuiHoverModeManager$1;->create()Landroid/hovermode/IMiuiHoverMode;

    move-result-object v0

    return-object v0
.end method
