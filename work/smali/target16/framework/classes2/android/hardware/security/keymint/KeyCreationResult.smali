.class public Landroid/hardware/security/keymint/KeyCreationResult;
.super Ljava/lang/Object;
.source "KeyCreationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/security/keymint/KeyCreationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist certificateChain:[Landroid/hardware/security/keymint/Certificate;

.field public blacklist keyBlob:[B

.field public blacklist keyCharacteristics:[Landroid/hardware/security/keymint/KeyCharacteristics;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/hardware/security/keymint/KeyCreationResult$1;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyCreationResult$1;-><init>()V

    sput-object v0, Landroid/hardware/security/keymint/KeyCreationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 70
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 71
    nop

    .line 72
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 73
    invoke-direct {p0, v3}, Landroid/hardware/security/keymint/KeyCreationResult;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 75
    :cond_19
    return v2

    .line 77
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 78
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 80
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 63
    nop

    .line 64
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyCreationResult;->keyCharacteristics:[Landroid/hardware/security/keymint/KeyCharacteristics;

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyCreationResult;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 65
    iget-object v1, p0, Landroid/hardware/security/keymint/KeyCreationResult;->certificateChain:[Landroid/hardware/security/keymint/Certificate;

    invoke-direct {p0, v1}, Landroid/hardware/security/keymint/KeyCreationResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 66
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7a

    .line 48
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 58
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 56
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/security/keymint/KeyCreationResult;->keyBlob:[B

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 58
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 56
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_40
    :try_start_40
    sget-object v2, Landroid/hardware/security/keymint/KeyCharacteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyCharacteristics;

    iput-object v2, p0, Landroid/hardware/security/keymint/KeyCreationResult;->keyCharacteristics:[Landroid/hardware/security/keymint/KeyCharacteristics;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 58
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 56
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_5f
    :try_start_5f
    sget-object v2, Landroid/hardware/security/keymint/Certificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/Certificate;

    iput-object v2, p0, Landroid/hardware/security/keymint/KeyCreationResult;->certificateChain:[Landroid/hardware/security/keymint/Certificate;
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_78

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    .line 58
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    nop

    .line 60
    return-void

    .line 56
    :cond_72
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :catchall_78
    move-exception v2

    goto :goto_82

    .line 47
    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_78

    .line 55
    :goto_82
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8b

    .line 56
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_8b
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v1, p0, Landroid/hardware/security/keymint/KeyCreationResult;->keyBlob:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 35
    iget-object v1, p0, Landroid/hardware/security/keymint/KeyCreationResult;->keyCharacteristics:[Landroid/hardware/security/keymint/KeyCharacteristics;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 36
    iget-object v1, p0, Landroid/hardware/security/keymint/KeyCreationResult;->certificateChain:[Landroid/hardware/security/keymint/Certificate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    return-void
.end method
