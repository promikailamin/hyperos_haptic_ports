.class public final Landroid/app/NotificationChannel;
.super Ljava/lang/Object;
.source "NotificationChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ALLOW_BUBBLE_OFF:I = 0x0

.field public static final blacklist ALLOW_BUBBLE_ON:I = 0x1

.field private static final blacklist ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubbles"

.field private static final greylist-max-o ATT_BLOCKABLE_SYSTEM:Ljava/lang/String; = "blockable_system"

.field private static final greylist-max-o ATT_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final blacklist ATT_CONVERSATION_ID:Ljava/lang/String; = "conv_id"

.field private static final greylist-max-o ATT_DELETED:Ljava/lang/String; = "deleted"

.field private static final blacklist ATT_DELETED_TIME_MS:Ljava/lang/String; = "del_time"

.field private static final blacklist ATT_DEMOTE:Ljava/lang/String; = "dem"

.field private static final greylist-max-o ATT_DESC:Ljava/lang/String; = "desc"

.field private static final greylist-max-o ATT_FG_SERVICE_SHOWN:Ljava/lang/String; = "fgservice"

.field private static final greylist-max-o ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o ATT_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final blacklist ATT_IMP_CONVERSATION:Ljava/lang/String; = "imp_conv"

.field private static final greylist-max-o ATT_LIGHTS:Ljava/lang/String; = "lights"

.field private static final greylist-max-o ATT_LIGHT_COLOR:Ljava/lang/String; = "light_color"

.field private static final greylist-max-o ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATT_ORIG_IMP:Ljava/lang/String; = "orig_imp"

.field private static final blacklist ATT_PARENT_CHANNEL:Ljava/lang/String; = "parent"

.field private static final greylist-max-o ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final greylist-max-o ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final greylist-max-o ATT_SOUND:Ljava/lang/String; = "sound"

.field private static final greylist-max-o ATT_USAGE:Ljava/lang/String; = "usage"

.field private static final greylist-max-o ATT_USER_LOCKED:Ljava/lang/String; = "locked"

.field private static final greylist-max-o ATT_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final blacklist ATT_VIBRATION_EFFECT:Ljava/lang/String; = "vibration_effect"

.field private static final greylist-max-o ATT_VIBRATION_ENABLED:Ljava/lang/String; = "vibration_enabled"

.field private static final greylist-max-o ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_ALLOW_BUBBLE:I = -0x1

.field public static final whitelist DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final greylist-max-o DEFAULT_DELETED:Z = false

.field private static final blacklist DEFAULT_DELETION_TIME_MS:J = -0x1L

.field private static final greylist-max-o DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final greylist-max-o DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final greylist-max-o DEFAULT_SHOW_BADGE:Z = true

.field private static final greylist-max-o DEFAULT_VISIBILITY:I = -0x3e8

.field private static final greylist-max-o DELIMITER:Ljava/lang/String; = ","

.field public static final whitelist EDIT_CONVERSATION:Ljava/lang/String; = "conversation"

.field public static final whitelist EDIT_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final whitelist EDIT_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final whitelist EDIT_LOCKED_DEVICE:Ljava/lang/String; = "locked"

.field public static final whitelist EDIT_SOUND:Ljava/lang/String; = "sound"

.field public static final whitelist EDIT_VIBRATION:Ljava/lang/String; = "vibration"

