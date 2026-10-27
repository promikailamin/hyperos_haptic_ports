.class public Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
.super Ljava/lang/Object;
.source "AudioHalEngineConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalEngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapSpecificConfig"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

.field public blacklist criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

.field public blacklist criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

.field public blacklist domains:[Landroid/media/audio/common/AudioHalCapDomain;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 178
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 179
    nop

    .line 180
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 181
    invoke-direct {p0, v3}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 183
    :cond_19
    return v2

    .line 185
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 186
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 188
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 169
    nop

    .line 170
    iget-object v0, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 171
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 172
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->domains:[Landroid/media/audio/common/AudioHalCapDomain;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 174
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_9d

    .line 152
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_9b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 152
    return-void

    .line 162
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterion;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_9b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    return-void

    .line 162
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_44
    :try_start_44
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterionType;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_9b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_63

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5d

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    return-void

    .line 162
    :cond_5d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_63
    :try_start_63
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterionV2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterionV2;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_9b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-void

    .line 162
    :cond_7c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_82
    :try_start_82
    sget-object v2, Landroid/media/audio/common/AudioHalCapDomain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapDomain;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->domains:[Landroid/media/audio/common/AudioHalCapDomain;
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_9b

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_95

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :cond_95
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :catchall_9b
    move-exception v2

    goto :goto_a5

    .line 151
    :cond_9d
    :try_start_9d
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_9b

    .line 161
    :goto_a5
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_ae

    .line 162
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_ae
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 136
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 138
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 139
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 140
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->domains:[Landroid/media/audio/common/AudioHalCapDomain;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 143
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    return-void
.end method
