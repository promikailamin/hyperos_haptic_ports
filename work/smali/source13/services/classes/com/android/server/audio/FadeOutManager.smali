.class public final Lcom/android/server/audio/FadeOutManager;
.super Ljava/lang/Object;
.source "FadeOutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DELAY_FADE_IN_OFFENDERS_MS:J = 0x7d0L

.field private static final FADEABLE_USAGES:[I

.field private static final FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field static final FADE_OUT_DURATION_MS:J = 0x7d0L

.field private static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field private static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final TAG:Ljava/lang/String; = "AudioService.FadeOutManager"

.field private static final UNFADEABLE_CONTENT_TYPES:[I

.field private static final UNFADEABLE_PLAYER_TYPES:[I

.field static final fobidenFadeOutListForWinner:[Ljava/lang/String;


# instance fields
.field private final mFadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/FadeOutManager$FadedOutApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetFADEOUT_VSHAPE()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPLAY_CREATE_IF_NEEDED()Landroid/media/VolumeShaper$Operation;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPLAY_SKIP_RAMP()Landroid/media/VolumeShaper$Operation;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 52
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 54
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_6a

    new-array v2, v2, [F

    fill-array-data v2, :array_74

    .line 55
    invoke-virtual {v0, v3, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 58
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 60
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v2, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 62
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 65
    new-array v2, v1, [I

    fill-array-data v2, :array_7e

    sput-object v2, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_PLAYER_TYPES:[I

    .line 70
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    sput-object v3, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    .line 74
    new-array v1, v1, [I

    fill-array-data v1, :array_86

    sput-object v1, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    .line 80
    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 122
    const-string v0, "cn.kuwo.player"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->fobidenFadeOutListForWinner:[Ljava/lang/String;

    return-void

    :array_6a
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_74
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data

    :array_7e
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_86
    .array-data 4
        0xe
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    return-void
.end method

.method static canBeFadedOut(Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 4
    .param p0, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    .line 133
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_PLAYER_TYPES:[I

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 135
    return v1

    .line 137
    :cond_e
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    .line 138
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    .line 137
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 143
    return v1

    .line 145
    :cond_1f
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_30

    .line 149
    return v1

    .line 151
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method static canCauseFadeOut(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .registers 5
    .param p0, "requester"    # Lcom/android/server/audio/FocusRequester;
    .param p1, "loser"    # Lcom/android/server/audio/FocusRequester;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    .line 97
    return v2

    .line 99
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_16

    .line 101
    return v2

    .line 105
    :cond_16
    invoke-static {p0}, Lcom/android/server/audio/FadeOutManager;->isForbidFadeOutForWinner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 107
    return v2

    .line 110
    :cond_1d
    return v1
.end method

.method static getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .registers 5
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 155
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_f

    .line 156
    return-wide v1

    .line 158
    :cond_f
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 159
    return-wide v1

    .line 161
    :cond_1c
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method static isForbidFadeOutForWinner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 4
    .param p0, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/audio/FadeOutManager;->fobidenFadeOutListForWinner:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 116
    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 117
    const/4 v1, 0x1

    return v1

    .line 115
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method declared-synchronized checkFade(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 202
    .local v0, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    if-nez v0, :cond_15

    .line 203
    monitor-exit p0

    return-void

    .line 205
    :cond_15
    const/4 v1, 0x1

    :try_start_16
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    .line 206
    monitor-exit p0

    return-void

    .line 200
    .end local v0    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    .end local p1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 227
    .local v1, "da":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    .line 228
    .end local v1    # "da":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    goto :goto_b

    .line 229
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    :cond_1b
    monitor-exit p0

    return-void

    .line 225
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized fadeOutUid(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p2, "players":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 170
    :try_start_1
    const-string v0, "AudioService.FadeOutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 172
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    invoke-direct {v2, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    :cond_33
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 175
    .local v0, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 176
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_56

    .line 177
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_43

    .line 178
    :cond_54
    monitor-exit p0

    return-void

    .line 169
    .end local v0    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p1    # "uid":I
    .end local p2    # "players":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 5
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    monitor-enter p0

    .line 213
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    .line 218
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1a

    .line 219
    .local v1, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    if-nez v1, :cond_15

    .line 220
    monitor-exit p0

    return-void

    .line 222
    :cond_15
    :try_start_15
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    .line 223
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "uid":I
    .end local v1    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    .end local p1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unfadeOutUid(ILjava/util/HashMap;)V
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p2, "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 186
    :try_start_1
    const-string v0, "AudioService.FadeOutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unfadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2f

    .line 188
    .local v0, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    if-nez v0, :cond_2a

    .line 189
    monitor-exit p0

    return-void

    .line 191
    :cond_2a
    :try_start_2a
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeUnfadeAll(Ljava/util/HashMap;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    .line 192
    monitor-exit p0

    return-void

    .line 185
    .end local v0    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    .end local p1    # "uid":I
    .end local p2    # "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
