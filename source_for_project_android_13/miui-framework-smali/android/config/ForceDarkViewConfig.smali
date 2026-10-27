.class public Landroid/config/ForceDarkViewConfig;
.super Ljava/lang/Object;
.source "ForceDarkViewConfig.java"


# instance fields
.field private blacklist backgroundUsage:I

.field private blacklist blackMask:Z

.field private blacklist forceDark:Z

.field blacklist forceDarkViewPositionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewPositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist id:Ljava/lang/String;

.field private blacklist minX:I

.field private blacklist minY:I

.field private blacklist usage:I

.field private blacklist viewName:Ljava/lang/String;

.field private blacklist xmlIndexId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Landroid/config/ForceDarkViewConfig;->usage:I

    .line 22
    iput v0, p0, Landroid/config/ForceDarkViewConfig;->backgroundUsage:I

    return-void
.end method


# virtual methods
.method public blacklist getBackgroundUsage()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/config/ForceDarkViewConfig;->backgroundUsage:I

    return v0
.end method

.method public blacklist getForceDark()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Landroid/config/ForceDarkViewConfig;->forceDark:Z

    return v0
.end method

.method public blacklist getForceDarkViewPositionInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewPositionInfo;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroid/config/ForceDarkViewConfig;->forceDarkViewPositionInfoList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/config/ForceDarkViewConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinX()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/config/ForceDarkViewConfig;->minX:I

    return v0
.end method

.method public blacklist getMinY()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/config/ForceDarkViewConfig;->minY:I

    return v0
.end method

.method public blacklist getUsage()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/config/ForceDarkViewConfig;->usage:I

    return v0
.end method

.method public blacklist getViewName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Landroid/config/ForceDarkViewConfig;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getXmlIndexId()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/config/ForceDarkViewConfig;->xmlIndexId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasBlackMask()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/config/ForceDarkViewConfig;->blackMask:Z

    return v0
.end method

.method public blacklist setBackgroundUsage(I)V
    .registers 2
    .param p1, "backgroundUsage"    # I

    .line 95
    iput p1, p0, Landroid/config/ForceDarkViewConfig;->backgroundUsage:I

    .line 96
    return-void
.end method

.method public blacklist setBlackMask(Z)V
    .registers 2
    .param p1, "blackMask"    # Z

    .line 79
    iput-boolean p1, p0, Landroid/config/ForceDarkViewConfig;->blackMask:Z

    .line 80
    return-void
.end method

.method public blacklist setForceDark(Z)V
    .registers 2
    .param p1, "forceDark"    # Z

    .line 71
    iput-boolean p1, p0, Landroid/config/ForceDarkViewConfig;->forceDark:Z

    .line 72
    return-void
.end method

.method public blacklist setForceDarkViewPositionInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewPositionInfo;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    iput-object p1, p0, Landroid/config/ForceDarkViewConfig;->forceDarkViewPositionInfoList:Ljava/util/List;

    .line 104
    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Landroid/config/ForceDarkViewConfig;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public blacklist setMinX(I)V
    .registers 2
    .param p1, "minX"    # I

    .line 39
    iput p1, p0, Landroid/config/ForceDarkViewConfig;->minX:I

    .line 40
    return-void
.end method

.method public blacklist setMinY(I)V
    .registers 2
    .param p1, "minY"    # I

    .line 47
    iput p1, p0, Landroid/config/ForceDarkViewConfig;->minY:I

    .line 48
    return-void
.end method

.method public blacklist setUsage(I)V
    .registers 2
    .param p1, "usage"    # I

    .line 87
    iput p1, p0, Landroid/config/ForceDarkViewConfig;->usage:I

    .line 88
    return-void
.end method

.method public blacklist setViewName(Ljava/lang/String;)V
    .registers 2
    .param p1, "viewName"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Landroid/config/ForceDarkViewConfig;->viewName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public blacklist setXmlIndexId(Ljava/lang/String;)V
    .registers 2
    .param p1, "xmlIndexId"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroid/config/ForceDarkViewConfig;->xmlIndexId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceDarkViewConfig{minX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkViewConfig;->minX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkViewConfig;->minY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkViewConfig;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/config/ForceDarkViewConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceDark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/config/ForceDarkViewConfig;->forceDark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blackMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/config/ForceDarkViewConfig;->blackMask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkViewConfig;->usage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkViewConfig;->backgroundUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceDarkViewPositionInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkViewConfig;->forceDarkViewPositionInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
