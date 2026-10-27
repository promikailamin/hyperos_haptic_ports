.class public Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
.super Ljava/lang/Object;
.source "MobileRadioPowerStatsProcessor.java"


# instance fields
.field public callPower:D

.field public consumedEnergy:J

.field public inactivePower:D

.field public rxPackets:J

.field public rxPower:D

.field public txPackets:J

.field public txPower:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;-><init>()V

    return-void
.end method
