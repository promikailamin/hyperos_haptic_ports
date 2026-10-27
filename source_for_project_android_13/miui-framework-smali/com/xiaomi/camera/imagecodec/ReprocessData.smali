.class public Lcom/xiaomi/camera/imagecodec/ReprocessData;
.super Ljava/lang/Object;
.source "ReprocessData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;,
        Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_JPEG_QUALITY:I = 0x64

.field public static blacklist REPROCESS_FUNCTION_NONE:I

.field public static blacklist REPROCESS_FUNCTION_RAW_MFNR:I

.field public static blacklist REPROCESS_FUNCTION_RAW_MFNR_2ND:I

.field public static blacklist REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

.field public static blacklist REPROCESS_FUNCTION_RAW_SUPERNIGHT_2ND:I


# instance fields
.field private blacklist mCropRegion:[I

.field private blacklist mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

.field private blacklist mImageName:Ljava/lang/String;

.field private blacklist mImageTag:Ljava/lang/String;

.field private blacklist mIsFrontCamera:Z

.field private blacklist mIsFrontMirror:Z

.field private blacklist mIsMainImageFromPool:Z

.field private blacklist mIsRemosaic:I

.field private blacklist mIsTuningImageFromPool:Z

.field private blacklist mJpegQuality:I

.field private blacklist mKeepTuningImage:Z

.field private blacklist mMainImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOrientation:I

.field private blacklist mOutputFormat:I

.field private blacklist mOutputHeight:I

.field private blacklist mOutputWidth:I

.field private blacklist mRawInputHeight:I

.field private blacklist mRawInputWidth:I

.field private blacklist mReprocessFunctionType:I

.field private blacklist mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field private blacklist mRotateOrientationToZero:Z

.field private blacklist mSiqeType:B

.field private blacklist mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field private blacklist mTuningImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mYuvInputHeight:I

.field private blacklist mYuvInputWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR_2ND:I

    .line 29
    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT_2ND:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/Image;Ljava/lang/String;ILcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V
    .registers 13
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "imageTag"    # Ljava/lang/String;
    .param p3, "isRemosaic"    # I
    .param p4, "result"    # Lcom/xiaomi/protocol/ICustomCaptureResult;
    .param p5, "isFrontCamera"    # Z
    .param p6, "outWidth"    # I
    .param p7, "outHeight"    # I
    .param p8, "outputFormat"    # I
    .param p9, "listener"    # Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    .line 65
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    .line 117
    iput p3, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsRemosaic:I

    .line 118
    iput-object p4, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    .line 119
    iput-boolean p5, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    .line 120
    iput p6, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    .line 121
    iput p7, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    .line 122
    iput p8, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    .line 123
    iput-object p9, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    .line 124
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V
    .registers 10
    .param p2, "imageTag"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/xiaomi/protocol/ICustomCaptureResult;
    .param p4, "isFrontCamera"    # Z
    .param p5, "outputWidth"    # I
    .param p6, "outputHeight"    # I
    .param p7, "outputFormat"    # I
    .param p8, "listener"    # Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/protocol/ICustomCaptureResult;",
            "ZIII",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;",
            ")V"
        }
    .end annotation

    .line 146
    .local p1, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    .line 65
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    .line 147
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 148
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    .line 150
    iput-boolean p4, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    .line 151
    iput p5, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    .line 152
    iput p6, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    .line 153
    iput p7, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    .line 154
    iput-object p8, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    .line 155
    return-void
.end method


