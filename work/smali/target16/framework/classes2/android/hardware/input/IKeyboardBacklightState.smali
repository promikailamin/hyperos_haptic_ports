.class public Landroid/hardware/input/IKeyboardBacklightState;
.super Ljava/lang/Object;
.source "IKeyboardBacklightState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/IKeyboardBacklightState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist brightnessLevel:I

.field public blacklist maxBrightnessLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/hardware/input/IKeyboardBacklightState$1;

    invoke-direct {v0}, Landroid/hardware/input/IKeyboardBacklightState$1;-><init>()V

    sput-object v0, Landroid/hardware/input/IKeyboardBacklightState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    .line 16
    iput v0, p0, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    nop

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 59
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 60
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 61
    :cond_8
    instance-of v2, p1, Landroid/hardware/input/IKeyboardBacklightState;

    if-nez v2, :cond_d

    return v1

    .line 62
    :cond_d
    check-cast p1, Landroid/hardware/input/IKeyboardBacklightState;

    .line 63
    iget v2, p0, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 64
    :cond_22
    iget v2, p0, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    return v1

    .line 65
    :cond_35
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 70
    iget v0, p0, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 45
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_57

    .line 46
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_55

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 51
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 54
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 52
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_55

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 51
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 54
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 52
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_55

    .line 51
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4f

    .line 54
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    nop

    .line 56
    return-void

    .line 52
    :cond_4f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :catchall_55
    move-exception v2

    goto :goto_5f

    .line 45
    :cond_57
    :try_start_57
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_55

    .line 51
    :goto_5f
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_68

    .line 52
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_68
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v0, p0, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    return-void
.end method
