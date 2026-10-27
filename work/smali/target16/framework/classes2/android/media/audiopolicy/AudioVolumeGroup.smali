.class public final Landroid/media/audiopolicy/AudioVolumeGroup;
.super Ljava/lang/Object;
.source "AudioVolumeGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_VOLUME_GROUP:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AudioVolumeGroup"

.field private static blacklist sAudioVolumeGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mAudioAttributes:[Landroid/media/AudioAttributes;

.field private blacklist mId:I

.field private blacklist mLegacyStreamTypes:[I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sLock:Ljava/lang/Object;

    .line 185
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroup$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioVolumeGroup$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I[Landroid/media/AudioAttributes;[I)V
    .registers 6

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "name must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "audioAttributes must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "legacyStreamTypes must not be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    .line 116
    iput p2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    .line 117
    iput-object p3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 118
    iput-object p4, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    .line 119
    return-void
.end method

.method public static blacklist getAudioVolumeGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    if-nez v0, :cond_16

    .line 74
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_7
    sget-object v1, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    if-nez v1, :cond_11

    .line 76
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->initializeAudioVolumeGroups()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    .line 78
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 80
    :cond_16
    :goto_16
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->sAudioVolumeGroups:Ljava/util/List;

    return-object v0
.end method

.method private static blacklist initializeAudioVolumeGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-static {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->native_list_audio_volume_groups(Ljava/util/ArrayList;)I

    move-result v1

    .line 86
    if-eqz v1, :cond_12

    .line 87
    const-string v1, "AudioVolumeGroup"

    const-string v2, ": listAudioVolumeGroups failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_12
    new-instance v1, Landroid/media/audiopolicy/AudioVolumeGroup$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/audiopolicy/AudioVolumeGroup$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 90
    new-instance v1, Landroid/media/audiopolicy/AudioVolumeGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/audiopolicy/AudioVolumeGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 92
    return-object v0
.end method

.method private blacklist isInternalGroup()Z
    .registers 3

    .line 99
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/audiopolicy/AudioVolumeGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/audiopolicy/AudioVolumeGroup$$ExternalSyntheticLambda0;-><init>()V

    .line 100
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    .line 99
    return v0
.end method

.method static synthetic blacklist lambda$initializeAudioVolumeGroups$0(Landroid/media/audiopolicy/AudioVolumeGroup;)Z
    .registers 1

    .line 89
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->isInternalGroup()Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$initializeAudioVolumeGroups$1(Landroid/media/audiopolicy/AudioVolumeGroup;)Z
    .registers 4

    .line 90
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 91
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object p0

    aget p0, p0, v1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    nop

    .line 90
    :goto_15
    return v1
.end method

.method static synthetic blacklist lambda$isInternalGroup$2(Landroid/media/AudioAttributes;)Z
    .registers 1

    .line 100
    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->isInternalAttributesForStrategy(Landroid/media/AudioAttributes;)Z

    move-result p0

    return p0
.end method

.method private static native blacklist native_list_audio_volume_groups(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 124
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 126
    :cond_12
    check-cast p1, Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 128
    iget-object v2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    iget v3, p1, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    iget-object p1, p1, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 129
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 128
    :goto_30
    return v0

    .line 124
    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist getAudioAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    return v0
.end method

.method public whitelist getLegacyStreamTypes()[I
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 134
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 135
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 134
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist name()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 213
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, " Id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Supported Audio Attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_3b
    if-ge v5, v3, :cond_5e

    aget-object v6, v2, v5

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 227
    :cond_5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "Supported Legacy Stream Types: { "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object p1, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v1, p1

    :goto_72
    if-ge v4, v1, :cond_82

    aget v2, p1, v4

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    .line 231
    :cond_82
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    .line 173
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    .line 177
    or-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 179
    :cond_21
    iget-object p2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object p2, p0, Landroid/media/audiopolicy/AudioVolumeGroup;->mLegacyStreamTypes:[I

    array-length v0, p2

    :goto_2a
    if-ge v2, v0, :cond_34

    aget v1, p2, v2

    .line 181
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 183
    :cond_34
    return-void
.end method
