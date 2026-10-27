.class Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetPackagesForUidResult"
.end annotation


# instance fields
.field private final blacklist mValue:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1130
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1148
    instance-of v0, p1, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 1149
    check-cast p1, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    iget-object p1, p1, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1150
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1151
    const/4 v2, 0x1

    if-nez p1, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    :goto_11
    if-nez v0, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v1

    :goto_16
    if-eq v3, v4, :cond_19

    .line 1152
    return v1

    .line 1153
    :cond_19
    if-nez p1, :cond_1c

    .line 1154
    return v2

    .line 1157
    :cond_1c
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1158
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1159
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1161
    :cond_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1140
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1136
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist value()[Ljava/lang/String;
    .registers 2

    .line 1132
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    return-object v0
.end method
