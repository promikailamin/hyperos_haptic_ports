.class public Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameModeConfiguration"
.end annotation


# static fields
.field public static final ANGLE_KEY:Ljava/lang/String; = "useAngle"

.field public static final DEFAULT_FPS:Ljava/lang/String; = ""

.field public static final DEFAULT_SCALING:Ljava/lang/String; = "1.0"

.field public static final FPS_KEY:Ljava/lang/String; = "fps"

.field public static final LOADING_BOOST_KEY:Ljava/lang/String; = "loadingBoost"

.field public static final MODE_KEY:Ljava/lang/String; = "mode"

.field public static final SCALING_KEY:Ljava/lang/String; = "downscaleFactor"

.field public static final TAG:Ljava/lang/String; = "GameManagerService_GameModeConfiguration"


# instance fields
.field private mFps:Ljava/lang/String;

.field private final mGameMode:I

.field private final mLoadingBoostDuration:I

.field private mScaling:Ljava/lang/String;

.field private final mUseAngle:Z

.field final synthetic this$1:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V
    .registers 7
    .param p1, "this$1"    # Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .param p2, "parser"    # Landroid/util/KeyValueListParser;

    .line 599
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$1:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const-string/jumbo v0, "mode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    .line 605
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v2

    const-string v3, "1.0"

    if-eqz v2, :cond_25

    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_25

    .line 606
    :cond_1e
    const-string v2, "downscaleFactor"

    invoke-virtual {p2, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_25
    :goto_25
    nop

    :goto_26
    iput-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    .line 608
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3d

    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 609
    const-string v2, "fps"

    invoke-virtual {p2, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3e

    :cond_3d
    nop

    :goto_3e
    iput-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    .line 614
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowAngle(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v2

    if-nez v2, :cond_57

    .line 615
    const-string/jumbo v2, "useAngle"

    invoke-virtual {p2, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v1, 0x1

    goto :goto_58

    :cond_57
    nop

    :goto_58
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    .line 617
    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_62

    goto :goto_69

    .line 618
    :cond_62
    const-string/jumbo v0, "loadingBoost"

    invoke-virtual {p2, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_69
    iput v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    .line 619
    return-void
.end method


# virtual methods
.method public getCompatChangeId()J
    .registers 3

    .line 669
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->getCompatChangeId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFps()I
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->getFpsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGameMode()I
    .registers 2

    .line 622
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    return v0
.end method

.method public getLoadingBoostDuration()I
    .registers 2

    .line 638
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    return v0
.end method

.method public getScaling()Ljava/lang/String;
    .registers 2

    .line 626
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    return-object v0
.end method

.method public getUseAngle()Z
    .registers 2

    .line 634
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    return v0
.end method

.method public isValid()Z
    .registers 4

    .line 650
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    :cond_b
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$1:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 653
    invoke-virtual {v2, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 650
    :goto_15
    return v1
.end method

.method public setFpsStr(Ljava/lang/String;)V
    .registers 2
    .param p1, "fpsStr"    # Ljava/lang/String;

    .line 646
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    .line 647
    return-void
.end method

.method public setScaling(Ljava/lang/String;)V
    .registers 2
    .param p1, "scaling"    # Ljava/lang/String;

    .line 642
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Game Mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Scaling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Use Angle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Loading Boost Duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
