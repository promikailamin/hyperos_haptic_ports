.class public Landroid/window/TaskSnapshot;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskSnapshot$Builder;,
        Landroid/window/TaskSnapshot$ReferenceFlags;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REFERENCE_BROADCAST:I = 0x1

.field public static final blacklist REFERENCE_CACHE:I = 0x2

.field public static final blacklist REFERENCE_CONTENT_SUGGESTION:I = 0x8

.field public static final blacklist REFERENCE_CONVERT_RESOLUTION:I = 0x20

.field public static final blacklist REFERENCE_NONE:I = 0x0

.field public static final blacklist REFERENCE_PERSIST:I = 0x4

.field public static final blacklist REFERENCE_WILL_UPDATE_TO_CACHE:I = 0x40

.field public static final blacklist REFERENCE_WRITE_TO_PARCEL:I = 0x10


# instance fields
.field private final blacklist mAppearance:I

.field private final blacklist mCaptureTime:J

.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContentInsets:Landroid/graphics/Rect;

.field private final blacklist mDensityDpi:I

.field private final blacklist mHasImeSurface:Z

.field private final blacklist mId:J

.field private blacklist mInternalReferences:I

.field private final blacklist mIsLowResolution:Z

.field private final blacklist mIsRealSnapshot:Z

.field private final blacklist mIsTranslucent:Z

.field private final blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private final blacklist mOrientation:I

.field private final blacklist mRotation:I

.field private blacklist mSafeSnapshotReleaser:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private blacklist mSnapshotTracker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/TaskSnapshotManager$SnapshotTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskSize:Landroid/graphics/Point;

.field private final blacklist mTopActivityComponent:Landroid/content/ComponentName;

.field private final blacklist mUiMode:I

.field private final blacklist mWindowingMode:I

.field private blacklist mWriteToParcelCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 550
    new-instance v0, Landroid/window/TaskSnapshot$1;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$1;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZII)V
    .registers 21

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide p1, p0, Landroid/window/TaskSnapshot;->mId:J

    .line 130
    iput-wide p3, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    .line 131
    iput-object p5, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 132
    iput-object p6, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 133
    invoke-virtual {p7}, Landroid/graphics/ColorSpace;->getId()I

    move-result p1

    if-gez p1, :cond_18

    .line 134
    sget-object p1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p7

    goto :goto_19

    :cond_18
    nop

    :goto_19
    iput-object p7, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 135
    iput p8, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    .line 136
    iput p9, p0, Landroid/window/TaskSnapshot;->mRotation:I

    .line 137
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 138
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 139
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 140
    iput-boolean p13, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    .line 141
    iput-boolean p14, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    .line 142
    iput p15, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    .line 143
    move/from16 p1, p16

    iput p1, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    .line 144
    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    .line 145
    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    .line 146
    move/from16 p1, p19

    iput p1, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    .line 147
    move/from16 p1, p20

    iput p1, p0, Landroid/window/TaskSnapshot;->mDensityDpi:I

    .line 148
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    .line 152
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 153
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    if-ltz v0, :cond_31

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 156
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_37

    .line 157
    :cond_31
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    :goto_37
    iput-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    .line 160
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 161
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 162
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    if-lez v0, :cond_94

    goto :goto_96

    :cond_94
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    :goto_96
    iput v0, p0, Landroid/window/TaskSnapshot;->mDensityDpi:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    .line 173
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskSnapshot-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addReference(I)V
    .registers 3

    monitor-enter p0

    .line 516
    const/16 v0, 0x10

    if-ne p1, v0, :cond_b

    .line 517
    :try_start_5
    iget v0, p0, Landroid/window/TaskSnapshot;->mWriteToParcelCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/window/TaskSnapshot;->mWriteToParcelCount:I

    .line 519
    :cond_b
    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    .line 520
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 521
    iget p1, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    .line 523
    :cond_19
    monitor-exit p0

    return-void

    .line 515
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist attachAndQueueBufferWithColorSpace(Landroid/view/Surface;)V
    .registers 4

    .line 311
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 312
    return-void

    .line 314
    :cond_7
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p1, v0, v1}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 315
    return-void
.end method

.method public blacklist closeBuffer()V
    .registers 3

    .line 278
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 279
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshotTracker:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    .line 280
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshotTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshotManager$SnapshotTracker;

    .line 281
    if-eqz v0, :cond_1b

    .line 282
    invoke-static {}, Landroid/window/TaskSnapshotManager;->getInstance()Landroid/window/TaskSnapshotManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/window/TaskSnapshotManager;->removeTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V

    .line 284
    :cond_1b
    goto :goto_21

    .line 285
    :cond_1c
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 288
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppearance()I
    .registers 2

    .line 417
    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    return v0
.end method

