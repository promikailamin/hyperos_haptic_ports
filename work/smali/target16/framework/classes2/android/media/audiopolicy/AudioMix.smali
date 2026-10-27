.class public Landroid/media/audiopolicy/AudioMix;
.super Ljava/lang/Object;
.source "AudioMix.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMix$Builder;,
        Landroid/media/audiopolicy/AudioMix$RouteFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o CALLBACK_FLAGS_ALL:I = 0x1

.field public static final greylist-max-o CALLBACK_FLAG_NOTIFY_ACTIVITY:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MIX_STATE_DISABLED:I = -0x1

.field public static final whitelist MIX_STATE_IDLE:I = 0x0

.field public static final whitelist MIX_STATE_MIXING:I = 0x1

.field public static final greylist-max-o MIX_TYPE_INVALID:I = -0x1

.field public static final greylist-max-o MIX_TYPE_PLAYERS:I = 0x0

.field public static final greylist-max-o MIX_TYPE_RECORDERS:I = 0x1

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_BYTES_PER_SAMPLE:I = 0x2

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_CHANNEL_NUMBER:I = 0x1

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_SAMPLE_RATE:I = 0x3e80

.field public static final whitelist ROUTE_FLAG_LOOP_BACK:I = 0x2

.field public static final blacklist ROUTE_FLAG_LOOP_BACK_RENDER:I = 0x3

.field public static final whitelist ROUTE_FLAG_RENDER:I = 0x1

.field private static final greylist-max-o ROUTE_FLAG_SUPPORTED:I = 0x3


# instance fields
.field greylist-max-r mCallbackFlags:I

.field greylist-max-r mDeviceAddress:Ljava/lang/String;

.field final greylist-max-r mDeviceSystemType:I

.field private greylist-max-r mFormat:Landroid/media/AudioFormat;

.field private blacklist mInjectSilenceOnStarve:Z

.field greylist-max-o mMixState:I

.field private greylist-max-r mMixType:I

.field private greylist-max-r mRouteFlags:I

.field private greylist-max-r mRule:Landroid/media/audiopolicy/AudioMixingRule;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private blacklist mVirtualDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 369
    new-instance v0, Landroid/media/audiopolicy/AudioMix$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMix$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;I)V
    .registers 11

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 64
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMix;->mInjectSilenceOnStarve:Z

    .line 92
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 93
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioFormat;

    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 94
    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    .line 95
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result p1

    iput p1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 96
    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    .line 97
    iput p5, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    .line 98
    if-nez p6, :cond_30

    new-instance p6, Ljava/lang/String;

    const-string p1, ""

    invoke-direct {p6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_30
    iput-object p6, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    .line 100
    iput p8, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    .line 101
    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMix;->mInjectSilenceOnStarve:Z

    .line 102
    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;IZ)V
    .registers 11

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 64
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMix;->mInjectSilenceOnStarve:Z

    .line 108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 109
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioFormat;

    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 110
    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    .line 111
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result p1

    iput p1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 112
    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    .line 113
    iput p5, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    .line 114
    if-nez p6, :cond_30

    new-instance p6, Ljava/lang/String;

    const-string p1, ""

    invoke-direct {p6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_30
    iput-object p6, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    .line 115
    iput-object p7, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    .line 116
    iput p8, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    .line 117
    iput-boolean p9, p0, Landroid/media/audiopolicy/AudioMix;->mInjectSilenceOnStarve:Z

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;IZLandroid/media/audiopolicy/AudioMix-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;IZ)V

    return-void
.end method

.method public static blacklist canBeUsedForPrivilegedMediaCapture(Landroid/media/AudioFormat;)Ljava/lang/String;
    .registers 5

    .line 279
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    .line 280
    const-string v1, " can not be over "

    const/16 v2, 0x3e80

    if-gt v0, v2, :cond_88

    if-gtz v0, :cond_e

    goto/16 :goto_88

    .line 284
    :cond_e
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    .line 285
    const/4 v2, 0x1

    if-gt v0, v2, :cond_6c

    if-gtz v0, :cond_18

    goto :goto_6c

    .line 289
    :cond_18
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p0

    .line 290
    invoke-static {p0}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v0

    const-string v2, "Privileged audio capture encoding "

    if-eqz v0, :cond_54

    invoke-static {p0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_54

    .line 293
    :cond_2b
    invoke-static {p0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_52

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " bytes per sample"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 297
    :cond_52
    const/4 p0, 0x0

    return-object p0

    .line 291
    :cond_54
    :goto_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "is not linear"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_6c
    :goto_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Privileged audio capture channel count "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_88
    :goto_88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Privileged audio capture sample rate "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "kHz"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist containsMatchAttributeRuleForUsage(I)Z
    .registers 3

    .line 258
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMixingRule;->containsMatchAttributeRuleForUsage(I)Z

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 328
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 329
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_59

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_59

    .line 331
    :cond_12
    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    .line 332
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 333
    iget v3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v4, p1, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 334
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    iget v3, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    iget-object p1, p1, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 336
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    if-eqz v2, :cond_57

    goto :goto_58

    :cond_57
    move v0, v1

    .line 333
    :goto_58
    return v0

    .line 329
    :cond_59
    :goto_59
    return v1
.end method

.method public greylist-max-o getFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getMixState()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    return v0
.end method

.method public greylist-max-o getMixType()I
    .registers 2

    .line 225
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    return v0
.end method

.method public greylist-max-o getRegistration()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRouteFlags()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    return v0
.end method

.method public greylist-max-o getRule()Landroid/media/audiopolicy/AudioMixingRule;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 343
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget v2, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isAffectingUsage(I)Z
    .registers 3

    .line 248
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMixingRule;->isAffectingUsage(I)Z

    move-result p1

    return p1
.end method

.method public blacklist isForCallRedirection()Z
    .registers 2

    .line 317
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->isForCallRedirection()Z

    move-result v0

    return v0
.end method

.method public blacklist isInjectingSilenceOnStarvation()Z
    .registers 2

    .line 309
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->dapInjectionStarveManagement()Z

    move-result v0

    if-nez v0, :cond_8

    .line 310
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_8
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioMix;->mInjectSilenceOnStarve:Z

    return v0
.end method

.method public blacklist isRoutedToDevice(ILjava/lang/String;)Z
    .registers 6

    .line 263
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 264
    return v2

    .line 266
    :cond_8
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    if-eq p1, v0, :cond_d

    .line 267
    return v2

    .line 269
    :cond_d
    iget-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 270
    return v2

    .line 272
    :cond_16
    return v1
.end method

.method public blacklist matchesVirtualDeviceId(I)Z
    .registers 3

    .line 322
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public blacklist setAudioMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)V
    .registers 4

    .line 234
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audiopolicy/AudioMixingRule;

    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 239
    return-void

    .line 235
    :cond_15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Target mix role of updated rule doesn\'t match the mix role of the AudioMix"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o setRegistration(Ljava/lang/String;)V
    .registers 2

    .line 229
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public blacklist setVirtualDeviceId(I)V
    .registers 2

    .line 405
    iput p1, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    .line 406
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 354
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 362
    iget-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 363
    iget p2, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->dapInjectionStarveManagement()Z

    move-result p2

    if-eqz p2, :cond_33

    .line 365
    iget-boolean p2, p0, Landroid/media/audiopolicy/AudioMix;->mInjectSilenceOnStarve:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    :cond_33
    return-void
.end method
