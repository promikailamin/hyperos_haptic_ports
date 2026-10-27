.class public Landroid/window/TaskSnapshot;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskSnapshot$Builder;
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


# instance fields
.field private final blacklist mAppearance:I

.field private blacklist mClassNameQS:Ljava/lang/String;

.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mFreeFormTaskBounds:Landroid/graphics/Rect;

.field private blacklist mFreeformScale:F

.field private final blacklist mHasImeSurface:Z

.field private final blacklist mId:J

.field private final blacklist mIsLowResolution:Z

.field private final blacklist mIsRealSnapshot:Z

.field private final blacklist mIsTranslucent:Z

.field private final blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private final blacklist mOrientation:I

.field private final blacklist mRotation:I

.field private final blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTaskSize:Landroid/graphics/Point;

.field private final blacklist mTopActivityComponent:Landroid/content/ComponentName;

.field private final blacklist mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 354
    new-instance v0, Landroid/window/TaskSnapshot$1;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$1;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZ)V
    .registers 33
    .param p1, "id"    # J
    .param p3, "topActivityComponent"    # Landroid/content/ComponentName;
    .param p4, "snapshot"    # Landroid/hardware/HardwareBuffer;
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p6, "orientation"    # I
    .param p7, "rotation"    # I
    .param p8, "taskSize"    # Landroid/graphics/Point;
    .param p9, "contentInsets"    # Landroid/graphics/Rect;
    .param p10, "letterboxInsets"    # Landroid/graphics/Rect;
    .param p11, "isLowResolution"    # Z
    .param p12, "isRealSnapshot"    # Z
    .param p13, "windowingMode"    # I
    .param p14, "appearance"    # I
    .param p15, "isTranslucent"    # Z
    .param p16, "hasImeSurface"    # Z

    .line 79
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    .line 80
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/window/TaskSnapshot;->mId:J

    .line 81
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 82
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 83
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/ColorSpace;->getId()I

    move-result v5

    if-gez v5, :cond_29

    .line 84
    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    goto :goto_2b

    :cond_29
    move-object/from16 v5, p5

    :goto_2b
    iput-object v5, v0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 85
    move/from16 v5, p6

    iput v5, v0, Landroid/window/TaskSnapshot;->mOrientation:I

    .line 86
    move/from16 v6, p7

    iput v6, v0, Landroid/window/TaskSnapshot;->mRotation:I

    .line 87
    new-instance v7, Landroid/graphics/Point;

    move-object/from16 v8, p8

    invoke-direct {v7, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 88
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v9, p9

    invoke-direct {v7, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 89
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v10, p10

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 90
    move/from16 v7, p11

    iput-boolean v7, v0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    .line 91
    move/from16 v11, p12

    iput-boolean v11, v0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    .line 92
    move/from16 v12, p13

    iput v12, v0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    .line 93
    move/from16 v13, p14

    iput v13, v0, Landroid/window/TaskSnapshot;->mAppearance:I

    .line 94
    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    .line 95
    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZFLandroid/graphics/Rect;)V
    .registers 35
    .param p1, "id"    # J
    .param p3, "topActivityComponent"    # Landroid/content/ComponentName;
    .param p4, "snapshot"    # Landroid/hardware/HardwareBuffer;
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p6, "orientation"    # I
    .param p7, "rotation"    # I
    .param p8, "taskSize"    # Landroid/graphics/Point;
    .param p9, "contentInsets"    # Landroid/graphics/Rect;
    .param p10, "letterboxInsets"    # Landroid/graphics/Rect;
    .param p11, "isLowResolution"    # Z
    .param p12, "isRealSnapshot"    # Z
    .param p13, "windowingMode"    # I
    .param p14, "appearance"    # I
    .param p15, "isTranslucent"    # Z
    .param p16, "hasImeSurface"    # Z
    .param p17, "freeformScale"    # F
    .param p18, "freeformTaskBounds"    # Landroid/graphics/Rect;

    .line 116
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    .line 117
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/window/TaskSnapshot;->mId:J

    .line 118
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 119
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 120
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/ColorSpace;->getId()I

    move-result v5

    if-gez v5, :cond_29

    .line 121
    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    goto :goto_2b

    :cond_29
    move-object/from16 v5, p5

    :goto_2b
    iput-object v5, v0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 122
    move/from16 v5, p6

    iput v5, v0, Landroid/window/TaskSnapshot;->mOrientation:I

    .line 123
    move/from16 v6, p7

    iput v6, v0, Landroid/window/TaskSnapshot;->mRotation:I

    .line 124
    new-instance v7, Landroid/graphics/Point;

    move-object/from16 v8, p8

    invoke-direct {v7, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 125
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v9, p9

    invoke-direct {v7, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 126
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v10, p10

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 127
    move/from16 v7, p11

    iput-boolean v7, v0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    .line 128
    move/from16 v11, p12

    iput-boolean v11, v0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    .line 129
    move/from16 v12, p13

    iput v12, v0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    .line 130
    move/from16 v13, p14

    iput v13, v0, Landroid/window/TaskSnapshot;->mAppearance:I

    .line 131
    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    .line 132
    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    .line 133
    move/from16 v1, p17

    iput v1, v0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    .line 134
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v1, p18

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    .line 135
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    .line 140
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 141
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "colorSpaceId":I
    if-ltz v0, :cond_3c

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 144
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_42

    .line 145
    :cond_3c
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    :goto_42
    iput-object v1, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mRotation:I

    .line 148
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 149
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 150
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    .line 159
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    .line 161
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskSnapshot-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppearance()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    return v0
.end method

.method public blacklist getClassNameQS()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mClassNameQS:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public greylist getContentInsets()Landroid/graphics/Rect;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFreeformScale()F
    .registers 2

    .line 103
    iget v0, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    return v0
.end method

.method public blacklist getFreeformTaskBounds()Landroid/graphics/Rect;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 177
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    return-wide v0
.end method

.method public blacklist getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist getOrientation()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    return v0
.end method

.method public blacklist getRotation()I
    .registers 2

    .line 224
    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    return v0
.end method

.method public greylist getSnapshot()Landroid/graphics/GraphicBuffer;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getTaskSize()Landroid/graphics/Point;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getTopActivityComponent()Landroid/content/ComponentName;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    return v0
.end method

.method public blacklist hasImeSurface()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    return v0
.end method

.method public greylist isLowResolution()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    return v0
.end method

.method public greylist isRealSnapshot()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    return v0
.end method

.method public blacklist isTranslucent()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    return v0
.end method

.method public blacklist setClassNameQS(Ljava/lang/String;)V
    .registers 2
    .param p1, "classNameQS"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Landroid/window/TaskSnapshot;->mClassNameQS:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 330
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 331
    .local v0, "width":I
    :goto_b
    iget-object v2, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    .line 332
    .local v1, "height":I
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskSnapshot{ mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTopActivityComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 334
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mColorSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 336
    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTaskSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 339
    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContentInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 340
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLetterboxInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 341
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsLowResolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsRealSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAppearance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsTranslucent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasImeSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFreeformScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFreeFormTaskBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 307
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 308
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 309
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 314
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 315
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 316
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    iget v0, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 324
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 326
    return-void
.end method
