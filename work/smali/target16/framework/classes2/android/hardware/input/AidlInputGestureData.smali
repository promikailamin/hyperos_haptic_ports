.class public Landroid/hardware/input/AidlInputGestureData;
.super Ljava/lang/Object;
.source "AidlInputGestureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/AidlInputGestureData$Trigger;,
        Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;,
        Landroid/hardware/input/AidlInputGestureData$KeyTrigger;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/AidlInputGestureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist allowCaptureByFocusedWindow:Z

.field public blacklist appLaunchCategory:Ljava/lang/String;

.field public blacklist appLaunchClassName:Ljava/lang/String;

.field public blacklist appLaunchPackageName:Ljava/lang/String;

.field public blacklist appLaunchRole:Ljava/lang/String;

.field public blacklist gestureType:I

.field public blacklist trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$1;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$1;-><init>()V

    sput-object v0, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    .line 20
    iput-boolean v0, p0, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 103
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 104
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 105
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 107
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    nop

    .line 99
    iget-object v0, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-direct {p0, v0}, Landroid/hardware/input/AidlInputGestureData;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 100
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 79
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 80
    :cond_8
    instance-of v2, p1, Landroid/hardware/input/AidlInputGestureData;

    if-nez v2, :cond_d

    return v1

    .line 81
    :cond_d
    check-cast p1, Landroid/hardware/input/AidlInputGestureData;

    .line 82
    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    iget-object v3, p1, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 83
    :cond_1a
    iget v2, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 84
    :cond_2d
    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    return v1

    .line 85
    :cond_38
    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    return v1

    .line 86
    :cond_43
    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    return v1

    .line 87
    :cond_4e
    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    return v1

    .line 88
    :cond_59
    iget-boolean v2, p0, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p1, p1, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    return v1

    .line 89
    :cond_6c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 94
    iget-object v0, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    iget v1, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    iget-boolean v6, p0, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

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

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_e2

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 71
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/input/AidlInputGestureData$Trigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/AidlInputGestureData$Trigger;

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 71
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 71
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 71
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 71
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 71
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cb

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c5

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 71
    :cond_c5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_cb
    :try_start_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_e0

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    nop

    .line 75
    return-void

    .line 71
    :cond_da
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :catchall_e0
    move-exception v2

    goto :goto_ea

    .line 54
    :cond_e2
    :try_start_e2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_e0

    .line 70
    :goto_ea
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f3

    .line 71
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_f3
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    iget p2, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object p2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-boolean p2, p0, Landroid/hardware/input/AidlInputGestureData;->allowCaptureByFocusedWindow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