.method public blacklist getCaptureTime()J
    .registers 3

    .line 187
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    return-wide v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public greylist getContentInsets()Landroid/graphics/Rect;
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDensityDpi()I
    .registers 2

    .line 431
    iget v0, p0, Landroid/window/TaskSnapshot;->mDensityDpi:I

    return v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getHardwareBufferFormat()I
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    return v0
.end method

.method public blacklist getHardwareBufferHeight()I
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getHardwareBufferWidth()I
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 179
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    return-wide v0
.end method

.method public blacklist getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist getOrientation()I
    .registers 2

    .line 337
    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    return v0
.end method

.method public blacklist getRotation()I
    .registers 2

    .line 344
    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    return v0
.end method

.method public greylist getSnapshot()Landroid/graphics/GraphicBuffer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getTaskSize()Landroid/graphics/Point;
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getTopActivityComponent()Landroid/content/ComponentName;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getUiMode()I
    .registers 2

    .line 424
    iget v0, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 408
    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    return v0
.end method

.method public blacklist hasImeSurface()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    return v0
.end method

.method public blacklist hasProtectedContent()Z
    .registers 2

    .line 301
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 302
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_8
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v0

    return v0
.end method

.method public blacklist isBufferValid()Z
    .registers 2

    .line 294
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist isLowResolution()Z
    .registers 2

    .line 377
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    return v0
.end method

.method public greylist isRealSnapshot()Z
    .registers 2

    .line 386
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    return v0
.end method

.method public blacklist isSameHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z
    .registers 3

    .line 322
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public blacklist isTranslucent()Z
    .registers 2

    .line 394
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    return v0
.end method

.method public declared-synchronized blacklist removeReference(I)V
    .registers 3

    monitor-enter p0

    .line 531
    :try_start_1
    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    .line 532
    iget p1, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    if-nez p1, :cond_28

    iget-object p1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz p1, :cond_28

    iget-object p1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_28

    .line 533
    iget-object p1, p0, Landroid/window/TaskSnapshot;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;

    if-eqz p1, :cond_23

    .line 534
    iget-object p1, p0, Landroid/window/TaskSnapshot;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_28

    .line 536
    :cond_23
    iget-object p1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 539
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 530
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public blacklist setBufferToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 246
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 247
    return-void

    .line 249
    :cond_7
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 250
    return-void
.end method

.method public declared-synchronized blacklist setSafeRelease(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/HardwareBuffer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 547
    :try_start_1
    iput-object p1, p0, Landroid/window/TaskSnapshot;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 548
    monitor-exit p0

    return-void

    .line 546
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method blacklist setSnapshotTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V
    .registers 3

    .line 504
    if-nez p1, :cond_6

    .line 505
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/window/TaskSnapshot;->mSnapshotTracker:Ljava/lang/ref/WeakReference;

    goto :goto_d

    .line 507
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshotTracker:Ljava/lang/ref/WeakReference;

    .line 509
    :goto_d
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 472
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_7

    .line 473
    const-string v0, "null"

    goto :goto_47

    .line 474
    :cond_7
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 475
    const-string v0, "closed"

    goto :goto_47

    .line 477
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskSnapshot{ mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCaptureTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTopActivityComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 483
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSnapshot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mColorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 485
    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTaskSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 488
    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 489
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLetterboxInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 490
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsLowResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsRealSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsTranslucent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHasImeSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInternalReferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWriteToParcelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mWriteToParcelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshot;->mDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    return-object v0
.end method

.method public blacklist wrapToBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 257
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_8
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist wrapToBitmap(Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 3

    .line 268
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 269
    const/4 p1, 0x0

    return-object p1

    .line 271
    :cond_8
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 441
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 442
    iget-object p2, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    invoke-static {p2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 443
    iget-object p2, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz p2, :cond_19

    iget-object p2, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result p2

    if-nez p2, :cond_19

    iget-object p2, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 444
    iget-object p2, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget p2, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget p2, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object p2, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 448
    iget-object p2, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 449
    iget-object p2, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 450
    iget-boolean p2, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 451
    iget-boolean p2, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 452
    iget p2, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget p2, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-boolean p2, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 455
    iget-boolean p2, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 456
    iget p2, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget p2, p0, Landroid/window/TaskSnapshot;->mDensityDpi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 459
    monitor-enter p0

    .line 460
    :try_start_6e
    iget p1, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    const/16 p2, 0x10

    and-int/2addr p1, p2

    if-eqz p1, :cond_82

    .line 461
    iget p1, p0, Landroid/window/TaskSnapshot;->mWriteToParcelCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/window/TaskSnapshot;->mWriteToParcelCount:I

    .line 462
    iget p1, p0, Landroid/window/TaskSnapshot;->mWriteToParcelCount:I

    if-nez p1, :cond_82

    .line 463
    invoke-virtual {p0, p2}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 466
    :cond_82
    monitor-exit p0

    .line 467
    return-void

    .line 466
    :catchall_84
    move-exception p1

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_84

    throw p1
.end method
