.class interface abstract Landroid/media/RingtoneManagerStub;
.super Ljava/lang/Object;
.source "RingtoneManagerStub.java"


# direct methods
.method public static blacklist get()Landroid/media/RingtoneManagerStub;
    .registers 1

    .line 12
    const-class v0, Landroid/media/RingtoneManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RingtoneManagerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getCacheForType(II)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultType(Landroid/net/Uri;)I
    .registers 3
    .param p1, "defaultRingtoneUri"    # Landroid/net/Uri;

    .line 24
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDefaultUri(I)Landroid/net/Uri;
    .registers 3
    .param p1, "type"    # I

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSettingForType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
