.class public final Landroid/companion/virtual/ViewConfigurationParams;
.super Ljava/lang/Object;
.source "ViewConfigurationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/ViewConfigurationParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/ViewConfigurationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_VALUE:I = -0x1


# instance fields
.field private final blacklist mDoubleTapMinTimeMillis:I

.field private final blacklist mDoubleTapTimeoutMillis:I

.field private final blacklist mLongPressTimeoutMillis:I

.field private final blacklist mMaximumFlingVelocityPixelsPerSecond:I

.field private final blacklist mMinimumFlingVelocityPixelsPerSecond:I

.field private final blacklist mMultiPressTimeoutMillis:I

.field private final blacklist mScrollFriction:F

.field private final blacklist mTapTimeoutMillis:I

.field private final blacklist mTouchSlopPixels:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 227
    new-instance v0, Landroid/companion/virtual/ViewConfigurationParams$1;

    invoke-direct {v0}, Landroid/companion/virtual/ViewConfigurationParams$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/ViewConfigurationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIFIIIII)V
    .registers 10

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    .line 63
    iput p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    .line 64
    iput p3, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    .line 65
    iput p4, p0, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    .line 66
    iput p5, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    .line 67
    iput p6, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    .line 68
    iput p7, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    .line 69
    iput p8, p0, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    .line 70
    iput p9, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIFIIIIILandroid/companion/virtual/ViewConfigurationParams-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/companion/virtual/ViewConfigurationParams;-><init>(IIIFIIIII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/ViewConfigurationParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/ViewConfigurationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 106
    :cond_4
    instance-of v1, p1, Landroid/companion/virtual/ViewConfigurationParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    check-cast p1, Landroid/companion/virtual/ViewConfigurationParams;

    .line 107
    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    if-ne v1, v3, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    if-ne v1, v3, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    if-ne v1, v3, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    .line 110
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    if-ne v1, v3, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    if-ne v1, v3, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    if-ne v1, v3, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    iget v3, p1, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    if-ne v1, v3, :cond_46

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    iget p1, p1, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    if-ne v1, p1, :cond_46

    goto :goto_47

    :cond_46
    move v0, v2

    .line 107
    :goto_47
    return v0

    .line 106
    :cond_48
    return v2
.end method

.method public whitelist getDoubleTapMinTimeDuration()Ljava/time/Duration;
    .registers 3

    .line 207
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDoubleTapTimeoutDuration()Ljava/time/Duration;
    .registers 3

    .line 199
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLongPressTimeoutDuration()Ljava/time/Duration;
    .registers 3

    .line 215
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaximumFlingVelocityPixelsPerSecond()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    return v0
.end method

.method public whitelist getMinimumFlingVelocityPixelsPerSecond()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    return v0
.end method

.method public whitelist getMultiPressTimeoutDuration()Ljava/time/Duration;
    .registers 3

    .line 223
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScrollFriction()F
    .registers 2

    .line 179
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    return v0
.end method

.method public whitelist getTapTimeoutDuration()Ljava/time/Duration;
    .registers 3

    .line 189
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTouchSlopPixels()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 120
    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewConfigurationParams(mTouchSlopPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinimumFlingVelocityPixelsPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaximumFlingVelocityPixelsPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollFriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTapTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDoubleTapTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDoubleTapMinTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLongPressTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMultiPressTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 92
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTouchSlopPixels:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMinimumFlingVelocityPixelsPerSecond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMaximumFlingVelocityPixelsPerSecond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mScrollFriction:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mTapTimeoutMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapTimeoutMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mDoubleTapMinTimeMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mLongPressTimeoutMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Landroid/companion/virtual/ViewConfigurationParams;->mMultiPressTimeoutMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
