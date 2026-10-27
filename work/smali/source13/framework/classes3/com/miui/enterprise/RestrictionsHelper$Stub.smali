.class Lcom/miui/enterprise/RestrictionsHelper$Stub;
.super Ljava/lang/Object;
.source "RestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/RestrictionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Lcom/miui/enterprise/RestrictionsHelper$Stub;
    .registers 1

    .line 21
    const-class v0, Lcom/miui/enterprise/RestrictionsHelper$Stub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/enterprise/RestrictionsHelper$Stub;

    return-object v0
.end method


# virtual methods
.method public blacklist handleBluetoothChange(Landroid/content/Context;Z)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOpen"    # Z

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasAirplaneRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasGPSRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasKeyCodeRestriction(Landroid/content/Context;II)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keycode"    # I
    .param p3, "userId"    # I

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasNFCRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasWifiRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCameraRestricted(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsbDeviceRestricted(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    return v0
.end method
