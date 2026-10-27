.class public Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.super Ljava/lang/Object;
.source "CameraExtensionJpegProcessor.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;,
        Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;
    }
.end annotation


# static fields
.field private static final blacklist JPEG_APP_SEGMENT_SIZE:I = 0x10000

.field private static final blacklist JPEG_QUEUE_SIZE:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "CameraExtensionJpeg"


# instance fields
.field private blacklist mCaptureFormat:I

.field private blacklist mFormat:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputSurface:Landroid/view/Surface;

.field private blacklist mOutputWriter:Landroid/media/ImageWriter;

.field private blacklist mPostviewFormat:I

.field private blacklist mPostviewOutputSurface:Landroid/view/Surface;

.field private blacklist mPostviewOutputWriter:Landroid/media/ImageWriter;

.field private blacklist mPostviewResolution:Landroid/hardware/camera2/extension/Size;

.field private blacklist mPostviewYuvReader:Landroid/media/ImageReader;

.field private final blacklist mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

.field private blacklist mResolution:Landroid/hardware/camera2/extension/Size;

.field private blacklist mYuvReader:Landroid/media/ImageReader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcompressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I
    .registers 19

    invoke-static/range {p0 .. p18}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/extension/ICaptureProcessorImpl;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    .line 58
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    .line 59
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    .line 60
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    .line 62
    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    .line 63
    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    .line 64
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    .line 65
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 66
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    .line 67
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 79
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CameraExtensionJpeg"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private static native blacklist compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I
.end method

.method private static blacklist getJpegParameters(Ljava/util/List;)Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;)",
            "Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;"
        }
    .end annotation

    .line 99
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor-IA;)V

    .line 100
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 103
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v2, v2, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 104
    const-string v3, "CameraExtensionJpeg"

    if-eqz v2, :cond_28

    .line 105
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iput v2, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    goto :goto_2d

    .line 107
    :cond_28
    const-string v2, "No jpeg quality set, using default: 100"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_2d
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v1, v1, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 112
    if-eqz v1, :cond_4c

    .line 114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    rsub-int v1, v1, 0x168

    div-int/lit8 v1, v1, 0x5a

    iput v1, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    goto :goto_51

    .line 116
    :cond_4c
    const-string v1, "No jpeg rotation set, using default: 0"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/CaptureBundle;

    .line 120
    iget-object v1, v1, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 121
    if-eqz v1, :cond_73

    .line 122
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 124
    :cond_73
    const-string v1, "Capture bundle without valid sensor timestamp!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_78
    goto :goto_55

    .line 129
    :cond_79
    return-object v0
.end method

.method private blacklist initializePipeline()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_77

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    if-nez v0, :cond_77

    .line 242
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_21

    .line 244
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    iget v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    goto :goto_69

    .line 247
    :cond_21
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v3, v3, Landroid/hardware/camera2/extension/Size;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-static {v0, v3, v4, v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 251
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    iget v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-static {v0, v2, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    .line 253
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-direct {v2, p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 255
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 257
    :goto_69
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    .line 258
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    .line 260
    :cond_77
    return-void
.end method

.method private blacklist initializePostviewPipeline()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    if-nez v0, :cond_6c

    .line 265
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1f

    .line 267
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    invoke-interface {v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onPostviewOutputSurface(Landroid/view/Surface;)V

    goto :goto_5e

    .line 270
    :cond_1f
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v3, v3, Landroid/hardware/camera2/extension/Size;->height:I

    mul-int/2addr v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-static {v0, v3, v4, v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    .line 273
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    iget v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-static {v0, v2, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    .line 275
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    invoke-direct {v2, p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 277
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onPostviewOutputSurface(Landroid/view/Surface;)V

    .line 279
    :goto_5e
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    .line 280
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    .line 282
    :cond_6c
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 3

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Binder IPC not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist close()V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 87
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 88
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 89
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 92
    :cond_11
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1c

    .line 93
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 94
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    .line 96
    :cond_1c
    return-void
.end method

.method public blacklist onImageFormatUpdate(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iput p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    .line 236
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    .line 237
    return-void
.end method

.method public blacklist onOutputSurface(Landroid/view/Surface;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object p2

    .line 212
    iget p2, p2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iput p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    .line 213
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    .line 214
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    .line 215
    return-void
.end method

.method public blacklist onPostviewOutputSurface(Landroid/view/Surface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    nop

    .line 219
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    .line 220
    iget v0, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iput v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    .line 221
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    .line 222
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePostviewPipeline()V

    .line 223
    return-void
.end method

.method public blacklist onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    .line 230
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    .line 231
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    .line 232
    return-void
.end method

.method public blacklist process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;",
            "Landroid/hardware/camera2/extension/IProcessResultImpl;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->getJpegParameters(Ljava/util/List;)Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    move-result-object v0

    .line 202
    :try_start_4
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    .line 207
    nop

    .line 208
    return-void

    .line 204
    :catch_10
    move-exception p1

    .line 205
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 206
    throw p1
.end method
