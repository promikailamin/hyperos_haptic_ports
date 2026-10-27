.class final Lcom/android/server/powerstats/PowerStatsService$BinderService;
.super Landroid/os/Binder;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsService$BinderService;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmContext(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 165
    :cond_11
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    if-nez v0, :cond_24

    .line 166
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerStats HAL is not initialized.  No data available."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ab

    .line 168
    :cond_24
    array-length v0, p3

    if-lez v0, :cond_72

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 169
    const/4 v0, 0x1

    aget-object v1, p3, v0

    const-string/jumbo v2, "model"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 170
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeModelDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_ab

    .line 171
    :cond_48
    aget-object v1, p3, v0

    const-string/jumbo v2, "meter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 172
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeMeterDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_ab

    .line 173
    :cond_5d
    aget-object v0, p3, v0

    const-string/jumbo v1, "residency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 174
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeResidencyDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_ab

    .line 176
    :cond_72
    array-length v0, p3

    if-nez v0, :cond_ab

    .line 177
    const-string v0, "PowerStatsService dumpsys: available PowerEntities"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    .line 179
    .local v0, "powerEntity":[Landroid/hardware/power/stats/PowerEntity;
    invoke-static {v0, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->dumpsys([Landroid/hardware/power/stats/PowerEntity;Ljava/io/PrintWriter;)V

    .line 181
    const-string v1, "PowerStatsService dumpsys: available Channels"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v1

    .line 183
    .local v1, "channel":[Landroid/hardware/power/stats/Channel;
    invoke-static {v1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->dumpsys([Landroid/hardware/power/stats/Channel;Ljava/io/PrintWriter;)V

    .line 185
    const-string v2, "PowerStatsService dumpsys: available EnergyConsumers"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v2}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v2

    .line 187
    .local v2, "energyConsumer":[Landroid/hardware/power/stats/EnergyConsumer;
    invoke-static {v2, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->dumpsys([Landroid/hardware/power/stats/EnergyConsumer;Ljava/io/PrintWriter;)V

    .line 190
    .end local v0    # "powerEntity":[Landroid/hardware/power/stats/PowerEntity;
    .end local v1    # "channel":[Landroid/hardware/power/stats/Channel;
    .end local v2    # "energyConsumer":[Landroid/hardware/power/stats/EnergyConsumer;
    :cond_ab
    :goto_ab
    return-void
.end method
