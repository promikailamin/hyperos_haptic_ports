.class public Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
.super Ljava/lang/Object;
.source "AidlInputGestureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/AidlInputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchpadGestureTrigger"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist gestureType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger$1;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger$1;-><init>()V

    sput-object v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    nop

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 217
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 218
    :cond_8
    instance-of v2, p1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    if-nez v2, :cond_d

    return v1

    .line 219
    :cond_d
    check-cast p1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 220
    iget v2, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v1

    .line 221
    :cond_22
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

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

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3c

    .line 205
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 208
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 211
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 205
    return-void

    .line 209
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_3a

    .line 208
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_34

    .line 211
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 212
    nop

    .line 213
    return-void

    .line 209
    :cond_34
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :catchall_3a
    move-exception v2

    goto :goto_44

    .line 204
    :cond_3c
    :try_start_3c
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_3a

    .line 208
    :goto_44
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4d

    .line 209
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_4d
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 212
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 195
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 196
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 198
    return-void
.end method
