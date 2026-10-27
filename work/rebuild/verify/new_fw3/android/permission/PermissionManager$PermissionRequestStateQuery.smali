.class final Landroid/permission/PermissionManager$PermissionRequestStateQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionRequestStateQuery"
.end annotation


# instance fields
.field final blacklist mDeviceId:I

.field final blacklist mPackageName:Ljava/lang/String;

.field final blacklist mPermission:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1807
    iput-object p1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    .line 1808
    iput-object p2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    .line 1809
    iput p3, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    .line 1810
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1826
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1827
    return v0

    .line 1831
    :cond_4
    :try_start_4
    check-cast p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_25

    .line 1834
    nop

    .line 1835
    iget v1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    iget v2, p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    iget-object p1, p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    .line 1836
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 1835
    :goto_24
    return v0

    .line 1832
    :catch_25
    move-exception p1

    .line 1833
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1821
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    iget v2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1814
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    iget v2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    .line 1816
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1814
    const-string v1, "PermissionRequestStateQuery(package=\"%s\", permission=\"%s\", deviceId=%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
