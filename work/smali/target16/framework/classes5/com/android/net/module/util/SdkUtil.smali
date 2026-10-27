.class public Lcom/android/net/module/util/SdkUtil;
.super Ljava/lang/Object;
.source "SdkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/SdkUtil$LateSdk;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAtLeast25Q2()Z
    .registers 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeast25Q4()Z
    .registers 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
