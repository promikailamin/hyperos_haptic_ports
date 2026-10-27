.class public Lcom/miui/xspace/XSpaceManagerStub;
.super Ljava/lang/Object;
.source "XSpaceManagerStub.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "XSpaceManagerStub"

.field private static final blacklist sInstance:Lcom/miui/xspace/XSpaceManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/miui/xspace/XSpaceManagerStub;

    .line 18
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/xspace/XSpaceManagerStub;

    sput-object v0, Lcom/miui/xspace/XSpaceManagerStub;->sInstance:Lcom/miui/xspace/XSpaceManagerStub;

    .line 17
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/miui/xspace/XSpaceManagerStub;
    .registers 1

    .line 21
    sget-object v0, Lcom/miui/xspace/XSpaceManagerStub;->sInstance:Lcom/miui/xspace/XSpaceManagerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist belongToCrossXSpaceSecureSettings(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist belongToCrossXSpaceSettings(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canCrossUser(II)Z
    .registers 4
    .param p1, "callingUserId"    # I
    .param p2, "userId"    # I

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getXSpaceIconMaskId()I
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getXSpaceUserFlag()I
    .registers 2

    .line 45
    const/high16 v0, 0x800000

    return v0
.end method

.method public blacklist getXSpaceUserId()I
    .registers 2

    .line 41
    const/16 v0, -0x2710

    return v0
.end method

.method public blacklist hookGetStorageVolume(Landroid/content/Context;Ljava/io/File;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .line 77
    return-object p3
.end method

.method public blacklist isCrossUserIncomingUri(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCrossUserService(Landroid/content/pm/ServiceInfo;I)Z
    .registers 4
    .param p1, "sInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "userId"    # I

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUidBelongtoXSpace(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isXSpaceMatch(JZI)Z
    .registers 6
    .param p1, "flags"    # J
    .param p3, "isInstalled"    # Z
    .param p4, "userId"    # I

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isXSpaceUserHandle(Landroid/os/UserHandle;)Z
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isXSpaceUserId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 25
    const/4 v0, 0x0

    return v0
.end method
