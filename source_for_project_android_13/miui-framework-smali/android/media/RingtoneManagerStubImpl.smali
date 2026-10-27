.class public Landroid/media/RingtoneManagerStubImpl;
.super Ljava/lang/Object;
.source "RingtoneManagerStubImpl.java"

# interfaces
.implements Landroid/media/RingtoneManagerStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCacheForType(II)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .line 20
    invoke-static {p1, p2}, Landroid/media/ExtraRingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultType(Landroid/net/Uri;)I
    .registers 3
    .param p1, "defaultRingtoneUri"    # Landroid/net/Uri;

    .line 25
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public blacklist getDefaultUri(I)Landroid/net/Uri;
    .registers 3
    .param p1, "type"    # I

    .line 30
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSettingForType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 15
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
