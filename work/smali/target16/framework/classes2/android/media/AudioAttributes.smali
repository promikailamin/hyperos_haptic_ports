.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$AttrInternalContentType;,
        Landroid/media/AudioAttributes$AttributeContentType;,
        Landroid/media/AudioAttributes$AttributeUsage;,
        Landroid/media/AudioAttributes$AttributeSdkUsage;,
        Landroid/media/AudioAttributes$AttributeSystemUsage;,
        Landroid/media/AudioAttributes$Builder;,
        Landroid/media/AudioAttributes$SpatializationBehavior;,
        Landroid/media/AudioAttributes$CapturePolicy;
    }
.end annotation


# static fields
.field public static final whitelist ALLOW_CAPTURE_BY_ALL:I = 0x1

.field public static final whitelist ALLOW_CAPTURE_BY_NONE:I = 0x3

.field public static final whitelist ALLOW_CAPTURE_BY_SYSTEM:I = 0x2

.field private static final greylist-max-o ALL_PARCEL_FLAGS:I = 0x1

.field private static final greylist-max-o ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final greylist-max-o ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field private static final blacklist CONTENT_TYPES:Landroid/util/IntArray;

.field public static final whitelist CONTENT_TYPE_MOVIE:I = 0x3

.field public static final whitelist CONTENT_TYPE_MUSIC:I = 0x2

.field public static final whitelist CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final whitelist CONTENT_TYPE_SPEECH:I = 0x1

.field public static final whitelist CONTENT_TYPE_ULTRASOUND:I = 0x7cd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FLAG_ALL:I = 0x1f7ff

.field private static final blacklist FLAG_ALL_API_SET:I = 0x1d1

.field private static final greylist-max-o FLAG_ALL_PUBLIC:I = 0x111

.field public static final whitelist FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final whitelist FLAG_BEACON:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_BYPASS_MUTE:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_CALL_REDIRECTION:I = 0x10000

.field public static final blacklist FLAG_CAPTURE_PRIVATE:I = 0x2000

.field public static final blacklist FLAG_CONTENT_SPATIALIZED:I = 0x4000

.field public static final greylist-max-o FLAG_DEEP_BUFFER:I = 0x200

.field public static final whitelist FLAG_HW_AV_SYNC:I = 0x10

.field public static final whitelist FLAG_HW_HOTWORD:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_LOW_LATENCY:I = 0x100

.field public static final blacklist FLAG_MUTE_HAPTIC:I = 0x800

.field private static final blacklist FLAG_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_NEVER_SPATIALIZE:I = 0x8000

.field public static final blacklist FLAG_NO_MEDIA_PROJECTION:I = 0x400

.field public static final blacklist FLAG_NO_SYSTEM_CAPTURE:I = 0x1000

.field public static final greylist-max-o FLAG_SCO:I = 0x4

.field public static final greylist-max-o FLAG_SECURE:I = 0x2

.field public static final greylist-max-o FLATTEN_TAGS:I = 0x1

.field private static final blacklist KEY_TEST_ID:Ljava/lang/String; = "key_test_id"

.field public static final blacklist SDK_USAGES:Landroid/util/IntArray;

.field public static final whitelist SPATIALIZATION_BEHAVIOR_AUTO:I = 0x0

.field public static final whitelist SPATIALIZATION_BEHAVIOR_NEVER:I = 0x1

.field public static final greylist-max-o SUPPRESSIBLE_ALARM:I = 0x4

.field public static final greylist-max-o SUPPRESSIBLE_CALL:I = 0x2

.field public static final greylist-max-o SUPPRESSIBLE_MEDIA:I = 0x5

.field public static final greylist-max-o SUPPRESSIBLE_NEVER:I = 0x3

.field public static final greylist-max-o SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field public static final greylist-max-o SUPPRESSIBLE_SYSTEM:I = 0x6

