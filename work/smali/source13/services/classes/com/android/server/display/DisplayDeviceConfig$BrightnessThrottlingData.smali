.class Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrightnessThrottlingData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    }
.end annotation


# instance fields
.field public throttlingLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;",
            ">;)V"
        }
    .end annotation

    .line 1557
    .local p1, "inLevels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 1559
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 1560
    .local v1, "level":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    iget v4, v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v5, v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    .end local v1    # "level":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    goto :goto_12

    .line 1562
    :cond_2d
    return-void
.end method

.method public static create(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
    .registers 2
    .param p0, "other"    # Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    .line 1543
    if-nez p0, :cond_4

    .line 1544
    const/4 v0, 0x0

    return-object v0

    .line 1546
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;",
            ">;)",
            "Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;"
        }
    .end annotation

    .line 1502
    .local p0, "throttlingLevels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;>;"
    const/4 v0, 0x0

    const-string v1, "DisplayDeviceConfig"

    if-eqz p0, :cond_bf

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_bf

    .line 1507
    :cond_d
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 1508
    .local v2, "prevLevel":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1509
    .local v3, "numLevels":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_7d

    .line 1510
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 1512
    .local v5, "thisLevel":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v7, v2, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    if-gt v6, v7, :cond_4c

    .line 1513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightnessThrottlingMap must be strictly increasing, ignoring configuration. ThermalStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-object v0

    .line 1519
    :cond_4c
    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    iget v7, v2, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_79

    .line 1520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightnessThrottlingMap must be strictly decreasing, ignoring configuration. Brightness "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    return-object v0

    .line 1526
    :cond_79
    move-object v2, v5

    .line 1509
    .end local v5    # "thisLevel":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1529
    .end local v4    # "i":I
    :cond_7d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 1531
    .local v5, "level":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b8

    .line 1532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "brightnessThrottlingMap contains a brightness value exceeding system max. Brightness "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " > "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return-object v0

    .line 1537
    .end local v5    # "level":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    :cond_b8
    goto :goto_81

    .line 1539
    :cond_b9
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1503
    .end local v2    # "prevLevel":Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
    .end local v3    # "numLevels":I
    :cond_bf
    :goto_bf
    const-string v2, "BrightnessThrottlingData received null or empty throttling levels"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrightnessThrottlingData{throttlingLevels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
