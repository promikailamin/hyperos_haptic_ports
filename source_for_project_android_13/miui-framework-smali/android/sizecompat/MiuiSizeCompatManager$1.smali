.class Landroid/sizecompat/MiuiSizeCompatManager$1;
.super Landroid/util/Singleton;
.source "MiuiSizeCompatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sizecompat/MiuiSizeCompatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/sizecompat/IMiuiSizeCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/sizecompat/IMiuiSizeCompat;
    .registers 2

    .line 21
    const-string v0, "MiuiSizeCompat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sizecompat/IMiuiSizeCompat$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Landroid/sizecompat/MiuiSizeCompatManager$1;->create()Landroid/sizecompat/IMiuiSizeCompat;

    move-result-object v0

    return-object v0
.end method
