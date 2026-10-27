.class final Lcom/android/server/power/hint/HintManagerService$BinderService;
.super Landroid/os/IHintManager$Stub;
.source "HintManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static synthetic $r8$lambda$eyDdSdezowLMa2_XJTKMNA6O98o(Lcom/android/server/power/hint/HintManagerService$BinderService;Ljava/lang/Integer;)Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->lambda$createHintSessionWithConfig$1(Ljava/lang/Integer;)Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wW5vMRz9tM1od40u5pT8Q15YZ20(Ljava/lang/Integer;)Landroid/util/ArrayMap;
    .registers 1

    .line 1468
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 2

    .line 1331
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkCpuHeadroomParams(Landroid/os/CpuHeadroomParamsInternal;)V
    .registers 8

    .line 1783
    :try_start_0
    const-class v0, Landroid/hardware/power/CpuHeadroomParams$CalculationType;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_bc

    aget-object v3, v0, v2

    .line 1784
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_b1

    const/4 v4, 0x0

    .line 1785
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v3

    .line 1786
    iget-byte v4, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_b5

    if-ne v3, v4, :cond_b1

    .line 1799
    iget v0, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    if-lt v0, v1, :cond_74

    iget v0, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    if-gt v0, v1, :cond_74

    .line 1810
    iget-boolean v0, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    if-nez v0, :cond_73

    .line 1811
    iget-object v0, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v0, :cond_73

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v1

    if-gt v0, v1, :cond_4b

    goto :goto_73

    .line 1812
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " TIDs requested: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_73
    return-void

    .line 1802
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CPU headroom calculation window, expected ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] but got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 1793
    :catch_b5
    const-string p0, "HintManagerService"

    const-string v0, "Checking the calculation type was unexpectedly not allowed"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown CPU headroom calculation type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkGpuHeadroomParams(Landroid/os/GpuHeadroomParamsInternal;)V
    .registers 8

    .line 1893
    :try_start_0
    const-class v0, Landroid/hardware/power/GpuHeadroomParams$CalculationType;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_81

    aget-object v3, v0, v2

    .line 1894
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_77

    const/4 v4, 0x0

    .line 1895
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v3

    .line 1896
    iget-byte v4, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_7a

    if-ne v3, v4, :cond_77

    .line 1909
    iget v0, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    if-lt v0, v1, :cond_3a

    iget v0, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    if-gt v0, v1, :cond_3a

    return-void

    .line 1912
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GPU headroom calculation window, expected ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] but got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1903
    :catch_7a
    const-string p0, "HintManagerService"

    const-string v0, "Checking the calculation type was unexpectedly not allowed"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown GPU headroom calculation type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkPerUidUserModeCpuTimeElapsedLocked(I)Z
    .registers 9

    .line 1750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCheckHeadroomProcStatMinMillis(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "HintManagerService"

    if-lez v0, :cond_33

    .line 1753
    :try_start_19
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getUserModeJiffies()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_2c

    .line 1758
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;J)V

    goto :goto_33

    :catch_2c
    move-exception p0

    .line 1755
    const-string p1, "Failed to get user mode CPU time"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 1760
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1761
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1762
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-float v0, v5

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v6, v5, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v0, v6

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v5, v5, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_ef

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is requesting CPU headroom too soon"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " last request at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float p1, v3

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v5, v5, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms with device currently at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v5

    long-to-float p1, v5

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v5, v5, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, the interval: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-float p1, v5

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v3, v3, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms is less than require minimum interval "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_ef
    const/4 p0, 0x1

    return p0
.end method