.field public static final whitelist EDIT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o LOCKABLE_FIELDS:[I

.field public static final blacklist MAX_SERIALIZED_VIBRATION_LENGTH:I = 0x8000

.field public static final greylist-max-o MAX_TEXT_LENGTH:I = 0x3e8

.field public static final blacklist MAX_VIBRATION_LENGTH:I = 0x1f4

.field public static final blacklist NEWS_ID:Ljava/lang/String; = "android.app.news"

.field public static final blacklist OLD_CONVERSATION_CHANNEL_ID_FORMAT:Ljava/lang/String; = "%1$s : %2$s"

.field public static final blacklist PLACEHOLDER_CONVERSATION_ID:Ljava/lang/String; = ":placeholder_id"

.field public static final blacklist PROMOTIONS_ID:Ljava/lang/String; = "android.app.promotions"

.field public static final blacklist RECS_ID:Ljava/lang/String; = "android.app.recs"

.field public static final blacklist SOCIAL_MEDIA_ID:Ljava/lang/String; = "android.app.social"

.field public static final blacklist SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationChannel"

.field private static final greylist-max-o TAG_CHANNEL:Ljava/lang/String; = "channel"

.field public static final blacklist USER_LOCKED_ALLOW_BUBBLE:I = 0x100

.field public static final greylist-max-o USER_LOCKED_IMPORTANCE:I = 0x4

.field public static final greylist-max-o USER_LOCKED_LIGHTS:I = 0x8

.field public static final greylist-max-o USER_LOCKED_PRIORITY:I = 0x1

.field public static final greylist-max-o USER_LOCKED_SHOW_BADGE:I = 0x80

.field public static final whitelist USER_LOCKED_SOUND:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USER_LOCKED_VIBRATION:I = 0x10

.field public static final greylist-max-o USER_LOCKED_VISIBILITY:I = 0x2


# instance fields
.field private blacklist mAllowBubbles:I

.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mBlockableSystem:Z

.field private greylist-max-o mBypassDnd:Z

.field private blacklist mConversationId:Ljava/lang/String;

.field private greylist-max-o mDeleted:Z

.field private blacklist mDeletedTime:J

.field private blacklist mDemoted:Z

.field private greylist-max-o mDesc:Ljava/lang/String;

.field private greylist-max-o mGroup:Ljava/lang/String;

.field private greylist mId:Ljava/lang/String;

.field private greylist-max-o mImportance:I

.field private blacklist mImportanceLockedDefaultApp:Z

.field private blacklist mImportantConvo:Z

.field private blacklist mLastNotificationUpdateTimeMs:J

.field private greylist-max-o mLightColor:I

.field private greylist-max-o mLights:Z

.field private greylist-max-o mLockscreenVisibility:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mOriginalImportance:I

.field private blacklist mParentId:Ljava/lang/String;

.field private greylist-max-o mShowBadge:Z

.field private greylist-max-o mSound:Landroid/net/Uri;

.field private blacklist mSoundRestored:Z

.field private greylist-max-o mUserLockedFields:I

.field private blacklist mUserVisibleTaskShown:Z

.field private blacklist mVibrationEffect:Landroid/os/VibrationEffect;

.field private greylist-max-o mVibrationEnabled:Z

.field private blacklist mVibrationPattern:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    const-string v1, "android.app.news"

    const-string v2, "android.app.social"

    const-string v3, "android.app.promotions"

    const-string v4, "android.app.recs"

    invoke-static {v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 268
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Landroid/app/NotificationChannel;->LOCKABLE_FIELDS:[I

    .line 1649
    new-instance v0, Landroid/app/NotificationChannel$1;

    invoke-direct {v0}, Landroid/app/NotificationChannel$1;-><init>()V

    sput-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_24
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x80
        0x100
    .end array-data
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 306
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 308
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 309
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 312
    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 320
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 321
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 323
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 325
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 326
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 328
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 329
    iput-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 330
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 331
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 332
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 336
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_44

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    goto :goto_46

    .line 363
    :cond_44
    iput-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 365
    :goto_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_57

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    goto :goto_59

    .line 368
    :cond_57
    iput-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 370
    :goto_59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_6a

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    goto :goto_6c

    .line 373
    :cond_6a
    iput-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 375
    :goto_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_7a

    move v3, v1

    goto :goto_7b

    :cond_7a
    move v3, v0

    :goto_7b
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_a4

    .line 379
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 380
    iget-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    goto :goto_a6

    .line 382
    :cond_a4
    iput-object v2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 384
    :goto_a6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_ae

    move v3, v1

    goto :goto_af

    :cond_ae
    move v3, v0

    :goto_af
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mLights:Z

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_bf

    move v3, v1

    goto :goto_c0

    :cond_bf
    move v3, v0

    :goto_c0
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_ca

    move v3, v1

    goto :goto_cb

    :cond_ca
    move v3, v0

    :goto_cb
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_d5

    move v3, v1

    goto :goto_d6

    :cond_d5
    move v3, v0

    :goto_d6
    iput-boolean v3, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_df

    move v0, v1

    :cond_df
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f2

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    goto :goto_f4

    .line 393
    :cond_f2
    iput-object v2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 395
    :goto_f4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_103

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    goto :goto_104

    :cond_103
    move-object v0, v2

    :goto_104
    iput-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 408
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    const/16 v1, 0x1f4

    if-eqz v0, :cond_163

    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    array-length v0, v0

    if-le v0, v1, :cond_163

    .line 409
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 411
    :cond_163
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 412
    nop

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_179

    sget-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/VibrationEffect;

    :cond_179
    iput-object v2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 417
    iget-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz p1, :cond_189

    .line 418
    iget-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p1, v1}, Landroid/os/VibrationEffect;->cropToLengthOrNull(I)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 419
    if-eqz p1, :cond_189

    .line 420
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 424
    :cond_189
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 8

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 306
    iput v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 308
    iput v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 309
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 312
    iput v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 320
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 321
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 323
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 325
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 326
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 328
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 329
    iput-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 330
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 331
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 332
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 336
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    .line 351
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 352
    if-eqz p2, :cond_43

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_43
    iput-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 353
    iput p3, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 354
    return-void
.end method

.method private blacklist getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5

    .line 1287
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1288
    return-object p2

    .line 1291
    :cond_9
    const-string v0, "android.resource"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1293
    :try_start_15
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_19

    .line 1294
    return-object p2

    .line 1295
    :catch_19
    move-exception p1

    .line 1296
    const/4 p1, 0x0

    return-object p1

    .line 1300
    :cond_1c
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1301
    return-object p2

    .line 1303
    :cond_29
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist getChannelIdForBundleType(I)Ljava/lang/String;
    .registers 1

    .line 1636
    packed-switch p0, :pswitch_data_12

    .line 1646
    const/4 p0, 0x0

    return-object p0

    .line 1638
    :pswitch_5
    const-string p0, "android.app.recs"

    return-object p0

    .line 1640
    :pswitch_8
    const-string p0, "android.app.news"

    return-object p0

    .line 1644
    :pswitch_b
    const-string p0, "android.app.social"

    return-object p0

    .line 1642
    :pswitch_e
    const-string p0, "android.app.promotions"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getFieldsString()Ljava/lang/String;
    .registers 4

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "hasDescription "

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBypassDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLockscreenVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLightColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 1742
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1744
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v1, :cond_82

    const-string/jumbo v1, "null"

    goto :goto_88

    :cond_82
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserLockedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 1745
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserVisibleTaskShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGroup=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlockableSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowBubbles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportanceLockedDefaultApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginalImp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDemoted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImportantConvo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastNotificationUpdateTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1735
    return-object v0
.end method

.method private greylist-max-o getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4

    .line 1389
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_3f

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3f

    .line 1394
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/app/NotificationChannel;->getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1395
    if-nez p1, :cond_1c

    .line 1397
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1d

    return-object p1

    .line 1399
    :cond_1c
    return-object p1

    .line 1400
    :catch_1d
    move-exception p1

    .line 1401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find file for sound "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " using default"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationChannel"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object p1

    .line 1391
    :cond_3f
    :goto_3f
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 611
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_10

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 614
    :cond_10
    return-object p1
.end method

.method private blacklist getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 5

    .line 621
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 622
    return-object v0

    .line 625
    :cond_4
    nop

    .line 626
    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Landroid/os/VibrationEffect;->cropToLengthOrNull(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 627
    if-eqz v1, :cond_e

    .line 628
    move-object p1, v1

    .line 630
    :cond_e
    invoke-static {p1}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x8000

    if-le v1, v2, :cond_1c

    .line 631
    return-object v0

    .line 633
    :cond_1c
    return-object p1
.end method

.method private blacklist getUncanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 6

    .line 1309
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1310
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1311
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_5c

    .line 1314
    :cond_21
    nop

    .line 1317
    const/4 v0, 0x4

    if-ne v0, p3, :cond_26

    .line 1318
    goto :goto_2c

    .line 1319
    :cond_26
    const/4 v0, 0x6

    if-ne v0, p3, :cond_2b

    .line 1320
    const/4 v0, 0x1

    goto :goto_2c

    .line 1322
    :cond_2b
    const/4 v0, 0x2

    .line 1325
    :goto_2c
    nop

    .line 1326
    :try_start_2d
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1325
    invoke-static {p1, p3, v0}, Landroid/media/RingtoneManager;->getRingtoneUriForRestore(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_35} :catch_36

    return-object p1

    .line 1327
    :catch_36
    move-exception p1

    .line 1328
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to uncanonicalized sound uri for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationChannel"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object p1

    .line 1312
    :cond_5c
    :goto_5c
    return-object p2
.end method

.method private static greylist-max-o longArrayToString([J)Ljava/lang/String;
    .registers 5

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1620
    if-eqz p0, :cond_26

    array-length v1, p0

    if-lez v1, :cond_26

    .line 1621
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1e

    .line 1622
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1624
    :cond_1e
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1626
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V
    .registers 11

    .line 1226
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    if-eqz p4, :cond_7

    goto :goto_9

    :cond_7
    move v2, v1

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    :goto_a
    const-string v3, "forRestore is true but got null context"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1230
    const-string v2, "desc"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 1231
    nop

    .line 1232
    const-string/jumbo v2, "priority"

    invoke-static {p1, v2, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    .line 1231
    :goto_25
    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 1233
    const-string/jumbo v0, "visibility"

    const/16 v2, -0x3e8

    invoke-static {p1, v0, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1235
    const-string/jumbo v0, "sound"

    invoke-static {p1, v0}, Landroid/app/NotificationChannel;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1237
    invoke-static {p1}, Landroid/app/NotificationChannel;->safeAudioAttributes(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1238
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    .line 1239
    if-eqz p2, :cond_49

    invoke-virtual {p0, p4, v0, p3, v5}, Landroid/app/NotificationChannel;->restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;ZI)Landroid/net/Uri;

    move-result-object v0

    :cond_49
    invoke-virtual {p0, v0, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1242
    const-string/jumbo p2, "lights"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1243
    const-string/jumbo p2, "light_color"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 1247
    const-string/jumbo p2, "vibration"

    invoke-static {p1, p2, v3}, Landroid/app/NotificationChannel;->safeLongArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[J)[J

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 1248
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 1249
    const-string/jumbo p2, "vibration_effect"

    invoke-static {p1, p2}, Landroid/app/NotificationChannel;->safeVibrationEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 1250
    if-eqz p2, :cond_7c

    .line 1255
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setVibrationEffect(Landroid/os/VibrationEffect;)V

    .line 1258
    :cond_7c
    const-string/jumbo p2, "vibration_enabled"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1259
    const-string/jumbo p2, "show_badge"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1260
    const-string p2, "deleted"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1261
    const-string p2, "del_time"

    const-wide/16 p3, -0x1

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 1263
    const-string p2, "group"

    invoke-interface {p1, v3, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 1264
    const-string/jumbo p2, "locked"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1265
    const-string p2, "fgservice"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 1266
    const-string p2, "blockable_system"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 1267
    const-string p2, "allow_bubbles"

    const/4 p3, -0x1

    invoke-static {p1, p2, p3}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 1268
    const-string/jumbo p2, "orig_imp"

    invoke-static {p1, p2, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 1269
    const-string/jumbo p2, "parent"

    invoke-interface {p1, v3, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1270
    const-string p3, "conv_id"

    invoke-interface {p1, v3, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1269
    invoke-virtual {p0, p2, p3}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-string p2, "dem"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    .line 1272
    const-string p2, "imp_conv"

    invoke-static {p1, p2, v1}, Landroid/app/NotificationChannel;->safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 1273
    return-void
.end method

.method private static blacklist safeAudioAttributes(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/media/AudioAttributes;
    .registers 5

    .line 1554
    const-string/jumbo v0, "usage"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 1555
    const-string v1, "content_type"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1557
    const-string v2, "flags"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/app/NotificationChannel;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p0

    .line 1558
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1559
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1560
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1561
    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 1562
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    .line 1558
    return-object p0
.end method

.method private static blacklist safeBool(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .registers 4

    .line 1600
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static blacklist safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4

    .line 1596
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static blacklist safeLongArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[J)[J
    .registers 5

    .line 1604
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object p2

    .line 1606
    :cond_c
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1607
    array-length p1, p0

    new-array p1, p1, [J

    .line 1608
    const/4 p2, 0x0

    :goto_16
    array-length v0, p0

    if-ge p2, v0, :cond_2a

    .line 1610
    :try_start_19
    aget-object v0, p0, p2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    aput-wide v0, p1, p2
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_21} :catch_22

    .line 1613
    goto :goto_27

    .line 1611
    :catch_22
    move-exception v0

    .line 1612
    const-wide/16 v0, 0x0

    aput-wide v0, p1, p2

    .line 1608
    :goto_27
    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    .line 1615
    :cond_2a
    return-object p1
.end method

.method private static blacklist safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1566
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1567
    if-nez p0, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method private static blacklist safeVibrationEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/os/VibrationEffect;
    .registers 4

    .line 1583
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1584
    if-eqz p0, :cond_1a

    .line 1586
    :try_start_7
    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    return-object p0

    .line 1588
    :catch_12
    move-exception p0

    .line 1589
    const-string p1, "NotificationChannel"

    const-string v1, "Unable to read serialized vibration effect"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1592
    :cond_1a
    return-object v0
.end method

.method private static blacklist vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;
    .registers 5

    .line 1572
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1574
    const/4 v1, 0x1

    :try_start_6
    invoke-static {p0, v0, v1}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1578
    goto :goto_23

    .line 1576
    :catch_a
    move-exception v1

    .line 1577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize vibration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NotificationChannel"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    :goto_23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1411
    if-eqz p2, :cond_7

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :goto_8
    const-string v1, "forBackup is true but got null context"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1413
    const/4 v0, 0x0

    const-string v1, "channel"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1414
    const-string v2, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1415
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1416
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1418
    :cond_30
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 1419
    const-string v2, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1421
    :cond_3f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_50

    .line 1422
    const-string v2, "importance"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1424
    :cond_50
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1425
    const-string/jumbo v2, "priority"

    const/4 v4, 0x2

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1427
    :cond_5d
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-eq v2, v3, :cond_6d

    .line 1428
    const-string/jumbo v2, "visibility"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1430
    :cond_6d
    if-eqz p2, :cond_74

    invoke-direct {p0, p3}, Landroid/app/NotificationChannel;->getSoundForBackup(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_78

    :cond_74
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p2

    .line 1431
    :goto_78
    if-eqz p2, :cond_84

    .line 1432
    const-string/jumbo p3, "sound"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1434
    :cond_84
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    if-eqz p2, :cond_b2

    .line 1435
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p2

    const-string/jumbo p3, "usage"

    invoke-interface {p1, v0, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p2

    const-string p3, "content_type"

    invoke-interface {p1, v0, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1437
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result p2

    const-string p3, "flags"

    invoke-interface {p1, v0, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1439
    :cond_b2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 1440
    const-string/jumbo p2, "lights"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1442
    :cond_c2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p2

    if-eqz p2, :cond_d2

    .line 1443
    const-string/jumbo p2, "light_color"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1445
    :cond_d2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p2

    if-eqz p2, :cond_e2

    .line 1446
    const-string/jumbo p2, "vibration_enabled"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1448
    :cond_e2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p2

    if-eqz p2, :cond_f6

    .line 1449
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p2

    invoke-static {p2}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "vibration"

    invoke-interface {p1, v0, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1451
    :cond_f6
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    if-eqz p2, :cond_119

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p2

    if-nez p2, :cond_119

    .line 1455
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-static {p2}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object p2

    .line 1456
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const v2, 0x8000

    if-gt p3, v2, :cond_119

    .line 1457
    const-string/jumbo p3, "vibration_effect"

    invoke-interface {p1, v0, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1460
    :cond_119
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p2

    if-eqz p2, :cond_129

    .line 1461
    const-string/jumbo p2, "locked"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1463
    :cond_129
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result p2

    if-eqz p2, :cond_138

    .line 1464
    const-string p2, "fgservice"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1466
    :cond_138
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p2

    if-eqz p2, :cond_148

    .line 1467
    const-string/jumbo p2, "show_badge"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1469
    :cond_148
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-eqz p2, :cond_157

    .line 1470
    const-string p2, "deleted"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1472
    :cond_157
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide p2

    const-wide/16 v4, 0x0

    cmp-long p2, p2, v4

    if-ltz p2, :cond_16a

    .line 1473
    const-string p2, "del_time"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    invoke-interface {p1, v0, p2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1475
    :cond_16a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_179

    .line 1476
    const-string p2, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1478
    :cond_179
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result p2

    if-eqz p2, :cond_188

    .line 1479
    const-string p2, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1481
    :cond_188
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_198

    .line 1482
    const-string p2, "allow_bubbles"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1484
    :cond_198
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p2

    if-eq p2, v3, :cond_1a8

    .line 1485
    const-string/jumbo p2, "orig_imp"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1487
    :cond_1a8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1b8

    .line 1488
    const-string/jumbo p2, "parent"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1490
    :cond_1b8
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1c7

    .line 1491
    const-string p2, "conv_id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1493
    :cond_1c7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result p2

    if-eqz p2, :cond_1d6

    .line 1494
    const-string p2, "dem"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1496
    :cond_1d6
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p2

    if-eqz p2, :cond_1e5

    .line 1497
    const-string p2, "imp_conv"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1503
    :cond_1e5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1504
    return-void
.end method


# virtual methods
.method public whitelist canBubble()Z
    .registers 3

    .line 1053
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist canBypassDnd()Z
    .registers 2

    .line 924
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    return v0
.end method

.method public whitelist canShowBadge()Z
    .registers 2

    .line 1034
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    return v0
.end method

.method public blacklist copy()Landroid/app/NotificationChannel;
    .registers 5

    .line 499
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 500
    iget-object v1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 501
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 502
    iget v1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 503
    iget-object v1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 504
    iget v1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 505
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 506
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 507
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 508
    iget-object v1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationEffect(Landroid/os/VibrationEffect;)V

    .line 510
    :cond_3b
    iget v1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 511
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 512
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 513
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 514
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 515
    iget-object v1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 516
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 517
    iget v1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 518
    iget v1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 519
    iget-object v1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDemoted(Z)V

    .line 521
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 522
    iget-wide v1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    .line 523
    iget-boolean v1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 524
    iget-wide v1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setLastNotificationUpdateTimeMs(J)V

    .line 526
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1664
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    .line 1716
    if-eqz p3, :cond_c

    iget-object p3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p3, v0}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_e

    :cond_c
    iget-object p3, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 1717
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationChannel{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1720
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v0, 0x7d

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    .line 1766
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1768
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1769
    const-wide v0, 0x10900000002L

    iget-object v2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1770
    const-wide v0, 0x10900000003L

    iget-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1771
    const-wide v0, 0x10500000004L

    iget v2, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1772
    const-wide v0, 0x10800000005L

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1773
    const-wide v0, 0x10500000006L

    iget v2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1774
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz v0, :cond_52

    .line 1775
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1777
    :cond_52
    const-wide v0, 0x10800000008L

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1778
    const-wide v0, 0x10500000009L

    iget v2, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1779
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    if-eqz v0, :cond_7d

    .line 1780
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6e
    if-ge v2, v1, :cond_7d

    aget-wide v3, v0, v2

    .line 1781
    const-wide v5, 0x2030000000aL

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1780
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 1784
    :cond_7d
    const-wide v0, 0x1050000000bL

    iget v2, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1785
    const-wide v0, 0x10800000012L

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1786
    const-wide v0, 0x1080000000cL

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1787
    const-wide v0, 0x1080000000dL

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1788
    const-wide v0, 0x1080000000eL

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1789
    const-wide v0, 0x1090000000fL

    iget-object v2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1790
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_c7

    .line 1791
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    const-wide v1, 0x10b00000010L

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioAttributes;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1793
    :cond_c7
    const-wide v0, 0x10800000011L

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1794
    const-wide v0, 0x10800000013L

    iget v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1796
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1797
    return-void
.end method

.method public whitelist enableLights(Z)V
    .registers 2

    .line 701
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mLights:Z

    .line 702
    return-void
.end method

.method public whitelist enableVibration(Z)V
    .registers 2

    .line 723
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 724
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1669
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1670
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_12c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_12c

    .line 1671
    :cond_13
    check-cast p1, Landroid/app/NotificationChannel;

    .line 1672
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-ne v2, v3, :cond_12a

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    iget-boolean v3, p1, Landroid/app/NotificationChannel;->mBypassDnd:Z

    if-ne v2, v3, :cond_12a

    .line 1674
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    if-ne v2, v3, :cond_12a

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mLights:Z

    iget-boolean v3, p1, Landroid/app/NotificationChannel;->mLights:Z

    if-ne v2, v3, :cond_12a

    .line 1676
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    if-ne v2, v3, :cond_12a

    .line 1677
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    if-ne v2, v3, :cond_12a

    .line 1678
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v3

    if-ne v2, v3, :cond_12a

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    iget-boolean v3, p1, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    if-ne v2, v3, :cond_12a

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    iget-boolean v3, p1, Landroid/app/NotificationChannel;->mShowBadge:Z

    if-ne v2, v3, :cond_12a

    .line 1681
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-ne v2, v3, :cond_12a

    .line 1682
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_12a

    .line 1683
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v3

    if-ne v2, v3, :cond_12a

    iget v2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    iget v3, p1, Landroid/app/NotificationChannel;->mAllowBubbles:I

    if-ne v2, v3, :cond_12a

    .line 1685
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1686
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    iget-object v2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 1687
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1688
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    iget-object v2, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    iget-object v3, p1, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 1689
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1690
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1691
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1692
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    iget-boolean v2, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    iget-boolean v3, p1, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    if-ne v2, v3, :cond_12a

    iget v2, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    iget v3, p1, Landroid/app/NotificationChannel;->mOriginalImportance:I

    if-ne v2, v3, :cond_12a

    .line 1695
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1696
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1697
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v3

    if-ne v2, v3, :cond_12a

    .line 1698
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p1

    if-ne v2, p1, :cond_12a

    goto :goto_12b

    :cond_12a
    move v0, v1

    .line 1672
    :goto_12b
    return v0

    .line 1670
    :cond_12c
    :goto_12c
    return v1
.end method

.method public blacklist getAllowBubbles()I
    .registers 2

    .line 1060
    iget v0, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    return v0
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 958
    iget-object v0, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getConversationId()Ljava/lang/String;
    .registers 2

    .line 1076
    iget-object v0, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeletedTimeMs()J
    .registers 3

    .line 1091
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    return-wide v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 903
    iget-object v0, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroup()Ljava/lang/String;
    .registers 2

    .line 1043
    iget-object v0, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 889
    iget-object v0, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImportance()I
    .registers 2

    .line 915
    iget v0, p0, Landroid/app/NotificationChannel;->mImportance:I

    return v0
.end method

.method public blacklist getLastNotificationUpdateTimeMs()J
    .registers 3

    .line 1194
    iget-wide v0, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    return-wide v0
.end method

.method public whitelist getLightColor()I
    .registers 2

    .line 973
    iget v0, p0, Landroid/app/NotificationChannel;->mLightColor:I

    return v0
.end method

.method public whitelist getLockscreenVisibility()I
    .registers 2

    .line 1024
    iget v0, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 896
    iget-object v0, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOriginalImportance()I
    .registers 2

    .line 1143
    iget v0, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    return v0
.end method

.method public whitelist getParentChannelId()Ljava/lang/String;
    .registers 2

    .line 1068
    iget-object v0, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSound()Landroid/net/Uri;
    .registers 2

    .line 951
    iget-object v0, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getUserLockedFields()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1099
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    return v0
.end method

.method public whitelist getVibrationEffect()Landroid/os/VibrationEffect;
    .registers 2

    .line 1016
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public whitelist getVibrationPattern()[J
    .registers 2

    .line 988
    iget-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    return-object v0
.end method

.method public whitelist hasUserSetImportance()Z
    .registers 2

    .line 1177
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasUserSetSound()Z
    .registers 2

    .line 1185
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 29

    .line 1703
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1704
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v7

    iget-boolean v8, v0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1705
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v12, v0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 1706
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, v0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1707
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v17

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v19, v1

    iget v1, v0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 1708
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v21, v1

    iget v1, v0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v22

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 1709
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v26, v1

    iget-boolean v1, v0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v27, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v27

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    .line 1703
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 1710
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, v0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    add-int/2addr v1, v0

    .line 1711
    return v1
.end method

.method public whitelist isBlockable()Z
    .registers 2

    .line 1114
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    return v0
.end method

.method public whitelist isConversation()Z
    .registers 2

    .line 931
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isDeleted()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1084
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    return v0
.end method

.method public whitelist isDemoted()Z
    .registers 2

    .line 1168
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    return v0
.end method

.method public blacklist isImportanceLockedByCriticalDeviceFunction()Z
    .registers 2

    .line 1130
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    return v0
.end method

.method public whitelist isImportantConversation()Z
    .registers 2

    .line 944
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    return v0
.end method

.method public blacklist isSoundRestored()Z
    .registers 2

    .line 1282
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    return v0
.end method

.method public blacklist isUserVisibleTaskShown()Z
    .registers 2

    .line 1106
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    return v0
.end method

.method public greylist-max-o lockFields(I)V
    .registers 3

    .line 534
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 535
    return-void
.end method

.method public whitelist populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1218
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/app/NotificationChannel;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V

    .line 1219
    return-void
.end method

.method public blacklist populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V
    .registers 5

    .line 1210
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/NotificationChannel;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ZZLandroid/content/Context;)V

    .line 1211
    return-void
.end method

.method public blacklist restoreSoundUri(Landroid/content/Context;Landroid/net/Uri;ZI)Landroid/net/Uri;
    .registers 7

    .line 1344
    if-eqz p2, :cond_2c

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 1347
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1355
    invoke-direct {p0, p1, p2}, Landroid/app/NotificationChannel;->getCanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1356
    const/4 v1, 0x1

    if-nez v0, :cond_25

    .line 1358
    iget-boolean p1, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    if-nez p1, :cond_21

    if-eqz p3, :cond_21

    .line 1359
    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 1362
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object p1

    .line 1365
    :cond_21
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 1366
    return-object p2

    .line 1369
    :cond_25
    iput-boolean v1, p0, Landroid/app/NotificationChannel;->mSoundRestored:Z

    .line 1370
    invoke-direct {p0, p1, v0, p4}, Landroid/app/NotificationChannel;->getUncanonicalizedSoundUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 1345
    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist setAllowBubbles(I)V
    .registers 2

    .line 865
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 866
    return-void
.end method

.method public whitelist setAllowBubbles(Z)V
    .registers 2

    .line 858
    iput p1, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    .line 859
    return-void
.end method

.method public whitelist setBlockable(Z)V
    .registers 2

    .line 586
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    .line 587
    return-void
.end method

.method public whitelist setBypassDnd(Z)V
    .registers 2

    .line 839
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    .line 840
    return-void
.end method

.method public whitelist setConversationId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 881
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    .line 882
    invoke-direct {p0, p2}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    .line 883
    return-void
.end method

.method public greylist-max-o setDeleted(Z)V
    .registers 2

    .line 557
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    .line 558
    return-void
.end method

.method public blacklist setDeletedTimeMs(J)V
    .registers 3

    .line 565
    iput-wide p1, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    .line 566
    return-void
.end method

.method public blacklist setDemoted(Z)V
    .registers 2

    .line 1159
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    .line 1160
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .registers 2

    .line 607
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    .line 608
    return-void
.end method

.method public whitelist setGroup(Ljava/lang/String;)V
    .registers 2

    .line 658
    iput-object p1, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .registers 2

    .line 640
    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public whitelist setImportance(I)V
    .registers 2

    .line 822
    iput p1, p0, Landroid/app/NotificationChannel;->mImportance:I

    .line 823
    return-void
.end method

.method public blacklist setImportanceLockedByCriticalDeviceFunction(Z)V
    .registers 2

    .line 1122
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    .line 1123
    return-void
.end method

.method public whitelist setImportantConversation(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 573
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    .line 574
    return-void
.end method

.method public blacklist setLastNotificationUpdateTimeMs(J)V
    .registers 3

    .line 1202
    iput-wide p1, p0, Landroid/app/NotificationChannel;->mLastNotificationUpdateTimeMs:J

    .line 1203
    return-void
.end method

.method public whitelist setLightColor(I)V
    .registers 2

    .line 712
    iput p1, p0, Landroid/app/NotificationChannel;->mLightColor:I

    .line 713
    return-void
.end method

.method public whitelist setLockscreenVisibility(I)V
    .registers 2

    .line 849
    iput p1, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    .line 850
    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .registers 2

    .line 597
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-object p1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public blacklist setOriginalImportance(I)V
    .registers 2

    .line 1151
    iput p1, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    .line 1152
    return-void
.end method

.method public whitelist setShowBadge(Z)V
    .registers 2

    .line 671
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    .line 672
    return-void
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .registers 3

    .line 689
    iput-object p1, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    .line 690
    iput-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 691
    return-void
.end method

.method public blacklist setUserVisibleTaskShown(Z)V
    .registers 2

    .line 549
    iput-boolean p1, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    .line 550
    return-void
.end method

.method public whitelist setVibrationEffect(Landroid/os/VibrationEffect;)V
    .registers 4

    .line 786
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 787
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 788
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 789
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->computeCreateWaveformOffOnTimingsOrNull()[J

    move-result-object p1

    .line 790
    if-eqz p1, :cond_1e

    .line 795
    array-length v0, p1

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1b

    .line 796
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_28

    .line 798
    :cond_1b
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    goto :goto_28

    .line 803
    :cond_1e
    iget-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;->getTrimmedVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 804
    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 806
    :goto_28
    goto :goto_2b

    .line 808
    :cond_29
    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 810
    :goto_2b
    return-void
.end method

.method public whitelist setVibrationPattern([J)V
    .registers 4

    .line 737
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    .line 738
    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 739
    if-eqz p1, :cond_19

    array-length v0, p1

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_19

    .line 740
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    .line 742
    :cond_19
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 744
    nop

    .line 745
    const/4 v0, -0x1

    :try_start_21
    invoke-static {p1, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_27} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_27} :catch_28

    .line 748
    goto :goto_2c

    .line 746
    :catch_28
    move-exception p1

    .line 747
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 750
    :cond_2c
    :goto_2c
    return-void
.end method

.method public whitelist shouldShowLights()Z
    .registers 2

    .line 965
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mLights:Z

    return v0
.end method

.method public whitelist shouldVibrate()Z
    .registers 2

    .line 980
    iget-boolean v0, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    return v0
.end method

.method public whitelist toJson()Lorg/json/JSONObject;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1512
    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1513
    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1514
    const-string v1, "desc"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1515
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_37

    .line 1516
    nop

    .line 1517
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1516
    const-string v3, "importance"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1519
    :cond_37
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1520
    const-string/jumbo v1, "priority"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1522
    :cond_44
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v1, v2, :cond_58

    .line 1523
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1525
    :cond_58
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 1526
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sound"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1528
    :cond_6c
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 1529
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1530
    nop

    .line 1531
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1530
    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1532
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1534
    :cond_a7
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "lights"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1535
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "light_color"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1536
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1537
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "locked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1538
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fgservice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1539
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->longArrayToString([J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1540
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    if-eqz v1, :cond_10e

    .line 1541
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationChannel;->vibrationToString(Landroid/os/VibrationEffect;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vibration_effect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1543
    :cond_10e
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_badge"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1544
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "del_time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1546
    const-string v1, "group"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1547
    const-string v1, "blockable_system"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1548
    const-string v1, "allow_bubbles"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1550
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationChannel{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1730
    invoke-direct {p0}, Landroid/app/NotificationChannel;->getFieldsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1727
    return-object v0
.end method

.method public greylist-max-o unlockFields(I)V
    .registers 3

    .line 541
    iget v0, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    .line 542
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 428
    iget-object p2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    .line 429
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 430
    iget-object p2, p0, Landroid/app/NotificationChannel;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_12

    .line 432
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 434
    :goto_12
    iget-object p2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    if-eqz p2, :cond_1f

    .line 435
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 436
    iget-object p2, p0, Landroid/app/NotificationChannel;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_22

    .line 438
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 440
    :goto_22
    iget-object p2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    if-eqz p2, :cond_2f

    .line 441
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 442
    iget-object p2, p0, Landroid/app/NotificationChannel;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_32

    .line 444
    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 446
    :goto_32
    iget p2, p0, Landroid/app/NotificationChannel;->mImportance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mBypassDnd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 448
    iget p2, p0, Landroid/app/NotificationChannel;->mLockscreenVisibility:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-object p2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    if-eqz p2, :cond_4e

    .line 450
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 451
    iget-object p2, p0, Landroid/app/NotificationChannel;->mSound:Landroid/net/Uri;

    invoke-virtual {p2, p1, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 453
    :cond_4e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 455
    :goto_51
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mLights:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 456
    iget p2, p0, Landroid/app/NotificationChannel;->mUserLockedFields:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mUserVisibleTaskShown:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 458
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mVibrationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 459
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mShowBadge:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 460
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mDeleted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 461
    iget-object p2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    if-eqz p2, :cond_7c

    .line 462
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 463
    iget-object p2, p0, Landroid/app/NotificationChannel;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7f

    .line 465
    :cond_7c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 467
    :goto_7f
    iget-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz p2, :cond_8c

    .line 468
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object p2, p0, Landroid/app/NotificationChannel;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p2, p1, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8f

    .line 471
    :cond_8c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    :goto_8f
    iget p2, p0, Landroid/app/NotificationChannel;->mLightColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mBlockableSystem:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 475
    iget p2, p0, Landroid/app/NotificationChannel;->mAllowBubbles:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget p2, p0, Landroid/app/NotificationChannel;->mOriginalImportance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object p2, p0, Landroid/app/NotificationChannel;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object p2, p0, Landroid/app/NotificationChannel;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mDemoted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mImportantConvo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 481
    iget-wide v2, p0, Landroid/app/NotificationChannel;->mDeletedTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 482
    iget-boolean p2, p0, Landroid/app/NotificationChannel;->mImportanceLockedDefaultApp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 484
    iget-object p2, p0, Landroid/app/NotificationChannel;->mVibrationPattern:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 485
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationChannelVibrationEffectApi()Z

    move-result p2

    if-eqz p2, :cond_dc

    .line 486
    iget-object p2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz p2, :cond_d9

    .line 487
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-object p2, p0, Landroid/app/NotificationChannel;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p2, p1, v1}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_dc

    .line 490
    :cond_d9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    :cond_dc
    :goto_dc
    return-void
.end method

.method public whitelist writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1378
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/app/NotificationChannel;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1379
    return-void
.end method

.method public greylist-max-o writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/NotificationChannel;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLandroid/content/Context;)V

    .line 1386
    return-void
.end method
