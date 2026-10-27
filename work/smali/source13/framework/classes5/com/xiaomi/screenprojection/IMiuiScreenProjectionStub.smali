.class public interface abstract Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
.super Ljava/lang/Object;
.source "IMiuiScreenProjectionStub.java"


# direct methods
.method public static blacklist getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .registers 1

    .line 9
    const-class v0, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getExtraCallScreenProjectFlag()I
.end method

.method public abstract blacklist getExtraPipScreenProjectFlag()I
.end method

.method public abstract blacklist getExtraScreenProjectFlag()I
.end method

.method public abstract blacklist getLastFrame(Ljava/lang/String;)Z
.end method

.method public abstract blacklist getMiuiCastModePackageSettingsKey()Ljava/lang/String;
.end method

.method public abstract blacklist getMiuiCastModeSettingsKey()Ljava/lang/String;
.end method

.method public abstract blacklist getMiuiHangUpSettingsKey()Ljava/lang/String;
.end method

.method public abstract blacklist getMiuiInScreeningSettingsKey()Ljava/lang/String;
.end method

.method public abstract blacklist getMiuiPrivacyOnSettingsKey()Ljava/lang/String;
.end method

.method public abstract blacklist getMiuiSmallWindowSettingsKey()Ljava/lang/String;
.end method

.method public abstract blacklist getProjectionBlackList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getScreenShareProjectBlackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist setProjectionBlackList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public blacklist setScreenShareProjectBlackList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method
