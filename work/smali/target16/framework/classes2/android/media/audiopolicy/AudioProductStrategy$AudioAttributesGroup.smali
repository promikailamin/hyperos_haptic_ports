.class final Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioProductStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioAttributesGroup"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioAttributes:[Landroid/media/AudioAttributes;

.field private blacklist mLegacyStreamType:I

.field private blacklist mProductStrategyId:I

.field private blacklist mVolumeGroupId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmVolumeGroupId(Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)I
    .registers 1

    iget p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInternalStrategy(Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->isInternalStrategy()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1110
    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(III[Landroid/media/AudioAttributes;)V
    .registers 5

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    iput p1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    .line 997
    iput p2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    .line 998
    iput p3, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mProductStrategyId:I

    .line 999
    iput-object p4, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 1000
    return-void
.end method

.method private blacklist isInternalStrategy()Z
    .registers 6

    .line 1003
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 1004
    invoke-static {v4}, Landroid/media/audiopolicy/AudioProductStrategy;->isInternalAttributesForStrategy(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1005
    const/4 v0, 0x1

    return v0

    .line 1003
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1008
    :cond_14
    return v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1013
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1014
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 1016
    :cond_12
    check-cast p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 1018
    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    iget v3, p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    iget v3, p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mProductStrategyId:I

    iget v3, p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mProductStrategyId:I

    if-ne v2, v3, :cond_31

    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    iget-object p1, p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 1021
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    .line 1018
    :goto_32
    return v0

    .line 1014
    :cond_33
    :goto_33
    return v1
.end method

.method public blacklist getAttributesMatchingScore(Landroid/media/AudioAttributes;)I
    .registers 8

    .line 1055
    nop

    .line 1056
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_1c

    aget-object v4, v0, v3

    .line 1057
    invoke-static {v4, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$smattributesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)I

    move-result v4

    .line 1058
    invoke-static {v4}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$smisMatchScoreEquals(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1059
    return v4

    .line 1061
    :cond_15
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1056
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1063
    :cond_1c
    return v2
.end method

.method blacklist getAttributesMatchingScore(Landroid/media/AudioAttributes;II)I
    .registers 10

    .line 1078
    nop

    .line 1079
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_1c

    aget-object v4, v0, v3

    .line 1080
    invoke-static {v4, p1, p2, p3}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$smattributesAndZonesMatchesScore(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;II)I

    move-result v4

    .line 1082
    invoke-static {v4}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$smisMatchScoreEquals(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1083
    return v4

    .line 1085
    :cond_15
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1079
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1087
    :cond_1c
    return v2
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3

    .line 1040
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    if-nez v0, :cond_a

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$sfgetDEFAULT_ATTRIBUTES()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_f
    return-object v0
.end method

.method blacklist getStrategyId()I
    .registers 2

    .line 1044
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mProductStrategyId:I

    return v0
.end method

.method public blacklist getStreamType()I
    .registers 2

    .line 1031
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    return v0
.end method

.method public blacklist getVolumeGroupId()I
    .registers 2

    .line 1035
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1026
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mProductStrategyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 1027
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1026
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist supportsStreamType(I)Z
    .registers 3

    .line 1091
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1134
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Legacy Stream Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1141
    const-string v2, " Volume Group Id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 1145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v5}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1148
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1101
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mProductStrategyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 1106
    or-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1105
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1108
    :cond_25
    return-void
.end method
