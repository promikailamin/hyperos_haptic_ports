.class public Landroid/hardware/tv/tuner/AudioPreselection;
.super Ljava/lang/Object;
.source "AudioPreselection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/AudioPreselection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist hasAudioDescription:Z

.field public blacklist hasDialogueEnhancement:Z

.field public blacklist hasSpokenSubtitles:Z

.field public blacklist labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

.field public blacklist language:Ljava/lang/String;

.field public blacklist preselectionId:I

.field public blacklist renderingIndication:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Landroid/hardware/tv/tuner/AudioPreselection$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/AudioPreselection$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/AudioPreselection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->preselectionId:I

    .line 17
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasAudioDescription:Z

    .line 18
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasSpokenSubtitles:Z

    .line 19
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasDialogueEnhancement:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 84
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 86
    nop

    .line 87
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 88
    invoke-direct {p0, v3}, Landroid/hardware/tv/tuner/AudioPreselection;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 90
    :cond_19
    return v2

    .line 92
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 93
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 95
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    nop

    .line 80
    iget-object v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/AudioPreselection;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 81
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_e2

    .line 56
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 72
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->preselectionId:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 72
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_40
    :try_start_40
    sget-object v2, Landroid/hardware/tv/tuner/AudioPreselectionLabel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    iput-object v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 72
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->language:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 72
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->renderingIndication:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 72
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasAudioDescription:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 72
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasSpokenSubtitles:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cb

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c5

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 72
    :cond_c5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_cb
    :try_start_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasDialogueEnhancement:Z
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_e0

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    nop

    .line 76
    return-void

    .line 72
    :cond_da
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :catchall_e0
    move-exception v2

    goto :goto_ea

    .line 55
    :cond_e2
    :try_start_e2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_e0

    .line 71
    :goto_ea
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f3

    .line 72
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_f3
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->preselectionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget-object p2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget p2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->renderingIndication:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean p2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasAudioDescription:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 43
    iget-boolean p2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasSpokenSubtitles:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-boolean p2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasDialogueEnhancement:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void
.end method
