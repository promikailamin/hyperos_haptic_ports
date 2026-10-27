.class public Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# instance fields
.field public mFps:Ljava/lang/String;

.field public final mGameMode:I

.field public mLoadingBoostDuration:I

.field public mScaling:F

.field public mUseAngle:Z

.field public final synthetic this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;I)V
    .registers 3

    .line 686
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 681
    iput p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    .line 682
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    .line 687
    iput p2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    const/4 p1, 0x0

    .line 688
    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    const/4 p1, -0x1

    .line 689
    iput p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V
    .registers 8

    .line 692
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 681
    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    .line 682
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    .line 693
    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    .line 698
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_2a

    .line 699
    :cond_24
    const-string v4, "downscaleFactor"

    invoke-virtual {p2, v4, v0}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :cond_2a
    :goto_2a
    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    .line 701
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 702
    const-string v0, "fps"

    invoke-virtual {p2, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3e
    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    .line 707
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowAngle(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    if-nez v0, :cond_56

    const-string/jumbo v0, "useAngle"

    .line 708
    invoke-virtual {p2, v0, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v3, 0x1

    :cond_56
    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    .line 710
    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_60

    goto :goto_67

    .line 712
    :cond_60
    const-string/jumbo p1, "loadingBoost"

    invoke-virtual {p2, p1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_67
    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getFps()I
    .registers 2

    monitor-enter p0

    .line 725
    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_c
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 726
    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    .line 727
    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0

    .line 728
    :catch_c
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized getFpsStr()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 733
    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getGameMode()I
    .registers 1

    .line 716
    iget p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    return p0
.end method

.method public declared-synchronized getLoadingBoostDuration()I
    .registers 2

    monitor-enter p0

    .line 741
    :try_start_1
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getScaling()F
    .registers 2

    monitor-enter p0

    .line 720
    :try_start_1
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getUseAngle()Z
    .registers 2

    monitor-enter p0

    .line 737
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isActive()Z
    .registers 4

    .line 761
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    const/4 v2, 0x4

    if-ne v0, v2, :cond_17

    :cond_e
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 765
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result p0

    if-nez p0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized setFpsStr(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 749
    :try_start_1
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 750
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setLoadingBoostDuration(I)V
    .registers 2

    monitor-enter p0

    .line 757
    :try_start_1
    iput p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 758
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setScaling(F)V
    .registers 2

    monitor-enter p0

    .line 745
    :try_start_1
    iput p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 746
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setUseAngle(Z)V
    .registers 2

    monitor-enter p0

    .line 753
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 754
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public toPublicGameModeConfig()Landroid/app/GameModeConfiguration;
    .registers 3

    const/4 v0, 0x0

    .line 771
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move v1, v0

    :goto_9
    if-lez v1, :cond_c

    move v0, v1

    .line 778
    :cond_c
    iget p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_16

    const/high16 p0, 0x3f800000    # 1.0f

    .line 779
    :cond_16
    new-instance v1, Landroid/app/GameModeConfiguration$Builder;

    invoke-direct {v1}, Landroid/app/GameModeConfiguration$Builder;-><init>()V

    .line 780
    invoke-virtual {v1, p0}, Landroid/app/GameModeConfiguration$Builder;->setScalingFactor(F)Landroid/app/GameModeConfiguration$Builder;

    move-result-object p0

    .line 781
    invoke-virtual {p0, v0}, Landroid/app/GameModeConfiguration$Builder;->setFpsOverride(I)Landroid/app/GameModeConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/GameModeConfiguration$Builder;->build()Landroid/app/GameModeConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Game Mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Scaling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",Use Angle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",Fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Loading Boost Duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFromPublicGameModeConfig(Landroid/app/GameModeConfiguration;)V
    .registers 3

    .line 785
    invoke-virtual {p1}, Landroid/app/GameModeConfiguration;->getScalingFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    .line 786
    invoke-virtual {p1}, Landroid/app/GameModeConfiguration;->getFpsOverride()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    return-void
.end method