# virtual methods
.method public blacklist getCropRegion()[I
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mCropRegion:[I

    return-object v0
.end method

.method public blacklist getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    return-object v0
.end method

.method public blacklist getImageName()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getImageTag()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getJpegQuality()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    return v0
.end method

.method public blacklist getMainImage()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getOrientation()I
    .registers 2

    .line 391
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    return v0
.end method

.method public blacklist getOutputFormat()I
    .registers 2

    .line 221
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    return v0
.end method

.method public blacklist getOutputHeight()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    return v0
.end method

.method public blacklist getOutputWidth()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    return v0
.end method

.method public blacklist getRawInputHeight()I
    .registers 2

    .line 291
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputHeight:I

    return v0
.end method

.method public blacklist getRawInputWidth()I
    .registers 2

    .line 287
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputWidth:I

    return v0
.end method

.method public blacklist getReprocessFunctionType()I
    .registers 2

    .line 313
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mReprocessFunctionType:I

    return v0
.end method

.method public blacklist getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-object v0
.end method

.method public blacklist getSiqeType()B
    .registers 2

    .line 337
    iget-byte v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mSiqeType:B

    return v0
.end method

.method public blacklist getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object v0
.end method

.method public blacklist getTuningImage()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getYuvInputHeight()I
    .registers 2

    .line 283
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputHeight:I

    return v0
.end method

.method public blacklist getYuvInputWidth()I
    .registers 2

    .line 279
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputWidth:I

    return v0
.end method

.method public blacklist isFrontCamera()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    return v0
.end method

.method public blacklist isFrontMirror()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontMirror:Z

    return v0
.end method

.method public blacklist isImageFromPool()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsMainImageFromPool:Z

    return v0
.end method

.method public blacklist isKeepTuningImage()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mKeepTuningImage:Z

    return v0
.end method

.method public blacklist isRemosaic()I
    .registers 2

    .line 341
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsRemosaic:I

    return v0
.end method

.method public blacklist isRotateOrientationToZero()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRotateOrientationToZero:Z

    return v0
.end method

.method public blacklist isTuningImageFromPool()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsTuningImageFromPool:Z

    return v0
.end method

.method public blacklist setCropRegion([I)V
    .registers 2
    .param p1, "cropRegion"    # [I

    .line 295
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mCropRegion:[I

    .line 296
    return-void
.end method

.method public blacklist setDataStatusCallback(Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    .line 321
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    .line 322
    return-void
.end method

.method public blacklist setFrontMirror(Z)V
    .registers 2
    .param p1, "mirror"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontMirror:Z

    .line 254
    return-void
.end method

.method public blacklist setImageFromPool(Z)V
    .registers 2
    .param p1, "isPoolImage"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsMainImageFromPool:Z

    .line 230
    return-void
.end method

.method public blacklist setImageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 325
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageName:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public blacklist setJpegQuality(I)V
    .registers 4
    .param p1, "jpegQuality"    # I

    .line 245
    const/16 v0, 0x64

    const/4 v1, 0x1

    if-lt p1, v1, :cond_b

    if-le p1, v0, :cond_8

    goto :goto_b

    .line 248
    :cond_8
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    goto :goto_d

    .line 246
    :cond_b
    :goto_b
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    .line 250
    :goto_d
    return-void
.end method

.method public blacklist setKeepTuningImage(Z)V
    .registers 2
    .param p1, "keep"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mKeepTuningImage:Z

    .line 306
    return-void
.end method

.method public blacklist setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "image"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 169
    .local v0, "oldImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-object v0
.end method

.method public blacklist setMainImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 162
    .local p1, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 163
    .local v0, "oldImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 164
    return-object v0
.end method

.method public blacklist setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 395
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    .line 396
    return-void
.end method

.method public blacklist setRawInputSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 274
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputWidth:I

    .line 275
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputHeight:I

    .line 276
    return-void
.end method

.method public blacklist setReprocessFunctionType(I)V
    .registers 2
    .param p1, "function"    # I

    .line 309
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mReprocessFunctionType:I

    .line 310
    return-void
.end method

.method public blacklist setRotateOrientationToZero(Z)V
    .registers 2
    .param p1, "rotateToZeroOrientation"    # Z

    .line 265
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRotateOrientationToZero:Z

    .line 266
    return-void
.end method

.method public blacklist setSiqeType(B)V
    .registers 2
    .param p1, "type"    # B

    .line 333
    iput-byte p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mSiqeType:B

    .line 334
    return-void
.end method

.method public blacklist setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "image"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    .line 191
    .local v0, "oldImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v0
.end method

.method public blacklist setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 184
    .local p1, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    .line 185
    .local v0, "oldImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Image;>;"
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    .line 186
    return-object v0
.end method

.method public blacklist setTuningImageFromPool(Z)V
    .registers 2
    .param p1, "isPoolImage"    # Z

    .line 237
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsTuningImageFromPool:Z

    .line 238
    return-void
.end method

.method public blacklist setYuvInputSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 269
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputWidth:I

    .line 270
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputHeight:I

    .line 271
    return-void
.end method
