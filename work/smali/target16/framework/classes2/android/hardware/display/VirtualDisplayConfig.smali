.class public final Landroid/hardware/display/VirtualDisplayConfig;
.super Ljava/lang/Object;
.source "VirtualDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplayConfig$Builder;,
        Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;,
        Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/VirtualDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

.field private final blacklist mDefaultBrightness:F

.field private final blacklist mDensityDpi:I

.field private final blacklist mDimBrightness:F

.field private final blacklist mDisplayCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private final blacklist mDisplayIdToMirror:I

.field private final blacklist mFlags:I

.field private final blacklist mHeight:I

.field private final blacklist mIgnoreActivitySizeRestrictions:Z

.field private final blacklist mIsHomeSupported:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mRequestedRefreshRate:F

.field private final blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mUniqueId:Ljava/lang/String;

.field private final blacklist mWidth:I

.field private final blacklist mWindowManagerMirroringEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 423
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$1;

    invoke-direct {v0}, Landroid/hardware/display/VirtualDisplayConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    .line 373
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    .line 380
    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IBrightnessListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IBrightnessListener;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    .line 385
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/VirtualDisplayConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/Surface;",
            "Ljava/lang/String;",
            "IZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;FZ",
            "Landroid/view/DisplayCutout;",
            "ZFF",
            "Landroid/hardware/display/IBrightnessListener;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    .line 91
    iput p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    .line 92
    iput p3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    .line 93
    iput p4, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    .line 94
    iput p5, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    .line 95
    iput-object p6, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    .line 96
    iput-object p7, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    .line 97
    iput p8, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    .line 98
    iput-boolean p9, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    .line 99
    iput-object p10, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    .line 100
    iput p11, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    .line 101
    iput-boolean p12, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    .line 102
    iput-object p13, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 103
    iput-boolean p14, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    .line 104
    iput p15, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    .line 105
    move/from16 p1, p16

    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    .line 106
    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;Landroid/hardware/display/VirtualDisplayConfig-IA;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 307
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 308
    return v0

    .line 310
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/VirtualDisplayConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 311
    return v2

    .line 313
    :cond_a
    check-cast p1, Landroid/hardware/display/VirtualDisplayConfig;

    .line 314
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    if-ne v1, v3, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    if-ne v1, v3, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    if-ne v1, v3, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    if-ne v1, v3, :cond_91

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    .line 319
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    .line 320
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    iget-boolean v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    if-ne v1, v3, :cond_91

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    .line 323
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_91

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    iget-boolean v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    if-ne v1, v3, :cond_91

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    iget-boolean v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    if-ne v1, v3, :cond_91

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 327
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_91

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    iget v3, p1, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_91

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    iget-object p1, p1, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    .line 330
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    move v0, v2

    .line 314
    :goto_92
    return v0
.end method

.method public blacklist getBrightnessListener()Landroid/hardware/display/IBrightnessListener;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    return-object v0
.end method

.method public whitelist getDefaultBrightness()F
    .registers 2

    .line 182
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    return v0
.end method

.method public whitelist getDensityDpi()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    return v0
.end method

.method public whitelist getDimBrightness()F
    .registers 2

    .line 195
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    return v0
.end method

.method public whitelist getDisplayCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public blacklist getDisplayIdToMirror()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRequestedRefreshRate()F
    .registers 2

    .line 278
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    return v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 19

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iget v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iget-object v7, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iget v8, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    .line 337
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iget v11, v0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    .line 338
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-boolean v12, v0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v13, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-boolean v14, v0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    .line 339
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v15, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v1

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v0, v0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v0

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 335
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 341
    return v0
.end method

.method public whitelist isHomeSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 242
    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    return v0
.end method

.method public whitelist isIgnoreActivitySizeRestrictions()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 257
    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    if-eqz v0, :cond_c

    .line 258
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->vdmForceAppUniversalResizableApi()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 257
    :goto_d
    return v0
.end method

.method public blacklist isWindowManagerMirroringEnabled()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplayConfig( mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayIdToMirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWindowManagerMirroringEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequestedRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsHomeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIgnoreActivitySizeRestrictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDimBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 283
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 289
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 292
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 293
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 294
    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    .line 296
    iget-boolean p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIgnoreActivitySizeRestrictions:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 297
    iget p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDefaultBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 298
    iget p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDimBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 299
    iget-object p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    if-eqz p2, :cond_5b

    iget-object p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    invoke-interface {p2}, Landroid/hardware/display/IBrightnessListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_5c

    :cond_5b
    const/4 p2, 0x0

    :goto_5c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 300
    return-void
.end method
