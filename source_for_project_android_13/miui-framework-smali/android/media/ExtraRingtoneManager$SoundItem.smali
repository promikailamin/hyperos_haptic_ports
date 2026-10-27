.class Landroid/media/ExtraRingtoneManager$SoundItem;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExtraRingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundItem"
.end annotation


# instance fields
.field blacklist buildInPathRes:I

.field blacklist mCacheType:Ljava/lang/String;

.field blacklist mCacheUri:Landroid/net/Uri;

.field blacklist mDefaultRingtoneUri:Landroid/net/Uri;

.field blacklist mRingtoneType:I

.field blacklist mSettingType:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "ringtoneType"    # I
    .param p2, "defaultRingtoneUri"    # Landroid/net/Uri;
    .param p3, "settingType"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "cacheUri"    # Landroid/net/Uri;
    .param p6, "cacheType"    # Ljava/lang/String;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p1, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    .line 478
    iput-object p2, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 479
    iput-object p3, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    .line 480
    iput p4, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->buildInPathRes:I

    .line 481
    iput-object p5, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheUri:Landroid/net/Uri;

    .line 482
    iput-object p6, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheType:Ljava/lang/String;

    .line 483
    return-void
.end method
