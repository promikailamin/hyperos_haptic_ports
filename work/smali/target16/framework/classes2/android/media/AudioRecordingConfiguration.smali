.class public final Landroid/media/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingConfiguration$AudioSource;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

.field private final greylist-max-o mClientFormat:Landroid/media/AudioFormat;

.field private final greylist-max-o mClientPackageName:Ljava/lang/String;

.field private final blacklist mClientPortId:I

.field private final blacklist mClientSessionId:I

.field private blacklist mClientSilenced:Z

.field private final greylist-max-o mClientSource:I

.field private final greylist-max-o mClientUid:I

.field private final blacklist mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

.field private final greylist-max-o mDeviceFormat:Landroid/media/AudioFormat;

.field private final blacklist mDeviceSource:I

.field private final greylist-max-o mPatchHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Ljava/lang/String;

    const-string v1, "AudioRecordingConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    .line 325
    new-instance v0, Landroid/media/AudioRecordingConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioRecordingConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V
    .registers 22

    .line 109
    const/4 v0, 0x0

    new-array v12, v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    new-array v13, v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v13}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V
    .registers 13

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    .line 89
    iput p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    .line 90
    iput p3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 91
    iput-object p4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 92
    iput-object p5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 93
    iput p6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    .line 94
    iput-object p7, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 95
    iput p8, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    .line 96
    iput-boolean p9, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    .line 97
    iput p10, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    .line 98
    iput-object p11, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 99
    iput-object p12, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 100
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 375
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 376
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 384
    const/4 v0, 0x0

    move v1, v0

    :goto_51
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v2, v2

    if-ge v1, v2, :cond_62

    .line 385
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    new-instance v3, Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-direct {v3, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;-><init>(Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 387
    :cond_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [Landroid/media/audiofx/AudioEffect$Descriptor;

    iput-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 388
    nop

    :goto_6b
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_7c

    .line 389
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    new-instance v2, Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-direct {v2, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;-><init>(Landroid/os/Parcel;)V

    aput-object v2, v1, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 391
    :cond_7c
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;
    .registers 14

    .line 160
    new-instance v0, Landroid/media/AudioRecordingConfiguration;

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget-object v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget v6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iget v8, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    iget-boolean v9, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    iget v10, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    iget-object v11, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    iget-object v12, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    const/4 v1, -0x1

    const-string v7, ""

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v0
.end method

.method public static greylist-max-o toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .registers 10

    .line 129
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 130
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    const-string v5, "\' "

    const-string v6, "\'"

    if-ge v4, v2, :cond_30

    aget-object v7, v1, v4

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v7, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 133
    :cond_30
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 134
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v4, v2

    :goto_38
    if-ge v3, v4, :cond_5a

    aget-object v7, v2, v3

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v7, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 138
    :cond_5a
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- source client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 139
    invoke-static {v4}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 140
    invoke-virtual {v5}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- uid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- patch:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- pack:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- format client="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 144
    invoke-virtual {v5}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 145
    invoke-virtual {v5}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- silenced:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean p0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " -- effects client="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 138
    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioRecordingConfiguration;->toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 395
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 396
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6d

    instance-of v2, p1, Landroid/media/AudioRecordingConfiguration;

    if-nez v2, :cond_c

    goto :goto_6d

    .line 398
    :cond_c
    check-cast p1, Landroid/media/AudioRecordingConfiguration;

    .line 400
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    iget v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    if-ne v2, v3, :cond_6b

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    iget v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    if-ne v2, v3, :cond_6b

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    if-ne v2, v3, :cond_6b

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iget v3, p1, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v2, v3, :cond_6b

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 404
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget-object v3, p1, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 405
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    iget v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    if-ne v2, v3, :cond_6b

    iget-boolean v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    iget-boolean v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    if-ne v2, v3, :cond_6b

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    iget v3, p1, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    if-ne v2, v3, :cond_6b

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    iget-object v3, p1, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 410
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    iget-object p1, p1, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 411
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v0, v1

    .line 400
    :goto_6c
    return v0

    .line 396
    :cond_6d
    :goto_6d
    return v1
.end method

.method public whitelist getAudioDevice()Landroid/media/AudioDeviceInfo;
    .registers 8

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 256
    sget-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "Error retrieving list of audio patches"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v2

    .line 259
    :cond_14
    const/4 v1, 0x0

    move v3, v1

    :goto_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 260
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPatch;

    .line 261
    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    move-result v5

    iget v6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v5, v6, :cond_43

    .line 262
    invoke-virtual {v4}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_46

    array-length v3, v0

    if-lez v3, :cond_46

    .line 265
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioPort;->id()I

    move-result v0

    .line 266
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0

    .line 259
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 272
    :cond_46
    sget-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t find device for recording, did recording end already?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v2
.end method

.method public whitelist getAudioSource()I
    .registers 2

    .line 302
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    return v0
.end method

.method public whitelist getClientAudioSessionId()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    return v0
.end method

.method public whitelist getClientAudioSource()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    return v0
.end method

.method public whitelist getClientEffects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiofx/AudioEffect$Descriptor;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getClientFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public greylist-max-r getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientPortId()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    return v0
.end method

.method public whitelist getClientUid()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 242
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 245
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    return v0

    .line 243
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODIFY_AUDIO_ROUTING permission is missing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEffects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiofx/AudioEffect$Descriptor;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 342
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isClientSilenced()Z
    .registers 2

    .line 293
    iget-boolean v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 352
    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {p2, p1, v0}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 356
    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-boolean p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    iget p2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    move p2, v0

    :goto_3a
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v1, v1

    if-ge p2, v1, :cond_49

    .line 364
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;->writeToParcel(Landroid/os/Parcel;)V

    .line 363
    add-int/lit8 p2, p2, 0x1

    goto :goto_3a

    .line 366
    :cond_49
    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    nop

    :goto_50
    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length p2, p2

    if-ge v0, p2, :cond_5f

    .line 368
    iget-object p2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;->writeToParcel(Landroid/os/Parcel;)V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 370
    :cond_5f
    return-void
.end method
