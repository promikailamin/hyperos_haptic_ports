.class public Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
.super Ljava/lang/Object;
.source "BluetoothPowerStatsProcessor.java"


# instance fields
.field public consumedEnergy:J

.field public idlePower:D

.field public rxBytes:J

.field public rxPower:D

.field public rxTime:J

.field public scanTime:J

.field public txBytes:J

.field public txPower:D

.field public txTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;-><init>()V

    return-void
.end method
