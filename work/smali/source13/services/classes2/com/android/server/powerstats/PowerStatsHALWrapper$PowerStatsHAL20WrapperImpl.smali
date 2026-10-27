.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsHALWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerStatsHAL20WrapperImpl"
.end annotation


# static fields
.field private static sVintfPowerStats:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/power/stats/IPowerStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;-><init>(Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache-IA;)V

    .line 151
    .local v0, "service":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/power/stats/IPowerStats;>;"
    sput-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    .line 153
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    .line 155
    sput-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    goto :goto_16

    .line 157
    :cond_14
    sput-object v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    .line 159
    :goto_16
    return-void
.end method


# virtual methods
.method public getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .registers 6
    .param p1, "energyConsumerIds"    # [I

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "energyConsumedHAL":[Landroid/hardware/power/stats/EnergyConsumerResult;
    sget-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1c

    .line 215
    nop

    .line 216
    :try_start_6
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {v1, p1}, Landroid/hardware/power/stats/IPowerStats;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 219
    goto :goto_1c

    .line 217
    :catch_12
    move-exception v1

    .line 218
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get energy consumer results: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .registers 5

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "energyConsumerHAL":[Landroid/hardware/power/stats/EnergyConsumer;
    sget-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1b

    .line 199
    :try_start_5
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {v1}, Landroid/hardware/power/stats/IPowerStats;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 202
    goto :goto_1b

    .line 200
    :catch_11
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get energy consumer info: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .registers 5

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "energyMeterInfoHAL":[Landroid/hardware/power/stats/Channel;
    sget-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1b

    .line 231
    :try_start_5
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {v1}, Landroid/hardware/power/stats/IPowerStats;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 234
    goto :goto_1b

    .line 232
    :catch_11
    move-exception v1

    .line 233
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get energy meter info: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .registers 5

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "powerEntityHAL":[Landroid/hardware/power/stats/PowerEntity;
    sget-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1b

    .line 167
    :try_start_5
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {v1}, Landroid/hardware/power/stats/IPowerStats;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 170
    goto :goto_1b

    .line 168
    :catch_11
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get power entity info: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
    .registers 6
    .param p1, "powerEntityIds"    # [I

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "stateResidencyResultHAL":[Landroid/hardware/power/stats/StateResidencyResult;
    sget-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1c

    .line 183
    nop

    .line 184
    :try_start_6
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {v1, p1}, Landroid/hardware/power/stats/IPowerStats;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 187
    goto :goto_1c

    .line 185
    :catch_12
    move-exception v1

    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get state residency: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 258
    sget-object v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
    .registers 6
    .param p1, "channelIds"    # [I

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "energyMeasurementHAL":[Landroid/hardware/power/stats/EnergyMeasurement;
    sget-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1c

    .line 246
    nop

    .line 247
    :try_start_6
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {v1, p1}, Landroid/hardware/power/stats/IPowerStats;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 250
    goto :goto_1c

    .line 248
    :catch_12
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get energy measurements: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-object v0
.end method