.field public static final greylist-max-o SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final blacklist SYSTEM_USAGE_OFFSET:I = 0x3e8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final whitelist USAGE_ALARM:I = 0x4

.field public static final whitelist USAGE_ANNOUNCEMENT:I = 0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final whitelist USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final whitelist USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final whitelist USAGE_ASSISTANT:I = 0x10

.field public static final whitelist USAGE_CALL_ASSISTANT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_EMERGENCY:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_GAME:I = 0xe

.field private static final blacklist USAGE_INVALID:I = -0x1

.field public static final whitelist USAGE_MEDIA:I = 0x1

.field public static final whitelist USAGE_NOTIFICATION:I = 0x5

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final whitelist USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final whitelist USAGE_SAFETY:I = 0x3e9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_SPEAKER_CLEANUP:I = 0x3ec
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_VEHICLE_STATUS:I = 0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final whitelist USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final whitelist USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field public static final blacklist VALUE_TEST_ID_NONE:J = -0x8000000000000000L

.field private static final blacklist sXsdStringToUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-p mContentType:I

.field private greylist-max-p mFlags:I

.field private greylist-max-r mFormattedTags:Ljava/lang/String;

.field private greylist-max-p mSource:I

.field private greylist-max-o mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/media/AudioAttributes;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBundle(Landroid/media/AudioAttributes;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentType(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFormattedTags(Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSource(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTags(Landroid/media/AudioAttributes;Ljava/util/HashSet;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smusageForStreamType(I)I
    .registers 1

    invoke-static {p0}, Landroid/media/AudioAttributes;->usageForStreamType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 16

    .line 326
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 327
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v6, 0x9

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v6, 0xb

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v8, 0x4

    invoke-virtual {v0, v8, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v9, 0xc

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 339
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v10, 0xe

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v11, 0x10

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v12, 0x11

    invoke-virtual {v0, v12, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v13, 0x0

    .line 1693
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 343
    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 344
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v15, 0xd

    invoke-virtual {v0, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    new-array v0, v11, [I

    fill-array-data v0, :array_254

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    .line 596
    filled-new-array {v13, v2, v4, v7, v8}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/AudioAttributes;->CONTENT_TYPES:Landroid/util/IntArray;

    .line 1469
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1516
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v12}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    .line 1519
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const-string v13, "FLAG_AUDIBILITY_ENFORCED"

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1520
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const-string v13, "FLAG_SECURE"

    invoke-virtual {v0, v4, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1521
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const-string v13, "FLAG_SCO"

    invoke-virtual {v0, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1522
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const-string v13, "FLAG_BEACON"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1523
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const-string v5, "FLAG_HW_AV_SYNC"

    invoke-virtual {v0, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1524
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x20

    const-string v13, "FLAG_HW_HOTWORD"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1525
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x40

    const-string v13, "FLAG_BYPASS_INTERRUPTION_POLICY"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1527
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x80

    const-string v13, "FLAG_BYPASS_MUTE"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1528
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x100

    const-string v13, "FLAG_LOW_LATENCY"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1529
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x200

    const-string v13, "FLAG_DEEP_BUFFER"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1530
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x400

    const-string v13, "FLAG_NO_MEDIA_PROJECTION"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1531
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x800

    const-string v13, "FLAG_MUTE_HAPTIC"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1532
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x1000

    const-string v13, "FLAG_NO_SYSTEM_CAPTURE"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1533
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x2000

    const-string v13, "FLAG_CAPTURE_PRIVATE"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1534
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/16 v5, 0x4000

    const-string v13, "FLAG_CONTENT_SPATIALIZED"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1535
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const v5, 0x8000

    const-string v13, "FLAG_NEVER_SPATIALIZE"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1536
    sget-object v0, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    const/high16 v5, 0x10000

    const-string v13, "FLAG_CALL_REDIRECTION"

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1690
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    .line 1693
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v5, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v5, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v5, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1697
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1696
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1699
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1698
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1703
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1702
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1705
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1704
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1707
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1706
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1709
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1708
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1712
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1711
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1715
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1714
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1719
    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1718
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    return-void

    :array_254
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 584
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 586
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 588
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 606
    const-string v0, ""

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 607
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioAttributes-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 1440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 584
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 586
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 588
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 1443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 1444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2e

    move v0, v2

    .line 1446
    :cond_2e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    .line 1447
    if-eqz v0, :cond_4a

    .line 1448
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1449
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 1451
    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1452
    array-length v1, v0

    sub-int/2addr v1, v2

    :goto_50
    if-ltz v1, :cond_5c

    .line 1453
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1452
    add-int/lit8 v1, v1, -0x1

    goto :goto_50

    .line 1455
    :cond_5c
    const-string v0, ";"

    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1457
    :goto_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sparse-switch v0, :sswitch_data_86

    .line 1465
    const-string p1, "AudioAttributes"

    const-string v0, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 1462
    :sswitch_75
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1463
    goto :goto_85

    .line 1459
    :sswitch_81
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1460
    nop

    .line 1467
    :goto_85
    return-void

    :sswitch_data_86
    .sparse-switch
        -0x7b9 -> :sswitch_81
        0x7bc -> :sswitch_75
    .end sparse-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist capturePolicyToFlags(II)I
    .registers 2

    .line 1923
    packed-switch p0, :pswitch_data_18

    .line 1935
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown allow playback capture policy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1925
    :pswitch_b
    or-int/lit16 p0, p1, 0x1400

    .line 1926
    goto :goto_16

    .line 1928
    :pswitch_e
    or-int/lit16 p0, p1, 0x400

    .line 1929
    and-int/lit16 p0, p0, -0x1001

    .line 1930
    goto :goto_16

    .line 1932
    :pswitch_13
    and-int/lit16 p0, p1, -0x1401

    .line 1933
    nop

    .line 1937
    :goto_16
    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private blacklist flagsToString()Ljava/lang/String;
    .registers 11

    .line 1540
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const-string v1, ""

    if-nez v0, :cond_7

    .line 1541
    return-object v1

    .line 1543
    :cond_7
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_13

    const-string v0, "+"

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 1544
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1545
    sget-object v4, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1546
    nop

    .line 1547
    const/4 v5, 0x0

    move v6, v5

    :goto_24
    if-ge v6, v4, :cond_49

    .line 1548
    sget-object v7, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1549
    sget-object v8, Landroid/media/AudioAttributes;->FLAG_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1550
    iget v9, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_46

    .line 1551
    if-eqz v2, :cond_3d

    move-object v2, v1

    goto :goto_3e

    :cond_3d
    move-object v2, v0

    :goto_3e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    move v2, v5

    .line 1547
    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 1555
    :cond_49
    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSdkUsages()[I
    .registers 1

    .line 375
    sget-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSuppressibleUsage(I)I
    .registers 2

    .line 382
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static blacklist isHiddenUsage(I)Z
    .registers 2

    .line 1813
    const/16 v0, 0xf

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist isSdkContentType(I)Z
    .registers 2

    .line 1823
    sget-object v0, Landroid/media/AudioAttributes;->CONTENT_TYPES:Landroid/util/IntArray;

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isSdkUsage(I)Z
    .registers 2

    .line 1801
    sget-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public static whitelist isSystemUsage(I)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1785
    const/16 v0, 0x11

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3eb

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static greylist toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .registers 2

    .line 1853
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method private static greylist-max-o toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .registers 9

    .line 1858
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 1859
    if-eqz p0, :cond_b

    .line 1860
    goto :goto_c

    :cond_b
    const/4 v1, 0x7

    .line 1859
    :goto_c
    return v1

    .line 1862
    :cond_d
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_17

    .line 1863
    return v3

    .line 1865
    :cond_17
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/16 v4, 0x8

    and-int/2addr v0, v4

    const/4 v5, 0x3

    if-ne v0, v4, :cond_27

    .line 1866
    if-eqz p0, :cond_24

    .line 1867
    goto :goto_26

    :cond_24
    const/16 v5, 0x9

    .line 1866
    :goto_26
    return v5

    .line 1870
    :cond_27
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 1871
    const/4 v6, -0x1

    if-eq v0, v6, :cond_2f

    .line 1872
    return v0

    .line 1875
    :cond_2f
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    sparse-switch v0, :sswitch_data_70

    .line 1910
    if-nez p0, :cond_4d

    .line 1914
    return v5

    .line 1881
    :sswitch_39
    const/16 p0, 0xb

    return p0

    .line 1883
    :sswitch_3c
    return v1

    .line 1901
    :sswitch_3d
    const/16 p0, 0xa

    return p0

    .line 1893
    :sswitch_40
    const/4 p0, 0x2

    return p0

    .line 1899
    :sswitch_42
    const/4 p0, 0x5

    return p0

    .line 1891
    :sswitch_44
    return v2

    .line 1888
    :sswitch_45
    if-eqz p0, :cond_48

    .line 1889
    goto :goto_49

    :cond_48
    move v3, v4

    .line 1888
    :goto_49
    return v3

    .line 1886
    :sswitch_4a
    return v3

    .line 1879
    :sswitch_4b
    return v5

    .line 1908
    :sswitch_4c
    return v5

    .line 1911
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in audio attributes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_4c
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_45
        0x4 -> :sswitch_44
        0x5 -> :sswitch_42
        0x6 -> :sswitch_40
        0x7 -> :sswitch_42
        0x8 -> :sswitch_42
        0x9 -> :sswitch_42
        0xa -> :sswitch_42
        0xb -> :sswitch_3d
        0xc -> :sswitch_4b
        0xd -> :sswitch_3c
        0xe -> :sswitch_4b
        0x10 -> :sswitch_39
        0x11 -> :sswitch_4a
        0x3e8 -> :sswitch_4c
        0x3e9 -> :sswitch_4c
        0x3ea -> :sswitch_4c
        0x3eb -> :sswitch_4c
        0x3ec -> :sswitch_4c
    .end sparse-switch
.end method

.method private static greylist-max-o usageForStreamType(I)I
    .registers 2

    .line 1749
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_1c

    .line 1773
    :pswitch_4
    const/4 p0, 0x0

    return p0

    .line 1770
    :pswitch_6
    const/16 p0, 0x10

    return p0

    .line 1768
    :pswitch_9
    const/16 p0, 0xb

    return p0

    .line 1766
    :pswitch_c
    const/4 p0, 0x3

    return p0

    .line 1764
    :pswitch_e
    return v0

    .line 1762
    :pswitch_f
    const/4 p0, 0x5

    return p0

    .line 1760
    :pswitch_11
    const/4 p0, 0x4

    return p0

    .line 1758
    :pswitch_13
    const/4 p0, 0x1

    return p0

    .line 1756
    :pswitch_15
    const/4 p0, 0x6

    return p0

    .line 1754
    :pswitch_17
    const/16 p0, 0xd

    return p0

    .line 1751
    :pswitch_1a
    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_17
        :pswitch_c
        :pswitch_4
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o usageToString(I)Ljava/lang/String;
    .registers 3

    .line 1593
    sparse-switch p0, :sswitch_data_5a

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1637
    :sswitch_17
    const-string p0, "USAGE_SPEAKER_CLEANUP"

    return-object p0

    .line 1635
    :sswitch_1a
    const-string p0, "USAGE_ANNOUNCEMENT"

    return-object p0

    .line 1633
    :sswitch_1d
    const-string p0, "USAGE_VEHICLE_STATUS"

    return-object p0

    .line 1631
    :sswitch_20
    const-string p0, "USAGE_SAFETY"

    return-object p0

    .line 1629
    :sswitch_23
    const-string p0, "USAGE_EMERGENCY"

    return-object p0

    .line 1627
    :sswitch_26
    const-string p0, "USAGE_CALL_ASSISTANT"

    return-object p0

    .line 1625
    :sswitch_29
    const-string p0, "USAGE_ASSISTANT"

    return-object p0

    .line 1623
    :sswitch_2c
    const-string p0, "USAGE_GAME"

    return-object p0

    .line 1621
    :sswitch_2f
    const-string p0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object p0

    .line 1619
    :sswitch_32
    const-string p0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object p0

    .line 1617
    :sswitch_35
    const-string p0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object p0

    .line 1615
    :sswitch_38
    const-string p0, "USAGE_NOTIFICATION_EVENT"

    return-object p0

    .line 1613
    :sswitch_3b
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object p0

    .line 1611
    :sswitch_3e
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object p0

    .line 1609
    :sswitch_41
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object p0

    .line 1607
    :sswitch_44
    const-string p0, "USAGE_NOTIFICATION_RINGTONE"

    return-object p0

    .line 1605
    :sswitch_47
    const-string p0, "USAGE_NOTIFICATION"

    return-object p0

    .line 1603
    :sswitch_4a
    const-string p0, "USAGE_ALARM"

    return-object p0

    .line 1601
    :sswitch_4d
    const-string p0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object p0

    .line 1599
    :sswitch_50
    const-string p0, "USAGE_VOICE_COMMUNICATION"

    return-object p0

    .line 1597
    :sswitch_53
    const-string p0, "USAGE_MEDIA"

    return-object p0

    .line 1595
    :sswitch_56
    const-string p0, "USAGE_UNKNOWN"

    return-object p0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_56
        0x1 -> :sswitch_53
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_47
        0x6 -> :sswitch_44
        0x7 -> :sswitch_41
        0x8 -> :sswitch_3e
        0x9 -> :sswitch_3b
        0xa -> :sswitch_38
        0xb -> :sswitch_35
        0xc -> :sswitch_32
        0xd -> :sswitch_2f
        0xe -> :sswitch_2c
        0x10 -> :sswitch_29
        0x11 -> :sswitch_26
        0x3e8 -> :sswitch_23
        0x3e9 -> :sswitch_20
        0x3ea -> :sswitch_1d
        0x3eb -> :sswitch_1a
        0x3ec -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist usageToXsdString(I)Ljava/lang/String;
    .registers 3

    .line 1647
    sparse-switch p0, :sswitch_data_a0

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioAttributes"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1683
    :sswitch_22
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1681
    :sswitch_29
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1679
    :sswitch_30
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1677
    :sswitch_37
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1675
    :sswitch_3e
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1673
    :sswitch_45
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1671
    :sswitch_4c
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1669
    :sswitch_53
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1667
    :sswitch_5a
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1665
    :sswitch_61
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1663
    :sswitch_68
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1661
    :sswitch_6f
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1659
    :sswitch_76
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1657
    :sswitch_7d
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1655
    :sswitch_84
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1653
    :sswitch_8b
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1651
    :sswitch_92
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1649
    :sswitch_99
    sget-object p0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_99
        0x1 -> :sswitch_92
        0x2 -> :sswitch_8b
        0x3 -> :sswitch_84
        0x4 -> :sswitch_7d
        0x5 -> :sswitch_76
        0x6 -> :sswitch_6f
        0xb -> :sswitch_68
        0xc -> :sswitch_61
        0xd -> :sswitch_5a
        0xe -> :sswitch_53
        0xf -> :sswitch_4c
        0x10 -> :sswitch_45
        0x11 -> :sswitch_3e
        0x3e8 -> :sswitch_37
        0x3e9 -> :sswitch_30
        0x3ea -> :sswitch_29
        0x3eb -> :sswitch_22
    .end sparse-switch
.end method

.method public static blacklist xsdStringToUsage(Ljava/lang/String;)I
    .registers 3

    .line 1726
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1727
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1729
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage name not found in AudioUsage enum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioAttributes"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist areHapticChannelsMuted()Z
    .registers 2

    .line 698
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o contentTypeToString()Ljava/lang/String;
    .registers 4

    .line 1736
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    sparse-switch v0, :sswitch_data_50

    .line 1744
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1743
    :sswitch_20
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_ULTRASOUND"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1742
    :sswitch_28
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1741
    :sswitch_30
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MOVIE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1740
    :sswitch_38
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MUSIC"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1739
    :sswitch_40
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SPEECH"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1738
    :sswitch_48
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_40
        0x2 -> :sswitch_38
        0x3 -> :sswitch_30
        0x4 -> :sswitch_28
        0x7cd -> :sswitch_20
    .end sparse-switch
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    .line 1561
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1563
    const-wide v0, 0x10e00000001L

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1564
    const-wide v0, 0x10e00000002L

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1565
    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1567
    iget-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_43

    aget-object v3, v0, v2

    .line 1568
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1569
    const-string v4, ""

    if-eq v3, v4, :cond_40

    .line 1570
    const-wide v4, 0x20900000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1567
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1575
    :cond_43
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1576
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1486
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1487
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 1489
    :cond_12
    check-cast p1, Landroid/media/AudioAttributes;

    .line 1491
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v3, p1, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v2, v3, :cond_37

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v3, p1, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v2, v3, :cond_37

    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v3, p1, Landroid/media/AudioAttributes;->mSource:I

    if-ne v2, v3, :cond_37

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v3, p1, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1496
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    .line 1491
    :goto_38
    return v0

    .line 1487
    :cond_39
    :goto_39
    return v1
.end method

.method public whitelist getAllFlags()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 667
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x1f7ff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getAllowedCapturePolicy()I
    .registers 3

    .line 766
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 767
    const/4 v0, 0x3

    return v0

    .line 769
    :cond_9
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    .line 770
    const/4 v0, 0x2

    return v0

    .line 772
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 677
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 678
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object v0

    .line 680
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getCapturePreset()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 647
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public whitelist getContentType()I
    .registers 2

    .line 614
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 656
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public whitelist getSpatializationBehavior()I
    .registers 3

    .line 755
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 756
    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 755
    :goto_b
    return v0
.end method

.method public whitelist getSystemUsage()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 636
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public greylist-max-o getTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTestId()J
    .registers 5

    .line 719
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    .line 720
    return-wide v1

    .line 722
    :cond_7
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const-string v3, "key_test_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUsage()I
    .registers 2

    .line 622
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 623
    const/4 v0, 0x0

    return v0

    .line 625
    :cond_a
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getVolumeControlStream()I
    .registers 2

    .line 1841
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 1501
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isContentSpatialized()Z
    .registers 2

    .line 708
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isForCallRedirection()Z
    .registers 3

    .line 781
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1506
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1507
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1508
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1509
    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v3}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_42
    const-string v2, ""

    :goto_44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1511
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioAttributes;->flagsToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1513
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_7d

    const-string v2, "null"

    goto :goto_83

    :cond_7d
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1506
    return-object v0
.end method

.method public greylist-max-o usageToString()Ljava/lang/String;
    .registers 2

    .line 1580
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1420
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    const/4 v0, 0x1

    and-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    if-nez p2, :cond_2c

    .line 1426
    iget-object p2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1428
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_34

    .line 1429
    :cond_2c
    if-ne p2, v0, :cond_34

    .line 1430
    iget-object p2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_35

    .line 1429
    :cond_34
    :goto_34
    nop

    .line 1432
    :goto_35
    iget-object p2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez p2, :cond_3f

    .line 1433
    const/16 p2, -0x7b9

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 1435
    :cond_3f
    const/16 p2, 0x7bc

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1436
    iget-object p2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1438
    :goto_49
    return-void
.end method
