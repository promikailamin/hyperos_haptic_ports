.class public Landroid/media/audiopolicy/AudioPolicy;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;,
        Landroid/media/audiopolicy/AudioPolicy$EventHandler;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;,
        Landroid/media/audiopolicy/AudioPolicy$PolicyStatus;,
        Landroid/media/audiopolicy/AudioPolicy$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FOCUS_POLICY_DUCKING_DEFAULT:I = 0x0

.field public static final whitelist FOCUS_POLICY_DUCKING_IN_APP:I = 0x0

.field public static final whitelist FOCUS_POLICY_DUCKING_IN_POLICY:I = 0x1

.field private static final greylist-max-o MSG_FOCUS_ABANDON:I = 0x5

.field private static final greylist-max-o MSG_FOCUS_GRANT:I = 0x1

.field private static final greylist-max-o MSG_FOCUS_LOSS:I = 0x2

.field private static final greylist-max-o MSG_FOCUS_REQUEST:I = 0x4

.field private static final greylist-max-o MSG_MIX_STATE_UPDATE:I = 0x3

.field private static final greylist-max-o MSG_POLICY_STATUS_CHANGE:I = 0x0

.field private static final greylist-max-o MSG_VOL_ADJUST:I = 0x6

.field public static final whitelist POLICY_STATUS_REGISTERED:I = 0x2

.field public static final whitelist POLICY_STATUS_UNREGISTERED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioPolicy"

.field private static greylist-max-o sService:Landroid/media/IAudioService;


# instance fields
.field private blacklist mCaptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

.field private greylist-max-o mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

.field private blacklist mInjectors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsFocusPolicy:Z

.field private final blacklist mIsTestFocusPolicy:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final blacklist mProjection:Landroid/media/projection/MediaProjection;

.field private greylist-max-o mRegistrationId:Ljava/lang/String;

.field private greylist-max-o mStatus:I

.field private final greylist-max-o mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

