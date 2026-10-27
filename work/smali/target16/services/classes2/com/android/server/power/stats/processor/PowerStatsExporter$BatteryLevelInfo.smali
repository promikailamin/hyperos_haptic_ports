.class public Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;
.super Ljava/lang/Object;
.source "PowerStatsExporter.java"


# instance fields
.field public batteryDischargeDurationMs:J

.field public batteryDischargeMah:D

.field public batteryDischargePct:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/PowerStatsExporter-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;-><init>()V

    return-void
.end method
