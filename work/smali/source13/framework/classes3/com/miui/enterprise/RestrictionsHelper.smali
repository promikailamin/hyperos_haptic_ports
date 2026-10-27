.class public final Lcom/miui/enterprise/RestrictionsHelper;
.super Ljava/lang/Object;
.source "RestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/RestrictionsHelper$Stub;
    }
.end annotation


# static fields
.field public static final blacklist DISALLOW_FINGERPRINT:Ljava/lang/String; = "disallow_fingerprint"

.field public static final blacklist DISALLOW_IMEIREAD:Ljava/lang/String; = "disallow_imeiread"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static blacklist handleBluetoothChange(Landroid/content/Context;Z)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOpen"    # Z

    .line 90
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->handleBluetoothChange(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasAirplaneRestriction(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasAirplaneRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasGPSRestriction(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasGPSRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasKeyCodeRestriction(Landroid/content/Context;II)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keycode"    # I
    .param p2, "userId"    # I

    .line 114
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasKeyCodeRestriction(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasNFCRestriction(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasNFCRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 78
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasWifiRestriction(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasWifiRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCameraRestricted(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 98
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUsbDeviceRestricted(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->isUsbDeviceRestricted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