.field private final greylist-max-o mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolCb(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monPolicyStatusChange(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->onPolicyStatusChange()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(ILjava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;)V
    .registers 11

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    .line 1160
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$1;

    invoke-direct {v0, p0}, Landroid/media/audiopolicy/AudioPolicy$1;-><init>(Landroid/media/audiopolicy/AudioPolicy;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 166
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 167
    const/4 p1, 0x1

    iput p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    .line 168
    iput-object p2, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    .line 169
    if-nez p3, :cond_1e

    .line 170
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 172
    :cond_1e
    if-eqz p3, :cond_28

    .line 173
    new-instance p1, Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    invoke-direct {p1, p0, p0, p3}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;-><init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    goto :goto_32

    .line 175
    :cond_28
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    .line 176
    const-string p1, "AudioPolicy"

    const-string p2, "No event handler due to looper without a thread"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_32
    iput-object p4, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    .line 179
    iput-object p5, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .line 180
    iput-boolean p6, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    .line 181
    iput-boolean p7, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsTestFocusPolicy:Z

    .line 182
    iput-object p8, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    .line 183
    iput-object p9, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    .line 184
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;Landroid/media/audiopolicy/AudioPolicy-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method private static greylist-max-o addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;
    .registers 3

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 5

    .line 818
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 819
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 821
    :cond_b
    const-string v0, "AudioPolicy"

    const-string v1, "Null context, checking permission via ActivityManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 825
    :try_start_1a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result p1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_23

    return p1

    .line 826
    :catch_23
    move-exception p1

    .line 827
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist-max-o checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 833
    if-nez p1, :cond_f

    .line 834
    if-eqz p2, :cond_7

    const-string p1, "Invalid null AudioMix for AudioTrack creation"

    goto :goto_9

    .line 835
    :cond_7
    const-string p1, "Invalid null AudioMix for AudioRecord creation"

    .line 836
    :goto_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 838
    :cond_f
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 841
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_45

    .line 845
    if-eqz p2, :cond_33

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    goto :goto_33

    .line 846
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid AudioMix: not defined for being a recording source"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 849
    :cond_33
    :goto_33
    if-nez p2, :cond_44

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_44

    .line 850
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid AudioMix: not defined for capturing playback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 853
    :cond_44
    :goto_44
    return-void

    .line 843
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid AudioMix: not defined for loop back"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 839
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid mix: not part of this policy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;
    .registers 1

    .line 155
    if-nez p0, :cond_7

    .line 156
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p0

    .line 155
    :goto_b
    return-object p0
.end method

.method private static greylist-max-o getService()Landroid/media/IAudioService;
    .registers 1

    .line 1307
    sget-object v0, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 1308
    sget-object v0, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 1310
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1311
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    sput-object v0, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    .line 1312
    sget-object v0, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    return-object v0
.end method

.method private blacklist isAudioPolicyRegisteredLocked()Z
    .registers 3

    .line 754
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isCallRedirectionPolicy()Z
    .registers 4

    .line 804
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 806
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 807
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 809
    :cond_20
    goto :goto_b

    .line 810
    :cond_21
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 811
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist isLoopbackRenderPolicy()Z
    .registers 4

    .line 797
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 800
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic blacklist lambda$isLoopbackRenderPolicy$4(Landroid/media/audiopolicy/AudioMix;)Z
    .registers 2

    .line 798
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static synthetic blacklist lambda$updateMixingRules$0(Landroid/util/Pair;)Landroid/media/audiopolicy/AudioMix;
    .registers 1

    .line 458
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/media/audiopolicy/AudioMix;

    return-object p0
.end method

.method static synthetic blacklist lambda$updateMixingRules$1(I)[Landroid/media/audiopolicy/AudioMix;
    .registers 1

    .line 458
    new-array p0, p0, [Landroid/media/audiopolicy/AudioMix;

    return-object p0
.end method

.method static synthetic blacklist lambda$updateMixingRules$2(Landroid/util/Pair;)Landroid/media/audiopolicy/AudioMixingRule;
    .registers 1

    .line 459
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/media/audiopolicy/AudioMixingRule;

    return-object p0
.end method

.method static synthetic blacklist lambda$updateMixingRules$3(I)[Landroid/media/audiopolicy/AudioMixingRule;
    .registers 1

    .line 460
    new-array p0, p0, [Landroid/media/audiopolicy/AudioMixingRule;

    return-object p0
.end method

.method private greylist-max-o onPolicyStatusChange()V
    .registers 2

    .line 1149
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    if-eqz v0, :cond_9

    .line 1150
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onStatusChange()V

    .line 1152
    :cond_9
    return-void
.end method

.method private greylist-max-o policyReadyToUse()Z
    .registers 7

    .line 758
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_12

    .line 760
    const-string v1, "AudioPolicy"

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    monitor-exit v0

    return v3

    .line 763
    :cond_12
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 764
    const-string v1, "AudioPolicy"

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    monitor-exit v0

    return v3

    .line 767
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_9c

    .line 770
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 771
    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v3

    .line 773
    :goto_2c
    const-string v2, "android.permission.CALL_AUDIO_INTERCEPTION"

    .line 774
    invoke-direct {p0, v2}, Landroid/media/audiopolicy/AudioPolicy;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    move v2, v1

    goto :goto_37

    :cond_36
    move v2, v3

    .line 779
    :goto_37
    :try_start_37
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    if-eqz v4, :cond_49

    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v4}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v4
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_45} :catch_8f

    if-eqz v4, :cond_49

    move v4, v1

    goto :goto_4a

    :cond_49
    move v4, v3

    .line 783
    :goto_4a
    nop

    .line 785
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isLoopbackRenderPolicy()Z

    move-result v5

    if-eqz v5, :cond_53

    if-nez v4, :cond_8e

    .line 786
    :cond_53
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isCallRedirectionPolicy()Z

    move-result v4

    if-eqz v4, :cond_5b

    if-nez v2, :cond_8e

    :cond_5b
    if-nez v0, :cond_8e

    .line 788
    const-string v0, "AudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use AudioPolicy for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needs MODIFY_AUDIO_ROUTING or MediaProjection that can project audio."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return v3

    .line 793
    :cond_8e
    return v1

    .line 780
    :catch_8f
    move-exception v0

    .line 781
    const-string v1, "AudioPolicy"

    const-string v2, "Failed to check if MediaProjection#canProjectAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 767
    :catchall_9c
    move-exception v1

    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method private greylist-max-o sendMsg(I)V
    .registers 3

    .line 1291
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_9

    .line 1292
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendEmptyMessage(I)Z

    .line 1294
    :cond_9
    return-void
.end method

.method private greylist-max-o sendMsg(ILjava/lang/Object;I)V
    .registers 7

    .line 1297
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_10

    .line 1298
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    .line 1299
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2, p2}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1298
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1301
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist attachMixes(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 362
    if-eqz p1, :cond_74

    .line 365
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_5
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_69

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 371
    if-eqz v2, :cond_3c

    .line 374
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 375
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 377
    :cond_38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    goto :goto_17

    .line 372
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMix in attachMixes"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 380
    :cond_44
    new-instance p1, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-direct {p1, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    .line 381
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_71

    .line 383
    :try_start_4d
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result p1

    .line 384
    if-nez p1, :cond_5c

    .line 385
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->add(Ljava/util/ArrayList;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5c} :catch_5e
    .catchall {:try_start_4d .. :try_end_5c} :catchall_71

    .line 387
    :cond_5c
    :try_start_5c
    monitor-exit v0

    return p1

    .line 388
    :catch_5e
    move-exception p1

    .line 389
    const-string v1, "AudioPolicy"

    const-string v2, "Dead object in attachMixes"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    .line 367
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot alter unregistered AudioPolicy"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :catchall_71
    move-exception p1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_71

    throw p1

    .line 363
    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null list of AudioMix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o cb()Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2

    .line 1158
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method public whitelist clearFadeManagerConfigurationForFocusLoss()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 703
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 704
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_7
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isAudioPolicyRegisteredLocked()Z

    move-result v2

    const-string v3, "Cannot clear FadeManagerConfiguration from unregistered AudioPolicy"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    .line 709
    :try_start_10
    invoke-interface {v0}, Landroid/media/IAudioService;->clearFadeManagerConfigurationForFocusLoss()I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16
    .catchall {:try_start_10 .. :try_end_14} :catchall_23

    :try_start_14
    monitor-exit v1

    return v0

    .line 710
    :catch_16
    move-exception v0

    .line 711
    const-string v2, "AudioPolicy"

    const-string v3, "Received remote exception for clearFadeManagerConfigurationForFocusLoss:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 715
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public whitelist createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 981
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_f

    .line 982
    const-string p1, "AudioPolicy"

    const-string v0, "Cannot create AudioRecord sink for AudioMix"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 p1, 0x0

    return-object p1

    .line 985
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    .line 988
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    .line 990
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    .line 989
    invoke-static {v2}, Landroid/media/AudioFormat;->inChannelMaskFromOutChannelMask(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 993
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 994
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 995
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const-string v3, "fixedVolume"

    .line 996
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 997
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 998
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    .line 1001
    :cond_52
    new-instance v3, Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 1003
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    .line 1005
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p1

    .line 1003
    const/16 v5, 0xc

    invoke-static {v4, v5, p1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    invoke-direct {v3, v2, v1, p1, v0}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 1008
    iget-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1009
    :try_start_74
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    if-nez v0, :cond_80

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    .line 1012
    :cond_80
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    monitor-exit p1

    .line 1014
    return-object v3

    .line 1013
    :catchall_8c
    move-exception v0

    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method public whitelist createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1029
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1030
    const-string p1, "AudioPolicy"

    const-string v0, "Cannot create AudioTrack source for AudioMix"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 p1, 0x0

    return-object p1

    .line 1033
    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    .line 1035
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1036
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1037
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1038
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1039
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    .line 1041
    :cond_2f
    new-instance v3, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1042
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v5

    .line 1043
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 1044
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p1

    .line 1043
    invoke-static {v1, v2, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 1048
    iget-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1049
    :try_start_5d
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    if-nez v1, :cond_68

    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    .line 1052
    :cond_68
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    monitor-exit p1

    .line 1054
    return-object v3

    .line 1053
    :catchall_74
    move-exception v0

    monitor-exit p1
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_74

    throw v0
.end method

.method public whitelist detachMixes(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 407
    if-eqz p1, :cond_74

    .line 410
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_5
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_69

    .line 414
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 416
    if-eqz v2, :cond_3c

    .line 419
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 420
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 422
    :cond_38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    goto :goto_17

    .line 417
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMix in detachMixes"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_44
    new-instance p1, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-direct {p1, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    .line 426
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_71

    .line 428
    :try_start_4d
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result p1

    .line 429
    if-nez p1, :cond_5c

    .line 430
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->remove(Ljava/util/ArrayList;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5c} :catch_5e
    .catchall {:try_start_4d .. :try_end_5c} :catchall_71

    .line 432
    :cond_5c
    :try_start_5c
    monitor-exit v0

    return p1

    .line 433
    :catch_5e
    move-exception p1

    .line 434
    const-string v1, "AudioPolicy"

    const-string v2, "Dead object in detachMixes"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    .line 412
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot alter unregistered AudioPolicy"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :catchall_71
    move-exception p1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_71

    throw p1

    .line 408
    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null list of AudioMix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object v0
.end method

.method public whitelist getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 736
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 737
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 738
    :try_start_7
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isAudioPolicyRegisteredLocked()Z

    move-result v2

    const-string v3, "Cannot get FadeManagerConfiguration from unregistered AudioPolicy"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    .line 742
    :try_start_10
    invoke-interface {v0}, Landroid/media/IAudioService;->getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16
    .catchall {:try_start_10 .. :try_end_14} :catchall_23

    :try_start_14
    monitor-exit v1

    return-object v0

    .line 743
    :catch_16
    move-exception v0

    .line 744
    const-string v2, "AudioPolicy"

    const-string v3, "Received remote exception for getFadeManagerConfigurationForFocusLoss:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 749
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public whitelist getFocusDuckingBehavior()I
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    return v0
.end method

.method public whitelist getFocusStack()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 917
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getFocusStack()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 918
    :catch_9
    move-exception v0

    .line 919
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getMediaProjection()Landroid/media/projection/MediaProjection;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public blacklist getMixes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 631
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist getRegistration()Ljava/lang/String;
    .registers 2

    .line 650
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 1102
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    return v0
.end method

.method public greylist-max-o hasFocusListener()Z
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist invalidateCaptorsAndInjectors()V
    .registers 4

    .line 1061
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1062
    return-void

    .line 1064
    :cond_7
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_a
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    .line 1066
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1067
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioTrack;
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_63

    .line 1068
    if-nez v2, :cond_29

    .line 1069
    goto :goto_14

    .line 1073
    :cond_29
    :try_start_29
    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 1074
    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2f} :catch_30
    .catchall {:try_start_29 .. :try_end_2f} :catchall_63

    .line 1078
    goto :goto_31

    .line 1075
    :catch_30
    move-exception v2

    .line 1079
    :goto_31
    goto :goto_14

    .line 1080
    :cond_32
    :try_start_32
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1082
    :cond_37
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    if-eqz v1, :cond_61

    .line 1083
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1084
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecord;
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_63

    .line 1085
    if-nez v2, :cond_56

    .line 1086
    goto :goto_41

    .line 1090
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_63

    .line 1094
    goto :goto_5b

    .line 1091
    :catch_5a
    move-exception v2

    .line 1095
    :goto_5b
    goto :goto_41

    .line 1096
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1098
    :cond_61
    monitor-exit v0

    .line 1099
    return-void

    .line 1098
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_63

    throw v1
.end method

.method public greylist-max-o isFocusPolicy()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    return v0
.end method

.method public blacklist isTestFocusPolicy()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsTestFocusPolicy:Z

    return v0
.end method

.method public greylist-max-o isVolumeController()Z
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist removeUidDeviceAffinity(I)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 530
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_3
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 534
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c

    .line 536
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/media/IAudioService;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_1a
    .catchall {:try_start_d .. :try_end_15} :catchall_2c

    .line 537
    if-nez p1, :cond_18

    const/4 v2, 0x1

    :cond_18
    :try_start_18
    monitor-exit v0

    return v2

    .line 538
    :catch_1a
    move-exception p1

    .line 539
    const-string v1, "AudioPolicy"

    const-string v3, "Dead object in removeUidDeviceAffinity"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    monitor-exit v0

    return v2

    .line 532
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use unregistered AudioPolicy"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 542
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public whitelist removeUserIdDeviceAffinity(I)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 555
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 559
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c

    .line 561
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/media/IAudioService;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_1a
    .catchall {:try_start_d .. :try_end_15} :catchall_2c

    .line 562
    if-nez p1, :cond_18

    const/4 v2, 0x1

    :cond_18
    :try_start_18
    monitor-exit v0

    return v2

    .line 563
    :catch_1a
    move-exception p1

    .line 564
    const-string v1, "AudioPolicy"

    const-string v3, "Dead object in removeUserIdDeviceAffinity"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    monitor-exit v0

    return v2

    .line 557
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use unregistered AudioPolicy"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 567
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public blacklist reset()V
    .registers 2

    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public whitelist sendFocusLoss(Landroid/media/AudioFocusInfo;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 961
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    :try_start_3
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return p1

    .line 964
    :catch_10
    move-exception p1

    .line 965
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 940
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioFocusInfo;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 943
    nop

    .line 944
    return-void

    .line 941
    :catch_13
    move-exception p1

    .line 942
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 668
    const-string v0, "FadeManagerConfiguration for focus loss cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 671
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 672
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_c
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isAudioPolicyRegisteredLocked()Z

    move-result v2

    const-string v3, "Cannot set FadeManagerConfiguration with unregistered AudioPolicy"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_28

    .line 677
    :try_start_15
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1b
    .catchall {:try_start_15 .. :try_end_19} :catchall_28

    :try_start_19
    monitor-exit v1

    return p1

    .line 678
    :catch_1b
    move-exception p1

    .line 679
    const-string v0, "AudioPolicy"

    const-string v2, "Received remote exception for setFadeManagerConfigurationForFocusLoss:"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 683
    :catchall_28
    move-exception p1

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist setFocusDuckingBehavior(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 877
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 879
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ducking behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1f
    :goto_1f
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_22
    iget v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    .line 886
    if-ne p1, v0, :cond_36

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_2e

    goto :goto_36

    .line 889
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot handle ducking without an audio focus listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 892
    :cond_36
    :goto_36
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_5e

    .line 894
    nop

    .line 895
    :try_start_3b
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 894
    invoke-interface {v0, p1, v2}, Landroid/media/IAudioService;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v0

    .line 896
    if-nez v0, :cond_49

    .line 897
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iput p1, v2, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_49} :catch_4b
    .catchall {:try_start_3b .. :try_end_49} :catchall_5e

    .line 899
    :cond_49
    :try_start_49
    monitor-exit v1

    return v0

    .line 900
    :catch_4b
    move-exception p1

    .line 901
    const-string v0, "AudioPolicy"

    const-string v2, "Dead object in setFocusPropertiesForPolicy for behavior"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    monitor-exit v1

    const/4 p1, -0x1

    return p1

    .line 883
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change ducking behavior for unregistered policy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 904
    :catchall_5e
    move-exception p1

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public whitelist setRegistration(Ljava/lang/String;)V
    .registers 4

    .line 635
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_3
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    .line 637
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->setRegistration(Ljava/lang/String;)V

    .line 638
    if-eqz p1, :cond_10

    .line 639
    const/4 p1, 0x2

    iput p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    goto :goto_18

    .line 641
    :cond_10
    const/4 p1, 0x1

    iput p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    .line 642
    iget-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->reset()V

    .line 644
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    .line 645
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(I)V

    .line 646
    return-void

    .line 644
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist setUidDeviceAffinity(ILjava/util/List;)Z
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 489
    if-eqz p2, :cond_6d

    .line 492
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_5
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_62

    .line 496
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 497
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 498
    nop

    .line 499
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 500
    if-eqz v5, :cond_3f

    .line 504
    nop

    .line 505
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    aput v6, v1, v4

    .line 506
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 507
    add-int/lit8 v4, v4, 0x1

    .line 508
    goto :goto_1d

    .line 501
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioDeviceInfo in setUidDeviceAffinity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :cond_47
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object p2
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_6a

    .line 511
    :try_start_4b
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    invoke-interface {p2, v4, p1, v1, v2}, Landroid/media/IAudioService;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result p1
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_53} :catch_58
    .catchall {:try_start_4b .. :try_end_53} :catchall_6a

    .line 513
    if-nez p1, :cond_56

    const/4 v3, 0x1

    :cond_56
    :try_start_56
    monitor-exit v0

    return v3

    .line 514
    :catch_58
    move-exception p1

    .line 515
    const-string p2, "AudioPolicy"

    const-string v1, "Dead object in setUidDeviceAffinity"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    monitor-exit v0

    return v3

    .line 494
    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use unregistered AudioPolicy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 518
    :catchall_6a
    move-exception p1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_56 .. :try_end_6c} :catchall_6a

    throw p1

    .line 490
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null list of audio devices"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setUserIdDeviceAffinity(ILjava/util/List;)Z
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 588
    const-string v0, "Illegal null list of audio devices"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_8
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_65

    .line 593
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 594
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 595
    nop

    .line 596
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 597
    if-eqz v5, :cond_42

    .line 601
    nop

    .line 602
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    aput v6, v1, v4

    .line 603
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 604
    add-int/lit8 v4, v4, 0x1

    .line 605
    goto :goto_20

    .line 598
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioDeviceInfo in setUserIdDeviceAffinity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :cond_4a
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object p2
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_6d

    .line 608
    :try_start_4e
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    invoke-interface {p2, v4, p1, v1, v2}, Landroid/media/IAudioService;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result p1
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_56} :catch_5b
    .catchall {:try_start_4e .. :try_end_56} :catchall_6d

    .line 610
    if-nez p1, :cond_59

    const/4 v3, 0x1

    :cond_59
    :try_start_59
    monitor-exit v0

    return v3

    .line 611
    :catch_5b
    move-exception p1

    .line 612
    const-string p2, "AudioPolicy"

    const-string v1, "Dead object in setUserIdDeviceAffinity"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    monitor-exit v0

    return v3

    .line 591
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use unregistered AudioPolicy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :catchall_6d
    move-exception p1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method public whitelist toLogFriendlyString()Ljava/lang/String;
    .registers 3

    .line 1316
    new-instance v0, Ljava/lang/String;

    const-string v1, "android.media.audiopolicy.AudioPolicy:\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    return-object v0
.end method

.method public whitelist updateMixingRules(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/media/audiopolicy/AudioMix;",
            "Landroid/media/audiopolicy/AudioMixingRule;",
            ">;>;)I"
        }
    .end annotation

    .line 452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 456
    :try_start_7
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_4f

    .line 457
    nop

    .line 458
    :try_start_b
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audiopolicy/AudioMix;

    .line 459
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audiopolicy/AudioMixingRule;

    .line 461
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    .line 457
    invoke-interface {v0, v2, v3, v4}, Landroid/media/IAudioService;->updateMixingRulesForPolicy([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v0

    .line 462
    if-nez v0, :cond_4a

    .line 463
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v2, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->updateMixingRules(Ljava/util/List;)V

    .line 465
    :cond_4a
    monitor-exit v1

    return v0

    .line 466
    :catchall_4c
    move-exception p1

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw p1
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_4f} :catch_4f

    .line 467
    :catch_4f
    move-exception p1

    .line 468
    const-string v0, "AudioPolicy"

    const-string v1, "Received remote exeception in updateMixingRules call: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    const/4 p1, -0x1

    return p1
.end method
