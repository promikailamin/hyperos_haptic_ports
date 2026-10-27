.class final Landroid/app/AppOpsManager$AppOpModeQuery;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppOpModeQuery"
.end annotation


# instance fields
.field final blacklist attributionTag:Ljava/lang/String;

.field final blacklist methodName:Ljava/lang/String;

.field final blacklist op:I

.field final blacklist packageName:Ljava/lang/String;

.field final blacklist uid:I

.field final blacklist virtualDeviceId:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 8432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8433
    iput p1, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    .line 8434
    iput p2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    .line 8435
    iput-object p3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    .line 8436
    iput p4, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    .line 8437
    iput-object p5, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    .line 8438
    iput-object p6, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->methodName:Ljava/lang/String;

    .line 8439
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 8455
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 8456
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 8457
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 8459
    :cond_13
    check-cast p1, Landroid/app/AppOpsManager$AppOpModeQuery;

    .line 8460
    iget v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    iget v3, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    if-ne v2, v3, :cond_3c

    iget v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    iget v3, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    iget v3, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    .line 8462
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    .line 8460
    :goto_3d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 8450
    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 8443
    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    .line 8444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    .line 8445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->methodName:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 8443
    const-string v1, "AppOpModeQuery(op=%d, uid=%d, packageName=%s, virtualDeviceId=%d, attributionTag=%s, methodName=%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
