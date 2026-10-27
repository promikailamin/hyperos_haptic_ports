.class public Landroid/config/ForceDarkAppConfig;
.super Ljava/lang/Object;
.source "ForceDarkAppConfig.java"


# instance fields
.field private blacklist forceDark:Z

.field blacklist forceDarkActivityConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/config/ForceDarkActivityConfig;",
            ">;"
        }
    .end annotation
.end field

.field blacklist forceDarkViewGlobalConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mainRule:I

.field private blacklist secondaryRule:I

.field private blacklist tertiaryRule:I

.field blacklist versionCode:I

.field blacklist versionName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getForceDarkActivityConfigList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkActivityConfig;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/config/ForceDarkAppConfig;->forceDarkActivityConfigList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getForceDarkViewGlobalConfigList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/config/ForceDarkAppConfig;->forceDarkViewGlobalConfigList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getMainRule()I
    .registers 2

    .line 27
    iget v0, p0, Landroid/config/ForceDarkAppConfig;->mainRule:I

    return v0
.end method

.method public blacklist getSecondaryRule()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/config/ForceDarkAppConfig;->secondaryRule:I

    return v0
.end method

.method public blacklist getTertiaryRule()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/config/ForceDarkAppConfig;->tertiaryRule:I

    return v0
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/config/ForceDarkAppConfig;->versionCode:I

    return v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/config/ForceDarkAppConfig;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isForceDark()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Landroid/config/ForceDarkAppConfig;->forceDark:Z

    return v0
.end method

.method public blacklist setForceDark(Z)V
    .registers 2
    .param p1, "forceDark"    # Z

    .line 23
    iput-boolean p1, p0, Landroid/config/ForceDarkAppConfig;->forceDark:Z

    .line 24
    return-void
.end method

.method public blacklist setForceDarkActivityConfigList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkActivityConfig;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "forceDarkActivityConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    iput-object p1, p0, Landroid/config/ForceDarkAppConfig;->forceDarkActivityConfigList:Ljava/util/List;

    .line 72
    return-void
.end method

.method public blacklist setForceDarkViewGlobalConfigList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "forceDarkViewGlobalConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    iput-object p1, p0, Landroid/config/ForceDarkAppConfig;->forceDarkViewGlobalConfigList:Ljava/util/List;

    .line 80
    return-void
.end method

.method public blacklist setMainRule(I)V
    .registers 2
    .param p1, "mainRule"    # I

    .line 31
    iput p1, p0, Landroid/config/ForceDarkAppConfig;->mainRule:I

    .line 32
    return-void
.end method

.method public blacklist setSecondaryRule(I)V
    .registers 2
    .param p1, "secondaryRule"    # I

    .line 39
    iput p1, p0, Landroid/config/ForceDarkAppConfig;->secondaryRule:I

    .line 40
    return-void
.end method

.method public blacklist setTertiaryRule(I)V
    .registers 2
    .param p1, "tertiaryRule"    # I

    .line 47
    iput p1, p0, Landroid/config/ForceDarkAppConfig;->tertiaryRule:I

    .line 48
    return-void
.end method

.method public blacklist setVersionCode(I)V
    .registers 2
    .param p1, "versionCode"    # I

    .line 55
    iput p1, p0, Landroid/config/ForceDarkAppConfig;->versionCode:I

    .line 56
    return-void
.end method

.method public blacklist setVersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroid/config/ForceDarkAppConfig;->versionName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceDarkAppConfig{forceDark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/config/ForceDarkAppConfig;->forceDark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mainRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkAppConfig;->mainRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkAppConfig;->secondaryRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tertiaryRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkAppConfig;->tertiaryRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/config/ForceDarkAppConfig;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkAppConfig;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceDarkActivityConfigList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkAppConfig;->forceDarkActivityConfigList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceDarkViewGlobalConfigList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkAppConfig;->forceDarkViewGlobalConfigList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
