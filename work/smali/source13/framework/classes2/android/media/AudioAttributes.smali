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

.field private static final greylist-max-o FLAG_ALL:I = -0x7ffe0801

.field private static final blacklist FLAG_ALL_API_SET:I = -0x7ffffe2f

.field private static final greylist-max-o FLAG_ALL_PUBLIC:I = -0x7ffffeef

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

.field public static final whitelist FLAG_INCALL_MUSIC:I = -0x80000000

.field public static final whitelist FLAG_LOW_LATENCY:I = 0x100

.field public static final blacklist FLAG_MUTE_HAPTIC:I = 0x800

.field public static final blacklist FLAG_NEVER_SPATIALIZE:I = 0x8000

.field public static final blacklist FLAG_NO_MEDIA_PROJECTION:I = 0x400

.field public static final blacklist FLAG_NO_SYSTEM_CAPTURE:I = 0x1000

.field public static final greylist-max-o FLAG_SCO:I = 0x4

.field public static final greylist-max-o FLAG_SECURE:I = 0x2

.field public static final greylist-max-o FLATTEN_TAGS:I = 0x1

.field public static final greylist-max-o SDK_USAGES:[I

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

.field public static final whitelist USAGE_BLUETOOTH_SCO:I = 0x13

.field public static final whitelist USAGE_CALL_ASSISTANT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_EMERGENCY:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_ENFORCED_AUDIBLE:I = 0x12

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

.field public static final whitelist USAGE_TTS:I = 0x14

.field public static final whitelist USAGE_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_VEHICLE_STATUS:I = 0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final whitelist USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final whitelist USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

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
    .registers 15

    .line 314
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 315
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 316
    const/4 v3, 0x6

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 317
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 320
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    const/16 v5, 0xb

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 322
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    const/16 v9, 0xe

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    const/16 v10, 0x10

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    const/16 v11, 0x11

    invoke-virtual {v0, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    const/4 v12, 0x0

    .line 1612
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 331
    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    const/16 v12, 0xd

    invoke-virtual {v0, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 339
    new-array v0, v10, [I

    fill-array-data v0, :array_168

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    .line 1427
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    .line 1612
    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v14}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    sget-object v14, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v14}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    sget-object v13, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v13}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1616
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1615
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1618
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1617
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1621
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1624
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1623
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1626
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1625
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1628
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1627
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1631
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1630
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1634
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1633
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1638
    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1637
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    return-void

    nop

    :array_168
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

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 575
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 577
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 579
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 587
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioAttributes-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 575
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 577
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 579
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 1400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 1401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 1402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2e

    move v0, v2

    .line 1404
    .local v0, "hasFlattenedTags":Z
    :cond_2e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    .line 1405
    if-eqz v0, :cond_48

    .line 1406
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1407
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 1409
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "tagsArray":[Ljava/lang/String;
    array-length v3, v1

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_4e
    if-ltz v3, :cond_5a

    .line 1411
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1410
    add-int/lit8 v3, v3, -0x1

    goto :goto_4e

    .line 1413
    .end local v3    # "i":I
    :cond_5a
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    const-string v3, ";"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1415
    .end local v1    # "tagsArray":[Ljava/lang/String;
    :goto_64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_84

    .line 1423
    const-string v1, "AudioAttributes"

    const-string v2, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 1420
    :sswitch_73
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1421
    goto :goto_83

    .line 1417
    :sswitch_7f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1418
    nop

    .line 1425
    :goto_83
    return-void

    :sswitch_data_84
    .sparse-switch
        -0x7b9 -> :sswitch_7f
        0x7bc -> :sswitch_73
    .end sparse-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist capturePolicyToFlags(II)I
    .registers 4
    .param p0, "capturePolicy"    # I
    .param p1, "flags"    # I

    .line 1818
    packed-switch p0, :pswitch_data_18

    .line 1830
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown allow playback capture policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1820
    :pswitch_b
    or-int/lit16 p1, p1, 0x1400

    .line 1821
    goto :goto_16

    .line 1823
    :pswitch_e
    or-int/lit16 p1, p1, 0x400

    .line 1824
    and-int/lit16 p1, p1, -0x1001

    .line 1825
    goto :goto_16

    .line 1827
    :pswitch_13
    and-int/lit16 p1, p1, -0x1401

    .line 1828
    nop

    .line 1832
    :goto_16
    return p1

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist getSdkUsages()[I
    .registers 1

    .line 363
    sget-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    return-object v0
.end method

.method public static whitelist isSystemUsage(I)Z
    .registers 2
    .param p0, "usage"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1708
    const/16 v0, 0x11

    if-eq p0, v0, :cond_17

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_17

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_17

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_17

    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static greylist toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .registers 2
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 1742
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .registers 11
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 1747
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x7

    if-ne v0, v1, :cond_e

    .line 1748
    if-eqz p0, :cond_c

    .line 1749
    goto :goto_d

    :cond_c
    move v1, v2

    .line 1748
    :goto_d
    return v1

    .line 1751
    :cond_e
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/4 v3, 0x4

    and-int/2addr v0, v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1e

    .line 1752
    if-eqz p0, :cond_1c

    .line 1753
    move v4, v5

    goto :goto_1d

    :cond_1c
    nop

    .line 1752
    :goto_1d
    return v4

    .line 1755
    :cond_1e
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/16 v6, 0x8

    and-int/2addr v0, v6

    const/16 v7, 0x9

    const/4 v8, 0x3

    if-ne v0, v6, :cond_30

    .line 1756
    if-eqz p0, :cond_2e

    .line 1757
    move v7, v8

    goto :goto_2f

    :cond_2e
    nop

    .line 1756
    :goto_2f
    return v7

    .line 1760
    :cond_30
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 1761
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 1764
    :cond_3f
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    sparse-switch v0, :sswitch_data_80

    .line 1805
    if-nez p0, :cond_5d

    .line 1809
    return v8

    .line 1802
    :sswitch_49
    return v7

    .line 1800
    :sswitch_4a
    return v4

    .line 1798
    :sswitch_4b
    return v2

    .line 1771
    :sswitch_4c
    return v1

    .line 1789
    :sswitch_4d
    const/16 v0, 0xa

    return v0

    .line 1781
    :sswitch_50
    const/4 v0, 0x2

    return v0

    .line 1787
    :sswitch_52
    const/4 v0, 0x5

    return v0

    .line 1779
    :sswitch_54
    return v3

    .line 1776
    :sswitch_55
    if-eqz p0, :cond_58

    .line 1777
    goto :goto_59

    :cond_58
    move v5, v6

    .line 1776
    :goto_59
    return v5

    .line 1774
    :sswitch_5a
    return v5

    .line 1769
    :sswitch_5b
    return v8

    .line 1795
    :sswitch_5c
    return v8

    .line 1806
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_5c
        0x1 -> :sswitch_5b
        0x2 -> :sswitch_5a
        0x3 -> :sswitch_55
        0x4 -> :sswitch_54
        0x5 -> :sswitch_52
        0x6 -> :sswitch_50
        0x7 -> :sswitch_52
        0x8 -> :sswitch_52
        0x9 -> :sswitch_52
        0xa -> :sswitch_52
        0xb -> :sswitch_4d
        0xc -> :sswitch_5b
        0xd -> :sswitch_4c
        0xe -> :sswitch_5b
        0x10 -> :sswitch_5b
        0x11 -> :sswitch_5a
        0x12 -> :sswitch_4b
        0x13 -> :sswitch_4a
        0x14 -> :sswitch_49
        0x3e8 -> :sswitch_5c
        0x3e9 -> :sswitch_5c
        0x3ea -> :sswitch_5c
        0x3eb -> :sswitch_5c
    .end sparse-switch
.end method

.method private static greylist-max-o usageForStreamType(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 1668
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_1c

    .line 1692
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 1689
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 1687
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 1685
    :pswitch_c
    const/4 v0, 0x3

    return v0

    .line 1683
    :pswitch_e
    return v0

    .line 1681
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 1679
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 1677
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 1675
    :pswitch_15
    const/4 v0, 0x6

    return v0

    .line 1673
    :pswitch_17
    const/16 v0, 0xd

    return v0

    .line 1670
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
    .param p0, "usage"    # I

    .line 1506
    sparse-switch p0, :sswitch_data_6e

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1548
    :sswitch_17
    const-string v0, "USAGE_ANNOUNCEMENT"

    return-object v0

    .line 1546
    :sswitch_1a
    const-string v0, "USAGE_VEHICLE_STATUS"

    return-object v0

    .line 1544
    :sswitch_1d
    const-string v0, "USAGE_SAFETY"

    return-object v0

    .line 1542
    :sswitch_20
    const-string v0, "USAGE_EMERGENCY"

    return-object v0

    .line 1555
    :sswitch_23
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_TTS"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1553
    :sswitch_2b
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_BLUETOOTH_SCO"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1551
    :sswitch_33
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ENFORCED_AUDIBLE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1540
    :sswitch_3b
    const-string v0, "USAGE_CALL_ASSISTANT"

    return-object v0

    .line 1538
    :sswitch_3e
    const-string v0, "USAGE_ASSISTANT"

    return-object v0

    .line 1536
    :sswitch_41
    const-string v0, "USAGE_GAME"

    return-object v0

    .line 1534
    :sswitch_44
    const-string v0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object v0

    .line 1532
    :sswitch_47
    const-string v0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object v0

    .line 1530
    :sswitch_4a
    const-string v0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object v0

    .line 1528
    :sswitch_4d
    const-string v0, "USAGE_NOTIFICATION_EVENT"

    return-object v0

    .line 1526
    :sswitch_50
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object v0

    .line 1524
    :sswitch_53
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object v0

    .line 1522
    :sswitch_56
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object v0

    .line 1520
    :sswitch_59
    const-string v0, "USAGE_NOTIFICATION_RINGTONE"

    return-object v0

    .line 1518
    :sswitch_5c
    const-string v0, "USAGE_NOTIFICATION"

    return-object v0

    .line 1516
    :sswitch_5f
    const-string v0, "USAGE_ALARM"

    return-object v0

    .line 1514
    :sswitch_62
    const-string v0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object v0

    .line 1512
    :sswitch_65
    const-string v0, "USAGE_VOICE_COMMUNICATION"

    return-object v0

    .line 1510
    :sswitch_68
    const-string v0, "USAGE_MEDIA"

    return-object v0

    .line 1508
    :sswitch_6b
    const-string v0, "USAGE_UNKNOWN"

    return-object v0

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_6b
        0x1 -> :sswitch_68
        0x2 -> :sswitch_65
        0x3 -> :sswitch_62
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_59
        0x7 -> :sswitch_56
        0x8 -> :sswitch_53
        0x9 -> :sswitch_50
        0xa -> :sswitch_4d
        0xb -> :sswitch_4a
        0xc -> :sswitch_47
        0xd -> :sswitch_44
        0xe -> :sswitch_41
        0x10 -> :sswitch_3e
        0x11 -> :sswitch_3b
        0x12 -> :sswitch_33
        0x13 -> :sswitch_2b
        0x14 -> :sswitch_23
        0x3e8 -> :sswitch_20
        0x3e9 -> :sswitch_1d
        0x3ea -> :sswitch_1a
        0x3eb -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist usageToXsdString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usage"    # I

    .line 1566
    sparse-switch p0, :sswitch_data_a0

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1602
    :sswitch_22
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1600
    :sswitch_29
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1598
    :sswitch_30
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1596
    :sswitch_37
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1594
    :sswitch_3e
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1592
    :sswitch_45
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1590
    :sswitch_4c
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1588
    :sswitch_53
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1586
    :sswitch_5a
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1584
    :sswitch_61
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1582
    :sswitch_68
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1580
    :sswitch_6f
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1578
    :sswitch_76
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1576
    :sswitch_7d
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1574
    :sswitch_84
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1572
    :sswitch_8b
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1570
    :sswitch_92
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1568
    :sswitch_99
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

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
    .param p0, "xsdUsage"    # Ljava/lang/String;

    .line 1645
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1646
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1648
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage name not found in AudioUsage enum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist areHapticChannelsMuted()Z
    .registers 2

    .line 678
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

    .line 1655
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    sparse-switch v0, :sswitch_data_50

    .line 1663
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

    .line 1662
    :sswitch_20
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_ULTRASOUND"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1661
    :sswitch_28
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1660
    :sswitch_30
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MOVIE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1659
    :sswitch_38
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MUSIC"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1658
    :sswitch_40
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SPEECH"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1657
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

    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1474
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1476
    .local v0, "token":J
    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1477
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1478
    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1480
    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_43

    aget-object v5, v2, v4

    .line 1481
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1482
    const-string v6, ""

    if-eq v5, v6, :cond_40

    .line 1483
    const-wide v6, 0x20900000004L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1480
    .end local v5    # "t":Ljava/lang/String;
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1488
    :cond_43
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1489
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1444
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1445
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 1447
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioAttributes;

    .line 1449
    .local v2, "that":Landroid/media/AudioAttributes;
    iget v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v4, v2, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v4, v2, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v4, v2, Landroid/media/AudioAttributes;->mSource:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v4, v2, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1454
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 1449
    :goto_39
    return v0

    .line 1445
    .end local v2    # "that":Landroid/media/AudioAttributes;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist getAllFlags()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 647
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, -0x7ffe0801

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getAllowedCapturePolicy()I
    .registers 4

    .line 731
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v1, v0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_a

    .line 732
    const/4 v0, 0x3

    return v0

    .line 734
    :cond_a
    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    .line 735
    const/4 v0, 0x2

    return v0

    .line 737
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 657
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 658
    return-object v0

    .line 660
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getCapturePreset()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 627
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public whitelist getContentType()I
    .registers 2

    .line 594
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public whitelist getFlags()I
    .registers 3

    .line 636
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, -0x7ffffeef

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpatializationBehavior()I
    .registers 3

    .line 720
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 721
    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 720
    :goto_b
    return v0
.end method

.method public whitelist getSystemUsage()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 616
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

    .line 670
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUsage()I
    .registers 2

    .line 602
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 603
    const/4 v0, 0x0

    return v0

    .line 605
    :cond_a
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getVolumeControlStream()I
    .registers 2

    .line 1730
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1459
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isContentSpatialized()Z
    .registers 2

    .line 688
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

    .line 746
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
    .registers 4

    .line 1464
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1465
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1466
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1467
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

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

    .line 1469
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_50

    const-string v2, "null"

    goto :goto_54

    :cond_50
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1464
    return-object v0
.end method

.method public greylist-max-o usageToString()Ljava/lang/String;
    .registers 2

    .line 1493
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1378
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2e

    .line 1384
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1385
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1386
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .end local v0    # "tagsArray":[Ljava/lang/String;
    goto :goto_39

    .line 1387
    :cond_2e
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 1388
    iget-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3a

    .line 1387
    :cond_39
    :goto_39
    nop

    .line 1390
    :goto_3a
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_44

    .line 1391
    const/16 v0, -0x7b9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    .line 1393
    :cond_44
    const/16 v0, 0x7bc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1396
    :goto_4e
    return-void
.end method
