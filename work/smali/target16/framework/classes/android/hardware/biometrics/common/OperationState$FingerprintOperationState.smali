.class public Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
.super Ljava/lang/Object;
.source "OperationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/common/OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintOperationState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist extension:Landroid/os/ParcelableHolder;

.field public blacklist isHardwareIgnoringTouches:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Landroid/os/ParcelableHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ParcelableHolder;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 209
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 210
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 211
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 213
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 204
    nop

    .line 205
    iget-object v0, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 206
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5c

    .line 189
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 196
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 199
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 189
    return-void

    .line 197
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    .line 191
    iget-object v2, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-virtual {v2, p1}, Landroid/os/ParcelableHolder;->readFromParcel(Landroid/os/Parcel;)V

    .line 193
    :cond_30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_5a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_45

    .line 196
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3f

    .line 199
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 193
    return-void

    .line 197
    :cond_3f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_45
    :try_start_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_5a

    .line 196
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_54

    .line 199
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 200
    nop

    .line 201
    return-void

    .line 197
    :cond_54
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :catchall_5a
    move-exception v2

    goto :goto_64

    .line 188
    :cond_5c
    :try_start_5c
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_5a

    .line 196
    :goto_64
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6d

    .line 197
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_6d
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 200
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->extension:Landroid/os/ParcelableHolder;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    iget-boolean v0, p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 179
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 180
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 182
    return-void
.end method
