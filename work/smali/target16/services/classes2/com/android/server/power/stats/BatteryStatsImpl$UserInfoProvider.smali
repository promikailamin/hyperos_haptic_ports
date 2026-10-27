.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public userIds:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exists(I)Z
    .registers 2

    .line 652
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    if-eqz p0, :cond_9

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public abstract getUserIds()[I
.end method

.method public final refreshUserIds()V
    .registers 2

    .line 648
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->getUserIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    return-void
.end method
