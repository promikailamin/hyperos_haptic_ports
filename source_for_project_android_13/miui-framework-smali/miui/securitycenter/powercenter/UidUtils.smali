.class Lmiui/securitycenter/powercenter/UidUtils;
.super Ljava/lang/Object;
.source "UidUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getRealUid(I)I
    .registers 3
    .param p0, "uid"    # I

    .line 9
    invoke-static {p0}, Lmiui/securitycenter/powercenter/UidUtils;->isSharedGid(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    .line 10
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    .line 13
    :cond_10
    return p0
.end method

.method private static blacklist isSharedGid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 17
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
