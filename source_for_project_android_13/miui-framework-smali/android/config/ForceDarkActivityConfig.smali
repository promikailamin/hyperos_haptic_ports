.class public Landroid/config/ForceDarkActivityConfig;
.super Ljava/lang/Object;
.source "ForceDarkActivityConfig.java"


# instance fields
.field private blacklist activityName:Ljava/lang/String;

.field private blacklist blackMask:Z

.field private blacklist forceDark:Z

.field private blacklist forceDarkViewConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getActivityName()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Landroid/config/ForceDarkActivityConfig;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getForceDark()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Landroid/config/ForceDarkActivityConfig;->forceDark:Z

    return v0
.end method

.method public blacklist getForceDarkViewConfigList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Landroid/config/ForceDarkActivityConfig;->forceDarkViewConfigList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasBlackMask()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Landroid/config/ForceDarkActivityConfig;->blackMask:Z

    return v0
.end method

.method public blacklist setActivityName(Ljava/lang/String;)V
    .registers 2
    .param p1, "activityName"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Landroid/config/ForceDarkActivityConfig;->activityName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public blacklist setBlackMask(Z)V
    .registers 2
    .param p1, "blackMask"    # Z

    .line 44
    iput-boolean p1, p0, Landroid/config/ForceDarkActivityConfig;->blackMask:Z

    .line 45
    return-void
.end method

.method public blacklist setForceDark(Z)V
    .registers 2
    .param p1, "forceDark"    # Z

    .line 20
    iput-boolean p1, p0, Landroid/config/ForceDarkActivityConfig;->forceDark:Z

    .line 21
    return-void
.end method

.method public blacklist setForceDarkViewConfigList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "forceDarkViewConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    iput-object p1, p0, Landroid/config/ForceDarkActivityConfig;->forceDarkViewConfigList:Ljava/util/List;

    .line 29
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceDarkActivityConfig{forceDark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/config/ForceDarkActivityConfig;->forceDark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkActivityConfig;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blackMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/config/ForceDarkActivityConfig;->blackMask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceDarkViewConfigList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkActivityConfig;->forceDarkViewConfigList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
