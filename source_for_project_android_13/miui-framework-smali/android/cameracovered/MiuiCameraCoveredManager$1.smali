.class Landroid/cameracovered/MiuiCameraCoveredManager$1;
.super Landroid/util/Singleton;
.source "MiuiCameraCoveredManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/cameracovered/MiuiCameraCoveredManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/cameracovered/IMiuiCameraCoveredManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/cameracovered/IMiuiCameraCoveredManager;
    .registers 2

    .line 13
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->getDefault()Landroid/cameracovered/MiuiCameraCoveredManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->getService()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Landroid/cameracovered/MiuiCameraCoveredManager$1;->create()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v0

    return-object v0
.end method