.method public final checkThreadAffinityForTids(Landroid/os/CpuHeadroomParamsInternal;)V
    .registers 9

    .line 1716
    const-string p0, "HintManagerService"

    .line 1717
    iget-object p1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    .line 1718
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_98

    aget v4, p1, v3

    .line 1721
    :try_start_c
    invoke-static {v4}, Landroid/os/Process;->getSchedAffinity(I)[J

    move-result-object v5
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_6c

    if-nez v1, :cond_14

    move-object v1, v5

    goto :goto_1a

    .line 1728
    :cond_14
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v6

    if-eqz v6, :cond_1d

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1736
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread affinity is different: tid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1736
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread affinity is not the same for tids "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6c
    move-exception p1

    .line 1723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get affinity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1724
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not check affinity for tid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    return-void
.end method

.method public closeSessionChannel()V
    .registers 3

    .line 1542
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_22

    .line 1545
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    .line 1546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1547
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_22
    return-void
.end method

.method public createHintSessionWithConfig(Landroid/os/IBinder;ILandroid/os/SessionCreationConfig;Landroid/hardware/power/SessionConfig;)Landroid/os/IHintManager$SessionCreationReturn;
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v14, p3

    move-object/from16 v9, p4

    .line 1336
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHintSessionSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    .line 1340
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v0, v14, Landroid/os/SessionCreationConfig;->tids:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    iget-object v5, v14, Landroid/os/SessionCreationConfig;->tids:[I

    .line 1344
    array-length v0, v5

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_1f

    move v0, v10

    goto :goto_20

    :cond_1f
    move v0, v15

    :goto_20
    const-string/jumbo v2, "tids should not be empty."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1349
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v3

    .line 1350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1351
    iget-wide v6, v14, Landroid/os/SessionCreationConfig;->targetWorkDurationNanos:J

    .line 1355
    iget-object v0, v14, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    if-eqz v0, :cond_5c

    .line 1356
    array-length v2, v0

    move v8, v15

    move v11, v8

    move v12, v11

    :goto_40
    if-ge v8, v2, :cond_59

    aget v13, v0, v8

    if-ne v13, v10, :cond_4a

    move v11, v10

    move/from16 v18, v11

    goto :goto_4c

    :cond_4a
    move/from16 v18, v10

    :goto_4c
    const/4 v10, 0x2

    if-eq v13, v10, :cond_52

    const/4 v10, 0x3

    if-ne v13, v10, :cond_54

    :cond_52
    move/from16 v12, v18

    :cond_54
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v18

    goto :goto_40

    :cond_59
    :goto_59
    move/from16 v18, v10

    goto :goto_5f

    :cond_5c
    move v11, v15

    move v12, v11

    goto :goto_59

    :goto_5f
    if-eqz v12, :cond_66

    .line 1367
    const-string v0, "graphics pipeline mode not enabled for an automatically timed session"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1372
    :cond_66
    :try_start_66
    new-instance v10, Landroid/util/IntArray;

    array-length v0, v5

    invoke-direct {v10, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 1373
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0, v4, v3, v5, v10}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_90

    if-nez v0, :cond_2c1

    .line 1382
    :try_start_74
    array-length v0, v5

    move v2, v15

    :goto_76
    if-ge v2, v0, :cond_95

    aget v8, v5, v2

    .line 1383
    invoke-static {v8}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v11

    if-eqz v11, :cond_81

    goto :goto_8d

    .line 1390
    :cond_81
    invoke-static {v8}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    .line 1391
    invoke-static {v8, v12, v15}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 1392
    invoke-static {v8, v11}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8d} :catch_93
    .catchall {:try_start_74 .. :try_end_8d} :catchall_90

    :goto_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :catchall_90
    move-exception v0

    goto/16 :goto_2d2

    :catch_93
    move-exception v0

    goto :goto_98

    :cond_95
    :goto_95
    move/from16 v2, p2

    goto :goto_b3

    .line 1395
    :goto_98
    :try_start_98
    const-string v2, "HintManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set SCHED_RESET_ON_FORK for tids "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1395
    invoke-static {v2, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    .line 1400
    :goto_b3
    invoke-virtual {v1, v2, v4}, Lcom/android/server/power/hint/HintManagerService$BinderService;->updateSessionTag(II)I

    move-result v8

    const-wide/16 v11, -0x1

    .line 1402
    iput-wide v11, v9, Landroid/hardware/power/SessionConfig;->id:J

    .line 1404
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmConfigCreationSupport(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_c5
    .catchall {:try_start_98 .. :try_end_c5} :catchall_90

    if-eqz v0, :cond_10b

    .line 1406
    :try_start_c7
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J

    move-result-wide v19
    :try_end_d1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c7 .. :try_end_d1} :catch_da
    .catch Ljava/lang/IllegalStateException; {:try_start_c7 .. :try_end_d1} :catch_d8
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_90

    move v0, v8

    move-object v8, v9

    :try_start_d3
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_d7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d3 .. :try_end_d7} :catch_101
    .catch Ljava/lang/IllegalStateException; {:try_start_d3 .. :try_end_d7} :catch_d8
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_90

    goto :goto_10e

    :catch_d8
    move-exception v0

    goto :goto_dd

    :catch_da
    move v0, v8

    move-object v8, v9

    goto :goto_101

    .line 1411
    :goto_dd
    :try_start_dd
    const-string v1, "createHintSessionWithConfig failed: "

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createHintSessionWithConfig failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1409
    :catch_101
    :goto_101
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmConfigCreationSupport(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_10a
    .catchall {:try_start_dd .. :try_end_10a} :catchall_90

    goto :goto_10d

    :cond_10b
    move v0, v8

    move-object v8, v9

    :goto_10d
    const/4 v2, 0x0

    :goto_10e
    if-nez v2, :cond_16b

    .line 1419
    :try_start_110
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSession(II[IJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_11e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_110 .. :try_end_11e} :catch_121
    .catch Ljava/lang/IllegalStateException; {:try_start_110 .. :try_end_11e} :catch_11f
    .catchall {:try_start_110 .. :try_end_11e} :catchall_90

    goto :goto_16b

    :catch_11f
    move-exception v0

    goto :goto_123

    :catch_121
    move-exception v0

    goto :goto_147

    .line 1426
    :goto_123
    :try_start_123
    const-string v1, "createHintSession failed: "

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createHintSession failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1422
    :goto_147
    const-string v1, "createHintSession unsupported: "

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createHintSession unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1431
    :cond_16b
    :goto_16b
    iget-object v9, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v9}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_172
    .catchall {:try_start_123 .. :try_end_172} :catchall_90

    .line 1432
    :try_start_172
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-wide/from16 v20, v11

    move/from16 v11, v19

    :goto_17c
    if-ltz v11, :cond_1b2

    .line 1433
    iget-object v12, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v12}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v10, v11}, Landroid/util/IntArray;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    iget-object v12, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v12}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v10, v11}, Landroid/util/IntArray;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    const/4 v15, 0x0

    goto :goto_17c

    :catchall_1af
    move-exception v0

    goto/16 :goto_2bf

    .line 1436
    :cond_1b2
    monitor-exit v9
    :try_end_1b3
    .catchall {:try_start_172 .. :try_end_1b3} :catchall_1af

    .line 1438
    :try_start_1b3
    iget-object v9, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v9}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_1ba
    .catchall {:try_start_1b3 .. :try_end_1ba} :catchall_90

    .line 1440
    :try_start_1ba
    iget-wide v9, v8, Landroid/hardware/power/SessionConfig;->id:J

    cmp-long v11, v9, v20

    if-eqz v11, :cond_1cb

    .line 1441
    new-instance v13, Ljava/lang/Integer;

    long-to-int v9, v9

    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    :goto_1c6
    move-object v9, v2

    goto :goto_1cd

    :catchall_1c8
    move-exception v0

    goto/16 :goto_2bd

    :cond_1cb
    const/4 v13, 0x0

    goto :goto_1c6

    .line 1443
    :goto_1cd
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    move-wide v11, v6

    move-object v7, v5

    move v5, v3

    iget-object v3, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    move-object v6, v9

    .line 1444
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v8, v6

    move v6, v0

    move-object v0, v8

    move-object/from16 v8, p1

    move/from16 v14, v18

    invoke-direct/range {v2 .. v13}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;-><init>(Lcom/android/server/power/hint/HintManagerService;III[ILandroid/os/IBinder;JJLjava/lang/Integer;)V

    move v3, v5

    move-object v5, v7

    move-wide/from16 v22, v11

    move-object v11, v2

    move v2, v6

    move-wide/from16 v6, v22

    .line 1445
    iget-object v9, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v9}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v9

    .line 1446
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    if-nez v9, :cond_20f

    .line 1448
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9, v14}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1449
    iget-object v10, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v10}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    :cond_20f
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    if-nez v10, :cond_21f

    .line 1453
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10, v14}, Landroid/util/ArraySet;-><init>(I)V

    .line 1454
    invoke-virtual {v9, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    :cond_21f
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1457
    iget-object v8, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v8}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUsesFmq(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v9

    if-nez v9, :cond_239

    iget-object v9, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v9, v3, v4}, Lcom/android/server/power/hint/HintManagerService;->hasChannel(II)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_237

    goto :goto_239

    :cond_237
    const/4 v10, 0x0

    goto :goto_23a

    :cond_239
    :goto_239
    move v10, v14

    :goto_23a
    invoke-static {v8, v10}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmUsesFmq(Lcom/android/server/power/hint/HintManagerService;Z)V

    .line 1458
    monitor-exit v15
    :try_end_23e
    .catchall {:try_start_1ba .. :try_end_23e} :catchall_1c8

    move-object/from16 v9, p4

    .line 1461
    :try_start_240
    iget-wide v8, v9, Landroid/hardware/power/SessionConfig;->id:J

    cmp-long v3, v8, v20

    if-eqz v3, :cond_247

    goto :goto_24b

    :cond_247
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_24b
    const/4 v0, 0x0

    const/4 v10, 0x0

    move-wide/from16 v22, v8

    move v8, v2

    move v2, v4

    move-wide/from16 v3, v22

    move-wide/from16 v22, v6

    move-object v7, v5

    move-wide/from16 v5, v22

    move v9, v0

    .line 1462
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/hint/HintManagerService$BinderService;->logPerformanceHintSessionAtom(IJJ[IIZZ)V

    move-object v5, v7

    move-wide/from16 v6, v22

    move v4, v2

    .line 1466
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_267
    .catchall {:try_start_240 .. :try_end_267} :catchall_90

    .line 1468
    :try_start_267
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1469
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$BinderService;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    array-length v1, v5

    .line 1470
    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateUponSessionCreation(IJ)V

    .line 1471
    monitor-exit v2
    :try_end_290
    .catchall {:try_start_267 .. :try_end_290} :catchall_2ba

    move-object/from16 v1, p3

    .line 1477
    :try_start_292
    iget-object v0, v1, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    if-eqz v0, :cond_2a2

    .line 1478
    array-length v2, v0

    const/4 v3, 0x0

    :goto_298
    if-ge v3, v2, :cond_2a2

    aget v4, v0, v3

    .line 1485
    invoke-virtual {v11, v4, v14}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setMode(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_298

    .line 1489
    :cond_2a2
    iget-object v0, v1, Landroid/os/SessionCreationConfig;->layerTokens:[Landroid/os/IBinder;

    if-eqz v0, :cond_2ac

    array-length v1, v0

    if-lez v1, :cond_2ac

    .line 1491
    invoke-virtual {v11, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->associateToLayers([Landroid/os/IBinder;)V

    .line 1509
    :cond_2ac
    new-instance v0, Landroid/os/IHintManager$SessionCreationReturn;

    invoke-direct {v0}, Landroid/os/IHintManager$SessionCreationReturn;-><init>()V

    const/4 v1, 0x0

    .line 1511
    iput-boolean v1, v0, Landroid/os/IHintManager$SessionCreationReturn;->pipelineThreadLimitExceeded:Z

    .line 1512
    iput-object v11, v0, Landroid/os/IHintManager$SessionCreationReturn;->session:Landroid/os/IHintSession;
    :try_end_2b6
    .catchall {:try_start_292 .. :try_end_2b6} :catchall_90

    .line 1515
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_2ba
    move-exception v0

    .line 1471
    :try_start_2bb
    monitor-exit v2
    :try_end_2bc
    .catchall {:try_start_2bb .. :try_end_2bc} :catchall_2ba

    :try_start_2bc
    throw v0
    :try_end_2bd
    .catchall {:try_start_2bc .. :try_end_2bd} :catchall_90

    .line 1458
    :goto_2bd
    :try_start_2bd
    monitor-exit v15
    :try_end_2be
    .catchall {:try_start_2bd .. :try_end_2be} :catchall_1c8

    :try_start_2be
    throw v0
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_90

    .line 1436
    :goto_2bf
    :try_start_2bf
    monitor-exit v9
    :try_end_2c0
    .catchall {:try_start_2bf .. :try_end_2c0} :catchall_1af

    :try_start_2c0
    throw v0

    .line 1376
    :cond_2c1
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v4, v5, v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    const-string v1, "HintManagerService"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2d2
    .catchall {:try_start_2c0 .. :try_end_2d2} :catchall_90

    .line 1515
    :goto_2d2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1516
    throw v0

    .line 1337
    :cond_2d6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PowerHintSessions are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 1964
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "HintManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_29e

    .line 1967
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HintSessionPreferredRate: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v0, p3, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    const-string p1, "MaxGraphicsPipelineThreadsCount: 5"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hint Session Support: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHintSessionSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    const-string p1, "Active Sessions:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 p3, 0x0

    move v0, p3

    .line 1972
    :goto_55
    :try_start_55
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_c6

    .line 1973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 1975
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move v2, p3

    .line 1976
    :goto_97
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_c3

    .line 1977
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move v4, p3

    .line 1978
    :goto_a4
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_c0

    .line 1979
    const-string v5, "  Session:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    const-string v6, "    "

    invoke-static {v5, p2, v6}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    :catchall_bd
    move-exception p0

    goto/16 :goto_29f

    :cond_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1984
    :cond_c6
    monitor-exit p1
    :try_end_c7
    .catchall {:try_start_55 .. :try_end_c7} :catchall_bd

    .line 1985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CPU Headroom Supported: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz p1, :cond_1d0

    .line 1987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CPU Headroom Interval: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CPU Headroom TID Max Count: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CPU Headroom TID Max Count From HAL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CPU Headroom Calculation Window Range: ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    :try_start_17c
    new-instance p1, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    const/4 p3, 0x1

    .line 1996
    iput-boolean p3, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    .line 1997
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p3

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU Headroom parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/CpuHeadroomParamsInternal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1999
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CPU headroom: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1b1

    const-string p3, "N/A"

    goto :goto_1b9

    :catch_1af
    move-exception p1

    goto :goto_1c4

    :cond_1b1
    invoke-virtual {p3}, Landroid/hardware/power/CpuHeadroomResult;->getGlobalHeadroom()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :goto_1b9
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1c3} :catch_1af

    goto :goto_1d0

    .line 2001
    :goto_1c4
    const-string p3, "HintManagerService"

    const-string v0, "Failed to dump CPU headroom"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2002
    const-string p1, "CPU headroom: N/A"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2005
    :cond_1d0
    :goto_1d0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GPU Headroom Supported: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz p1, :cond_29e

    .line 2007
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GPU Headroom Interval: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GPU Headroom Calculation Window Range: ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p3, p3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    :try_start_24d
    new-instance p1, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    .line 2013
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object p0

    .line 2014
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GPU Headroom parameters: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/GpuHeadroomParamsInternal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GPU headroom: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_27f

    const-string p0, "N/A"

    goto :goto_287

    :catch_27d
    move-exception p0

    goto :goto_292

    :cond_27f
    invoke-virtual {p0}, Landroid/hardware/power/GpuHeadroomResult;->getGlobalHeadroom()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_287
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_291} :catch_27d

    goto :goto_29e

    .line 2017
    :goto_292
    const-string p1, "HintManagerService"

    const-string p3, "Failed to dump GPU headroom"

    invoke-static {p1, p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2018
    const-string p0, "GPU headroom: N/A"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29e
    :goto_29e
    return-void

    .line 1984
    :goto_29f
    :try_start_29f
    monitor-exit p1
    :try_end_2a0
    .catchall {:try_start_29f .. :try_end_2a0} :catchall_bd

    throw p0
.end method

.method public getClientData()Landroid/os/IHintManager$HintManagerClientData;
    .registers 4

    .line 1953
    new-instance v0, Landroid/os/IHintManager$HintManagerClientData;

    invoke-direct {v0}, Landroid/os/IHintManager$HintManagerClientData;-><init>()V

    .line 1954
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v1, v1, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    iput-wide v1, v0, Landroid/os/IHintManager$HintManagerClientData;->preferredRateNanos:J

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getMaxGraphicsPipelineThreadsCount()I

    move-result v1

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->maxGraphicsPipelineThreads:I

    const/4 v1, 0x5

    .line 1956
    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    .line 1957
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v1

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->powerHalVersion:I

    .line 1958
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    return-object v0
.end method

.method public getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;
    .registers 13

    .line 1568
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_144

    .line 1571
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkCpuHeadroomParams(Landroid/os/CpuHeadroomParamsInternal;)V

    .line 1572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1573
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1574
    new-instance v2, Landroid/hardware/power/CpuHeadroomParams;

    invoke-direct {v2}, Landroid/hardware/power/CpuHeadroomParams;-><init>()V

    .line 1575
    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, v2, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    .line 1576
    iget-byte v1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    iput-byte v1, v2, Landroid/hardware/power/CpuHeadroomParams;->calculationType:B

    .line 1577
    iget v1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v1, v2, Landroid/hardware/power/CpuHeadroomParams;->calculationWindowMillis:I

    .line 1578
    iget-boolean v1, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_37

    .line 1579
    new-array p1, v5, [I

    iput-object p1, v2, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    goto :goto_98

    .line 1580
    :cond_37
    iget-object v1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v1, :cond_98

    array-length v1, v1

    if-lez v1, :cond_98

    .line 1581
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, v3, :cond_84

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCheckHeadroomTid(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1582
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v1

    .line 1583
    iget-object v6, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v7, v6

    move v8, v5

    :goto_58
    if-ge v8, v7, :cond_84

    aget v9, v6, v8

    .line 1584
    invoke-static {v9}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v10

    if-ne v10, v1, :cond_65

    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 1592
    :cond_65
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TID "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t belong to the calling process with pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1598
    :cond_84
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCheckHeadroomAffinity(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v1

    if-eqz v1, :cond_94

    iget-object v1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v1, v1

    if-le v1, v4, :cond_94

    .line 1599
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkThreadAffinityForTids(Landroid/os/CpuHeadroomParamsInternal;)V

    .line 1601
    :cond_94
    iget-object p1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    iput-object p1, v2, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    .line 1603
    :cond_98
    :goto_98
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1604
    :try_start_9f
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/CpuHeadroomResult;

    if-eqz v1, :cond_b2

    .line 1613
    monitor-exit p1

    return-object v1

    :catchall_af
    move-exception p0

    goto/16 :goto_142

    .line 1615
    :cond_b2
    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_9f .. :try_end_b3} :catchall_af

    .line 1616
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmEnforceCpuHeadroomUserModeCpuTimeCheck(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result p1

    if-nez p1, :cond_d2

    .line 1618
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eq p1, v3, :cond_d1

    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "android.permission.DEVICE_POWER"

    .line 1619
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_d1

    goto :goto_d2

    :cond_d1
    move v4, v5

    :cond_d2
    :goto_d2
    const/4 p1, 0x0

    if-eqz v4, :cond_ea

    .line 1624
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1625
    :try_start_dc
    invoke-virtual {p0, v0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkPerUidUserModeCpuTimeElapsedLocked(I)Z

    move-result v3

    if-nez v3, :cond_e6

    .line 1634
    monitor-exit v1

    return-object p1

    :catchall_e4
    move-exception p0

    goto :goto_e8

    .line 1636
    :cond_e6
    monitor-exit v1

    goto :goto_ea

    :goto_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_dc .. :try_end_e9} :catchall_e4

    throw p0

    .line 1640
    :cond_ea
    :goto_ea
    :try_start_ea
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/hardware/power/IPower;->getCpuHeadroom(Landroid/hardware/power/CpuHeadroomParams;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object v1

    if-nez v1, :cond_100

    .line 1649
    const-string p0, "HintManagerService"

    const-string v0, "CPU headroom from Power HAL is invalid"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_fe
    move-exception p0

    goto :goto_13a

    .line 1652
    :cond_100
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_107} :catch_fe

    .line 1653
    :try_start_107
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1654
    monitor-exit v3
    :try_end_111
    .catchall {:try_start_107 .. :try_end_111} :catchall_137

    if-eqz v4, :cond_136

    .line 1656
    :try_start_113
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_11a} :catch_fe

    .line 1657
    :try_start_11a
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    monitor-exit v2

    goto :goto_136

    :catchall_133
    move-exception p0

    monitor-exit v2
    :try_end_135
    .catchall {:try_start_11a .. :try_end_135} :catchall_133

    :try_start_135
    throw p0
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_136} :catch_fe

    :cond_136
    :goto_136
    return-object v1

    :catchall_137
    move-exception p0

    .line 1654
    :try_start_138
    monitor-exit v3
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    :try_start_139
    throw p0
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_13a} :catch_fe

    .line 1676
    :goto_13a
    const-string v0, "HintManagerService"

    const-string v1, "Failed to get CPU headroom from Power HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 1615
    :goto_142
    :try_start_142
    monitor-exit p1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_af

    throw p0

    .line 1569
    :cond_144
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getCpuHeadroomMinIntervalMillis()J
    .registers 3

    .line 1922
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_18

    .line 1925
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v0, p0

    return-wide v0

    .line 1923
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;
    .registers 5

    .line 1821
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_6c

    .line 1824
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkGpuHeadroomParams(Landroid/os/GpuHeadroomParamsInternal;)V

    .line 1825
    new-instance v0, Landroid/hardware/power/GpuHeadroomParams;

    invoke-direct {v0}, Landroid/hardware/power/GpuHeadroomParams;-><init>()V

    .line 1826
    iget-byte v1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    iput-byte v1, v0, Landroid/hardware/power/GpuHeadroomParams;->calculationType:B

    .line 1827
    iget p1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput p1, v0, Landroid/hardware/power/GpuHeadroomParams;->calculationWindowMillis:I

    .line 1828
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1829
    :try_start_23
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/GpuHeadroomResult;

    if-eqz v1, :cond_35

    .line 1838
    monitor-exit p1

    return-object v1

    :catchall_33
    move-exception p0

    goto :goto_6a

    .line 1840
    :cond_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_33

    const/4 p1, 0x0

    .line 1843
    :try_start_37
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/power/IPower;->getGpuHeadroom(Landroid/hardware/power/GpuHeadroomParams;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 1852
    const-string p0, "HintManagerService"

    const-string v0, "GPU headroom from Power HAL is invalid"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_4b
    move-exception p0

    goto :goto_62

    .line 1855
    :cond_4d
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_54} :catch_4b

    .line 1856
    :try_start_54
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1857
    monitor-exit v2

    return-object v1

    :catchall_5f
    move-exception p0

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_62} :catch_4b

    .line 1874
    :goto_62
    const-string v0, "HintManagerService"

    const-string v1, "Failed to get GPU headroom from Power HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 1840
    :goto_6a
    :try_start_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_33

    throw p0

    .line 1822
    :cond_6c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getGpuHeadroomMinIntervalMillis()J
    .registers 3

    .line 1930
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_18

    .line 1933
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, p0

    return-wide v0

    .line 1931
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getHintSessionThreadIds(Landroid/os/IHintSession;)[I
    .registers 2

    .line 1562
    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 1563
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getThreadIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getMaxGraphicsPipelineThreadsCount()I
    .registers 1

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;
    .registers 6

    .line 1521
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_44

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1522
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_44

    .line 1525
    :cond_17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    .line 1527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1528
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/power/hint/HintManagerService;->getOrCreateMappedChannelItem(IILandroid/os/IBinder;)Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    move-result-object p1

    .line 1532
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->getConfig()Landroid/hardware/power/ChannelConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/ChannelConfig;->eventFlagDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    if-nez v0, :cond_3f

    .line 1533
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;Ljava/lang/Boolean;)V

    .line 1534
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->closeSessionChannel()V

    return-object v2

    .line 1537
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->getConfig()Landroid/hardware/power/ChannelConfig;

    move-result-object p0

    return-object p0

    :cond_44
    :goto_44
    return-object v2
.end method

.method public final getUidApplicationCategory(I)I
    .registers 3

    .line 2099
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 2100
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x20000

    .line 2101
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2102
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return p0

    :catch_19
    const/4 p0, -0x1

    return p0
.end method

.method public final getUserModeJiffies()J
    .registers 8

    .line 2025
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string p0, "/proc/stat"

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;

    move-result-object p0

    .line 2026
    :goto_11
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2028
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 2029
    invoke-static {}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$sfgetPROC_STAT_CPU_TIME_TOTAL_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2030
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2031
    const-string/jumbo p0, "user"

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2032
    const-string/jumbo p0, "nice"

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2033
    const-string p0, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " nice: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " total "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catchall {:try_start_1b .. :try_end_74} :catchall_78

    .line 2040
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-wide v2

    :catchall_78
    move-exception p0

    goto :goto_94

    :cond_7a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2041
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find cpu line in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2026
    :goto_94
    :try_start_94
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_9c

    :catchall_98
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9c
    throw p0
.end method

.method public final synthetic lambda$createHintSessionWithConfig$1(Ljava/lang/Integer;)Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    .registers 2

    .line 1469
    new-instance p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p1, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    return-object p1
.end method

.method public final logPerformanceHintSessionAtom(IJJ[IIZZ)V
    .registers 10

    const/16 p0, 0x23e

    .line 2047
    array-length p6, p6

    invoke-static/range {p0 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJIIZZ)V

    return-void
.end method

.method public passSessionManagerBinder(Landroid/os/IBinder;)V
    .registers 4

    .line 1939
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_b

    return-void

    .line 1942
    :cond_b
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Landroid/adpf/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adpf/ISessionManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmSessionManager(Lcom/android/server/power/hint/HintManagerService;Landroid/adpf/ISessionManager;)V

    return-void
.end method

.method public registerClient(Landroid/os/IHintManager$IHintManagerClient;)Landroid/os/IHintManager$HintManagerClientData;
    .registers 2

    .line 1948
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getClientData()Landroid/os/IHintManager$HintManagerClientData;

    move-result-object p0

    return-object p0
.end method

.method public setHintSessionThreads(Landroid/os/IHintSession;[I)V
    .registers 3

    .line 1556
    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 1557
    invoke-virtual {p1, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreads([I)V

    return-void
.end method

.method public final updateSessionTag(II)I
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    return p1

    .line 2061
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getUidApplicationCategory(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_10

    if-eqz p0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x3

    return p0

    :cond_10
    return v0
.end method
