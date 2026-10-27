.class final Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
.super Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.source "AppBatteryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmutableBatteryUsage"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1116
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 1117
    return-void
.end method

.method constructor <init>(DDDDD)V
    .registers 11
    .param p1, "unspecifiedUsage"    # D
    .param p3, "fgUsage"    # D
    .param p5, "bgUsage"    # D
    .param p7, "fgsUsage"    # D
    .param p9, "cachedUsage"    # D

    .line 1121
    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(DDDDD)V

    .line 1122
    return-void
.end method

.method constructor <init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V
    .registers 3
    .param p1, "consumer"    # Landroid/os/UidBatteryConsumer;
    .param p2, "policy"    # Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 1138
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 1139
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .registers 2
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1133
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 1134
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .param p2, "scale"    # D

    .line 1129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V

    .line 1130
    return-void
.end method

.method constructor <init>([D)V
    .registers 2
    .param p1, "usage"    # [D

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>([D)V

    .line 1126
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 4
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 2

    .line 1167
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-object v0
.end method

.method scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 5
    .param p1, "scale"    # D

    .line 1158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 4
    .param p1, "percentage"    # [D

    .line 1163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTo(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 4
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .registers 4
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
