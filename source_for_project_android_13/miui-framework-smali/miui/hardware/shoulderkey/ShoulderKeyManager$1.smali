.class Lmiui/hardware/shoulderkey/ShoulderKeyManager$1;
.super Landroid/util/Singleton;
.source "ShoulderKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/shoulderkey/ShoulderKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lmiui/hardware/shoulderkey/IShoulderKeyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$1;->create()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist create()Lmiui/hardware/shoulderkey/IShoulderKeyManager;
    .registers 3

    .line 59
    const-string v0, "shoulderkey"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 61
    .local v1, "skm":Lmiui/hardware/shoulderkey/IShoulderKeyManager;
    invoke-static {v0}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v1

    .line 62
    return-object v1
.end method
