.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$PictureCallbackHandler;,
        Landroid/view/ViewDebug$StreamingPictureCallbackHandler;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$PropertyInfo;,
        Landroid/view/ViewDebug$ExportedProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;,
        Landroid/view/ViewDebug$HardwareCanvasProvider;,
        Landroid/view/ViewDebug$SoftwareCanvasProvider;,
        Landroid/view/ViewDebug$CanvasProvider;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$FieldPI;,
        Landroid/view/ViewDebug$MethodPI;
    }
.end annotation


# static fields
.field private static final greylist-max-o CAPTURE_TIMEOUT:I = 0x1770

.field public static final greylist-max-o DEBUG_DRAG:Z = false

.field public static final greylist-max-o DEBUG_POSITIONING:Z = false

.field private static final greylist-max-o REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final greylist-max-o REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final greylist-max-o REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field public static final blacklist REMOTE_COMMAND_DUMP_ENCODED:Ljava/lang/String; = "DUMP_ENCODED"

.field private static final greylist-max-o REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final greylist-max-o REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final blacklist REMOTE_COMMAND_INVOKE_METHOD:Ljava/lang/String; = "INVOKE_METHOD"

.field private static final greylist-max-o REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final greylist-max-o REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final greylist-max-o REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field private static final blacklist SIG_ARRAY:C = '['

.field private static final blacklist SIG_BOOLEAN:C = 'Z'

.field private static final blacklist SIG_BYTE:C = 'B'

.field private static final blacklist SIG_CHAR:C = 'C'

.field private static final blacklist SIG_DOUBLE:C = 'D'

.field private static final blacklist SIG_FLOAT:C = 'F'

.field private static final blacklist SIG_INT:C = 'I'

.field private static final blacklist SIG_LONG:C = 'J'

.field private static final blacklist SIG_SHORT:C = 'S'

.field private static final blacklist SIG_STRING:C = 'R'

.field private static final blacklist SIG_VOID:C = 'V'

.field private static final blacklist TAG:Ljava/lang/String; = "ViewDebug"

.field public static final whitelist TRACE_HIERARCHY:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRACE_RECYCLER:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sCapturedViewProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$CapturedViewProperty;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static blacklist sExportProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$ExportedProperty;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist cacheExportedProperties(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1385
    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1386
    return-void

    .line 1389
    :cond_d
    invoke-static {p0}, Landroid/view/ViewDebug;->getExportedProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 1390
    iget-object v4, v3, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v3, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1391
    iget-object v3, v3, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    invoke-static {v3}, Landroid/view/ViewDebug;->cacheExportedProperties(Ljava/lang/Class;)V

    .line 1389
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1394
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 1395
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_d

    .line 1396
    return-void
.end method

.method private static blacklist cacheExportedPropertiesForChildren(Landroid/view/ViewGroup;)V
    .registers 5

    .line 1374
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1375
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1e

    .line 1376
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1377
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewDebug;->cacheExportedProperties(Ljava/lang/Class;)V

    .line 1378
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    .line 1379
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/view/ViewDebug;->cacheExportedPropertiesForChildren(Landroid/view/ViewGroup;)V

    .line 1375
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1382
    :cond_1e
    return-void
.end method

.method public static greylist-max-o capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1109
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1111
    if-nez p2, :cond_1d

    .line 1112
    const-string p2, "View"

    const-string v0, "Failed to create capture bitmap!"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {p0, v0, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1119
    :cond_1d
    nop

    .line 1121
    const/4 p0, 0x0

    :try_start_1f
    new-instance v0, Ljava/io/BufferedOutputStream;

    const v1, 0x8000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_3c

    .line 1122
    :try_start_27
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p1, 0x64

    invoke-virtual {p2, p0, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1123
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    .line 1125
    nop

    .line 1126
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1128
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1129
    nop

    .line 1130
    return-void

    .line 1125
    :catchall_3a
    move-exception p0

    goto :goto_3f

    :catchall_3c
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_3f
    if-eqz v0, :cond_44

    .line 1126
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1128
    :cond_44
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1129
    throw p0
.end method

.method private static greylist-max-o capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1102
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 1103
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 1104
    return-void
.end method

.method public static greylist-max-o captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 770
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->getDisplayFrame(Landroid/graphics/Rect;)V

    .line 772
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 773
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 775
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 777
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_27

    .line 779
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 780
    nop

    .line 781
    return-void

    .line 779
    :catchall_27
    move-exception p0

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 780
    throw p0
.end method

.method private static greylist-max-o captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    if-eqz p2, :cond_c

    move p2, v2

    goto :goto_d

    :cond_c
    move p2, v1

    .line 788
    :goto_d
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_74

    .line 789
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 791
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2f

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 795
    :cond_2f
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 796
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 799
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 801
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 803
    aget v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 804
    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 805
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 807
    invoke-static {p0, v2}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 808
    if-eqz v2, :cond_71

    .line 809
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 810
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 811
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 812
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 813
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 815
    :cond_71
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 818
    :cond_74
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8c

    .line 819
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 820
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 822
    nop

    :goto_80
    if-ge v1, v2, :cond_8c

    .line 823
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 827
    :cond_8c
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_99

    .line 828
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    iget-object p0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 829
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 831
    :cond_99
    return-void
.end method

.method private static blacklist convertToPropertyInfos([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">([",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "TT;*>;"
        }
    .end annotation

    .line 1458
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/stream/Stream;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/view/ViewDebug$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1459
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Landroid/view/ViewDebug$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 1458
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1460
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;-><init>()V

    .line 1461
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Landroid/view/ViewDebug$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Landroid/view/ViewDebug$$ExternalSyntheticLambda7;-><init>()V

    .line 1462
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/ViewDebug$PropertyInfo;

    .line 1458
    return-object p0
.end method

.method public static blacklist deserializeMethodParameters([Ljava/lang/Object;[Ljava/lang/Class;Ljava/nio/ByteBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;
        }
    .end annotation

    .line 2028
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v3

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2030
    move v0, v3

    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_147

    .line 2031
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    .line 2032
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    .line 2033
    :goto_1b
    if-eqz v4, :cond_65

    .line 2034
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    .line 2035
    const/16 v5, 0x42

    if-ne v4, v5, :cond_42

    .line 2042
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 2043
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v1, v4, :cond_3c

    .line 2049
    new-array v1, v1, [B

    .line 2050
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2052
    const-class v4, [B

    aput-object v4, p1, v0

    .line 2053
    aput-object v1, p0, v0

    .line 2054
    goto/16 :goto_143

    .line 2046
    :cond_3c
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 2037
    :cond_42
    new-instance p0, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported array parameter type ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") to invoke view method @argument "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2055
    :cond_65
    sparse-switch v1, :sswitch_data_148

    .line 2097
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "arg "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", unrecognized type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewDebug"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance p0, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported parameter type ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") to invoke view method."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2057
    :sswitch_a9
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2058
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_b5

    move v1, v2

    goto :goto_b6

    :cond_b5
    move v1, v3

    :goto_b6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2059
    goto/16 :goto_143

    .line 2069
    :sswitch_be
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2070
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2071
    goto/16 :goto_143

    .line 2089
    :sswitch_ce
    const-class v1, Ljava/lang/String;

    aput-object v1, p1, v0

    .line 2090
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 2091
    new-array v1, v1, [B

    .line 2092
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2093
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v4, p0, v0

    .line 2094
    goto :goto_143

    .line 2077
    :sswitch_e9
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2078
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2079
    goto :goto_143

    .line 2073
    :sswitch_f8
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2074
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2075
    goto :goto_143

    .line 2081
    :sswitch_107
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2082
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2083
    goto :goto_143

    .line 2085
    :sswitch_116
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2086
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2087
    goto :goto_143

    .line 2065
    :sswitch_125
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2066
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2067
    goto :goto_143

    .line 2061
    :sswitch_134
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v1, p1, v0

    .line 2062
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p0, v0

    .line 2063
    nop

    .line 2030
    :goto_143
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 2105
    :cond_147
    return-void

    :sswitch_data_148
    .sparse-switch
        0x42 -> :sswitch_134
        0x43 -> :sswitch_125
        0x44 -> :sswitch_116
        0x46 -> :sswitch_107
        0x49 -> :sswitch_f8
        0x4a -> :sswitch_e9
        0x52 -> :sswitch_ce
        0x53 -> :sswitch_be
        0x5a -> :sswitch_a9
    .end sparse-switch
.end method

.method static greylist dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 548
    const-string v0, "DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 549
    const/4 p1, 0x1

    invoke-static {p0, v1, p1, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto/16 :goto_94

    .line 550
    :cond_13
    const-string v0, "DUMP_THEME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 551
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto/16 :goto_94

    .line 552
    :cond_20
    const-string v0, "DUMP_ENCODED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 553
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpEncoded(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_94

    .line 554
    :cond_2c
    const-string v0, "CAPTURE_LAYERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 555
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_94

    .line 557
    :cond_3d
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 558
    const-string v0, "CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 559
    aget-object p1, p2, v1

    invoke-static {p0, p3, p1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_94

    .line 560
    :cond_51
    const-string v0, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 561
    aget-object p1, p2, v1

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_94

    .line 562
    :cond_5f
    const-string v0, "INVALIDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 563
    aget-object p1, p2, v1

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_94

    .line 564
    :cond_6d
    const-string v0, "REQUEST_LAYOUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 565
    aget-object p1, p2, v1

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_94

    .line 566
    :cond_7b
    const-string v0, "PROFILE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 567
    aget-object p1, p2, v1

    invoke-static {p0, p3, p1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_94

    .line 568
    :cond_89
    const-string v0, "INVOKE_METHOD"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 569
    invoke-static {p0, p3, p2}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 572
    :cond_94
    :goto_94
    return-void
.end method

.method public static greylist-max-r dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1170
    nop

    .line 1172
    const/4 v1, 0x0

    :try_start_2
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v2, "utf-8"

    invoke-direct {v0, p3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const p3, 0x8000

    invoke-direct {v4, v0, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_3e
    .catchall {:try_start_2 .. :try_end_11} :catchall_3b

    .line 1173
    :try_start_11
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 1174
    instance-of p3, p0, Landroid/view/ViewGroup;

    if-eqz p3, :cond_26

    .line 1175
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    .line 1176
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1179
    :cond_26
    const-string p0, "DONE."

    invoke-virtual {v4, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_37
    .catchall {:try_start_11 .. :try_end_2e} :catchall_33

    .line 1184
    nop

    .line 1185
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_4c

    .line 1184
    :catchall_33
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_4d

    .line 1181
    :catch_37
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_40

    .line 1184
    :catchall_3b
    move-exception v0

    move-object p0, v0

    goto :goto_4d

    .line 1181
    :catch_3e
    move-exception v0

    move-object p0, v0

    .line 1182
    :goto_40
    :try_start_40
    const-string p1, "View"

    const-string p2, "Problem dumping the view:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3b

    .line 1184
    if-eqz v1, :cond_4c

    .line 1185
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1188
    :cond_4c
    :goto_4c
    return-void

    .line 1184
    :goto_4d
    if-eqz v1, :cond_52

    .line 1185
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1187
    :cond_52
    throw p0
.end method

.method public static whitelist dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 1834
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1835
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1836
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->exportCapturedViewProperties(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return-void
.end method

.method private static blacklist dumpEncoded(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1218
    new-instance v1, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v1, v0}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 1219
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewHierarchyEncoder;->setUserPropertiesEnabled(Z)V

    .line 1220
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    const-string v3, "window:left"

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1221
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    const-string v3, "window:top"

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1222
    invoke-virtual {p0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 1223
    invoke-virtual {v1}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 1224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 1225
    return-void
.end method

.method public static greylist-max-o dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1232
    const-string v0, "\n"

    .line 1234
    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "utf-8"

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const p1, 0x8000

    invoke-direct {v2, v3, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_76
    .catchall {:try_start_3 .. :try_end_12} :catchall_74

    .line 1235
    :try_start_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1236
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 1235
    invoke-static {p1, p0}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object p0

    .line 1237
    if-eqz p0, :cond_61

    .line 1238
    const/4 p1, 0x0

    :goto_29
    array-length v1, p0

    if-ge p1, v1, :cond_61

    .line 1239
    aget-object v1, p0, p1

    if-eqz v1, :cond_5e

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1238
    :cond_5e
    add-int/lit8 p1, p1, 0x2

    goto :goto_29

    .line 1245
    :cond_61
    const-string p0, "DONE."

    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_69} :catch_71
    .catchall {:try_start_12 .. :try_end_69} :catchall_6e

    .line 1250
    nop

    .line 1251
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_83

    .line 1250
    :catchall_6e
    move-exception p0

    move-object v1, v2

    goto :goto_84

    .line 1247
    :catch_71
    move-exception p0

    move-object v1, v2

    goto :goto_77

    .line 1250
    :catchall_74
    move-exception p0

    goto :goto_84

    .line 1247
    :catch_76
    move-exception p0

    .line 1248
    :goto_77
    :try_start_77
    const-string p1, "View"

    const-string v0, "Problem dumping View Theme:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_74

    .line 1250
    if-eqz v1, :cond_83

    .line 1251
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1254
    :cond_83
    :goto_83
    return-void

    .line 1250
    :goto_84
    if-eqz v1, :cond_89

    .line 1251
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1253
    :cond_89
    throw p0
.end method

.method private static greylist-max-o dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z
    .registers 8

    .line 1434
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, p3, :cond_c

    .line 1435
    :try_start_6
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1437
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 1438
    const-string v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1439
    const-string p3, "ViewOverlay"

    .line 1441
    :cond_1e
    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1442
    const/16 p3, 0x40

    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1443
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1445
    if-eqz p4, :cond_39

    .line 1446
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1448
    :cond_39
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3c} :catch_3f

    .line 1452
    nop

    .line 1453
    const/4 p0, 0x1

    return p0

    .line 1449
    :catch_3f
    move-exception p0

    .line 1450
    const-string p0, "View"

    const-string p1, "Error while dumping hierarchy tree"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return v0
.end method

.method private static greylist-max-o dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 16

    .line 1338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewDebug;->cacheExportedProperties(Ljava/lang/Class;)V

    .line 1339
    if-nez p4, :cond_c

    .line 1340
    invoke-static {p1}, Landroid/view/ViewDebug;->cacheExportedPropertiesForChildren(Landroid/view/ViewGroup;)V

    .line 1343
    :cond_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1345
    if-nez v0, :cond_1b

    .line 1346
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1349
    :cond_1b
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_29

    .line 1350
    invoke-static/range {p0 .. p5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1371
    return-void

    .line 1353
    :cond_29
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    const/4 p0, 0x0

    invoke-direct {v1, v3, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1356
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    .line 1357
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1358
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1361
    :goto_45
    :try_start_45
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x1770

    invoke-virtual {v1, p1, p2, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4c} :catch_55
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 1362
    return-void

    .line 1365
    :catch_4d
    move-exception v0

    move-object p0, v0

    .line 1367
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1363
    :catch_55
    move-exception v0

    .line 1368
    goto :goto_45
.end method

.method private static blacklist dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 15

    .line 1401
    move v5, p5

    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1402
    return-void

    .line 1405
    :cond_8
    if-eqz p4, :cond_b

    .line 1406
    return-void

    .line 1409
    :cond_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1410
    const/4 v1, 0x0

    move v7, v1

    :goto_11
    if-ge v7, v6, :cond_42

    .line 1411
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1412
    instance-of v1, v8, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 1413
    move-object v1, v8

    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    goto :goto_2c

    .line 1416
    :cond_27
    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v8, p2, v1, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    .line 1418
    :goto_2c
    iget-object v1, v8, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_3e

    .line 1419
    invoke-virtual {v8}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    .line 1420
    iget-object v1, v1, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 1421
    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1410
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    move v5, p5

    goto :goto_11

    .line 1425
    :cond_42
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_4e

    .line 1426
    move-object v0, p1

    check-cast v0, Landroid/view/ViewDebug$HierarchyHandler;

    add-int/lit8 v1, p3, 0x1

    invoke-interface {v0, p2, v1}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 1428
    :cond_4e
    return-void
.end method

.method private static greylist-max-o dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method private static greylist-max-o dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1489
    if-nez p1, :cond_19

    .line 1490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "=4,null "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1491
    return-void

    .line 1494
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1496
    :cond_1d
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->writeExportedProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1498
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    .line 1499
    return-void
.end method

.method public static greylist-max-o dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1197
    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 1198
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1200
    new-instance v1, Landroid/view/ViewDebug$3;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/ViewHierarchyEncoder;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1210
    const-wide/16 v1, 0x2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1211
    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 1212
    return-void
.end method

.method private static blacklist exportCapturedViewProperties(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1794
    const-string v0, "null"

    if-nez p0, :cond_5

    .line 1795
    return-object v0

    .line 1798
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1800
    invoke-static {p1}, Landroid/view/ViewDebug;->getCapturedViewProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_7b

    aget-object v4, p1, v3

    .line 1802
    :try_start_14
    invoke-virtual {v4, p0}, Landroid/view/ViewDebug$PropertyInfo;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1804
    iget-object v6, v4, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-interface {v6}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1806
    iget-object v6, v4, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Landroid/view/ViewDebug;->exportCapturedViewProperties(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 1809
    :cond_41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    if-eqz v5, :cond_68

    .line 1812
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "\\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1813
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    goto :goto_6b

    .line 1815
    :cond_68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    :goto_6b
    iget-object v4, v4, Landroid/view/ViewDebug$PropertyInfo;->valueSuffix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_76} :catch_77

    .line 1821
    :goto_76
    goto :goto_78

    .line 1819
    :catch_77
    move-exception v4

    .line 1800
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1823
    :cond_7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1697
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v2

    .line 1698
    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_f

    move v3, v4

    goto :goto_10

    :cond_f
    move v3, v5

    .line 1700
    :goto_10
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v6

    .line 1701
    array-length v7, v6

    if-lez v7, :cond_19

    move v7, v4

    goto :goto_1a

    :cond_19
    move v7, v5

    .line 1703
    :goto_1a
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v8

    if-eqz v8, :cond_23

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move v4, v5

    .line 1704
    :goto_24
    array-length v8, v1

    .line 1706
    move v9, v5

    :goto_26
    if-ge v9, v8, :cond_78

    .line 1708
    nop

    .line 1710
    aget v10, v1, v9

    .line 1712
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 1713
    if-eqz v3, :cond_45

    .line 1714
    array-length v12, v2

    .line 1715
    move v13, v5

    :goto_33
    if-ge v13, v12, :cond_45

    .line 1716
    aget-object v14, v2, v13

    .line 1717
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    if-ne v15, v9, :cond_42

    .line 1718
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1719
    goto :goto_45

    .line 1715
    :cond_42
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    .line 1724
    :cond_45
    :goto_45
    if-eqz v7, :cond_5b

    .line 1725
    array-length v12, v6

    .line 1726
    move v13, v5

    :goto_49
    if-ge v13, v12, :cond_5b

    .line 1727
    aget-object v14, v6, v13

    .line 1728
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    if-ne v15, v10, :cond_58

    .line 1729
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1730
    goto :goto_5c

    .line 1726
    :cond_58
    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    .line 1735
    :cond_5b
    const/4 v12, 0x0

    :goto_5c
    if-eqz v4, :cond_68

    .line 1736
    if-nez v12, :cond_6c

    invoke-static {v0, v10}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    goto :goto_6c

    .line 1738
    :cond_68
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1741
    :cond_6c
    :goto_6c
    move-object/from16 v10, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v10, v13, v11, v14, v12}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1706
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 1743
    :cond_78
    return-void
.end method

.method private static greylist-max-o exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1604
    array-length v0, p1

    .line 1605
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_31

    .line 1606
    aget-object v3, p1, v2

    .line 1607
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v4

    .line 1608
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v5

    and-int/2addr v5, p2

    .line 1609
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v6

    if-ne v5, v6, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    move v6, v1

    .line 1610
    :goto_19
    if-eqz v6, :cond_1d

    if-nez v4, :cond_21

    :cond_1d
    if-nez v6, :cond_2e

    if-nez v4, :cond_2e

    .line 1611
    :cond_21
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v3

    .line 1612
    invoke-static {v5}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1613
    const-string v5, ""

    invoke-static {p0, p3, v3, v5, v4}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1605
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1616
    :cond_31
    return-void
.end method

.method public static greylist-max-o findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 7

    .line 577
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2e

    .line 578
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 579
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 580
    const/4 v1, 0x1

    aget-object p1, p1, v1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int p1, v3

    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 583
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2c

    .line 584
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, v0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 586
    :cond_2c
    nop

    .line 592
    return-object v2

    .line 588
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .registers 7

    .line 1291
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1292
    return-object p0

    .line 1295
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1296
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_47

    .line 1297
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1298
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_20

    .line 1299
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 1300
    if-eqz v3, :cond_27

    .line 1301
    return-object v3

    .line 1303
    :cond_20
    invoke-static {v2, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1304
    return-object v2

    .line 1303
    :cond_27
    nop

    .line 1306
    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_37

    .line 1307
    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v3, v3, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 1309
    if-eqz v3, :cond_37

    .line 1310
    return-object v3

    .line 1313
    :cond_37
    instance-of v3, v2, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v3, :cond_44

    .line 1314
    check-cast v2, Landroid/view/ViewDebug$HierarchyHandler;

    .line 1315
    invoke-interface {v2, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 1316
    if-eqz v2, :cond_44

    .line 1317
    return-object v2

    .line 1296
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1321
    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist-max-o flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1654
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;

    move-result-object p0

    .line 1655
    if-nez p0, :cond_b

    .line 1656
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1658
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1659
    array-length v0, p0

    .line 1660
    const/4 v1, 0x0

    move v2, v1

    :goto_13
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3d

    .line 1661
    aget-object v4, p0, v2

    .line 1662
    invoke-interface {v4}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v5

    .line 1663
    invoke-interface {v4}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v6

    and-int/2addr v6, p2

    .line 1664
    invoke-interface {v4}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v7

    if-ne v6, v7, :cond_28

    goto :goto_29

    :cond_28
    move v3, v1

    .line 1665
    :goto_29
    if-eqz v3, :cond_3a

    if-eqz v5, :cond_3a

    .line 1666
    invoke-interface {v4}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v3

    .line 1667
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1660
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1670
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4b

    .line 1671
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1673
    :cond_4b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o formatIntToHexString(I)Ljava/lang/String;
    .registers 3

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getCapturedViewProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$CapturedViewProperty;",
            "*>;"
        }
    .end annotation

    .line 1778
    sget-object v0, Landroid/view/ViewDebug;->sCapturedViewProperties:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->sCapturedViewProperties:Ljava/util/HashMap;

    .line 1781
    :cond_b
    sget-object v0, Landroid/view/ViewDebug;->sCapturedViewProperties:Ljava/util/HashMap;

    .line 1784
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/ViewDebug$PropertyInfo;

    .line 1785
    if-nez v1, :cond_26

    .line 1786
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->convertToPropertyInfos([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v1

    .line 1788
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_26
    return-object v1
.end method

.method private static blacklist getExportedProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$ExportedProperty;",
            "*>;"
        }
    .end annotation

    .line 1466
    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    .line 1469
    :cond_b
    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    .line 1470
    sget-object v1, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/ViewDebug$PropertyInfo;

    .line 1472
    if-nez v1, :cond_28

    .line 1473
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1474
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Landroid/view/ViewDebug$ExportedProperty;

    .line 1473
    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->convertToPropertyInfos([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v1

    .line 1475
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_28
    return-object v1
.end method

.method private static greylist-max-o getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$FlagToString;"
        }
    .end annotation

    .line 1678
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const-class p1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Landroid/view/ViewDebug$ExportedProperty;

    .line 1679
    invoke-interface {p0}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1678
    return-object p0

    .line 1680
    :catch_11
    move-exception p0

    .line 1681
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$IntToString;"
        }
    .end annotation

    .line 1687
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const-class p1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {p0}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    .line 1688
    :catch_11
    move-exception p0

    .line 1689
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .registers 11

    .line 1267
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1268
    nop

    .line 1269
    nop

    .line 1270
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v1

    .line 1271
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1272
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v4, v3, :cond_48

    aget v6, v1, v4

    .line 1274
    :try_start_17
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 1275
    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v0, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1276
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_2e} :catch_44

    goto :goto_31

    :cond_2f
    const-string v6, "null"

    :goto_31
    :try_start_31
    aput-object v6, v2, v7

    .line 1277
    add-int/lit8 v5, v5, 0x2

    .line 1280
    iget v6, v0, Landroid/util/TypedValue;->type:I

    if-ne v6, v8, :cond_43

    .line 1281
    add-int/lit8 v6, v5, -0x1

    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_43} :catch_44

    .line 1285
    :cond_43
    goto :goto_45

    .line 1283
    :catch_44
    move-exception v6

    .line 1272
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1287
    :cond_48
    return-object v2
.end method

.method public static greylist getViewInstanceCount()J
    .registers 2

    .line 480
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->getInstanceCount(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-r getViewRootImplCount()J
    .registers 2

    .line 492
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->getInstanceCount(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1629
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;

    move-result-object p0

    .line 1630
    if-nez p0, :cond_b

    .line 1631
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1633
    :cond_b
    array-length p1, p0

    .line 1634
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_1f

    .line 1635
    aget-object v1, p0, v0

    .line 1636
    invoke-interface {v1}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    if-ne v2, p2, :cond_1c

    .line 1637
    invoke-interface {v1}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1634
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1640
    :cond_1f
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o invalidate(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    .line 596
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 597
    if-eqz p0, :cond_9

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 600
    :cond_9
    return-void
.end method

.method private static blacklist invokeViewMethod(Landroid/view/View;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1842
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const p1, 0x8000

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1844
    :try_start_d
    array-length p1, p2

    const/4 v1, 0x2

    if-lt p1, v1, :cond_5f

    .line 1847
    const/4 p1, 0x0

    aget-object v2, p2, p1

    invoke-static {p0, v2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 1848
    if-eqz p0, :cond_44

    .line 1851
    const/4 v2, 0x1

    aget-object v2, p2, v2

    .line 1852
    array-length v3, p2

    if-ge v3, v1, :cond_23

    .line 1853
    new-array p1, p1, [B

    goto :goto_29

    .line 1854
    :cond_23
    aget-object p1, p2, v1

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1852
    :goto_29
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1855
    invoke-static {p0, v2, p1}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/String;Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 1856
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1858
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_7c

    .line 1849
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object p1, p2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1845
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_67} :catch_69
    .catchall {:try_start_d .. :try_end_67} :catchall_67

    .line 1866
    :catchall_67
    move-exception p0

    goto :goto_81

    .line 1860
    :catch_69
    move-exception p0

    .line 1861
    :try_start_6a
    const-string p1, "-1"

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1863
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_7c
    .catchall {:try_start_6a .. :try_end_7c} :catchall_67

    .line 1866
    :goto_7c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1867
    nop

    .line 1868
    return-void

    .line 1866
    :goto_81
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1867
    throw p0
.end method

.method public static blacklist invokeViewMethod(Landroid/view/View;Ljava/lang/String;Ljava/nio/ByteBuffer;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;
        }
    .end annotation

    .line 1883
    const-string v0, "ViewDebug"

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1884
    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Class;

    .line 1885
    new-array p2, p2, [Ljava/lang/Object;

    goto :goto_1b

    .line 1887
    :cond_e
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1888
    new-array v2, v1, [Ljava/lang/Class;

    .line 1889
    new-array v1, v1, [Ljava/lang/Object;

    .line 1891
    invoke-static {v1, v2, p2}, Landroid/view/ViewDebug;->deserializeMethodParameters([Ljava/lang/Object;[Ljava/lang/Class;Ljava/nio/ByteBuffer;)V

    move-object p2, v1

    move-object v1, v2

    .line 1896
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_23} :catch_79

    .line 1901
    nop

    .line 1905
    :try_start_24
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p0, p2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1906
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1907
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    .line 1908
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 1909
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/view/ViewDebug;->serializeReturnValue(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_42

    return-object p0

    .line 1910
    :catch_42
    move-exception p0

    .line 1911
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception while invoking method: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1913
    if-nez p1, :cond_73

    .line 1914
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1916
    :cond_73
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1897
    :catch_79
    move-exception p0

    .line 1898
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No such method: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    new-instance p1, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1900
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .registers 4

    .line 1325
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_22

    .line 1326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1327
    const-string p2, "ViewOverlay"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1328
    const-string p1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1330
    :cond_1d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1333
    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$6(Ljava/lang/Class;Ljava/lang/reflect/Method;)Landroid/view/ViewDebug$PropertyInfo;
    .registers 2

    .line 1458
    invoke-static {p1, p0}, Landroid/view/ViewDebug$PropertyInfo;->forMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$7(Ljava/lang/Class;Ljava/lang/reflect/Field;)Landroid/view/ViewDebug$PropertyInfo;
    .registers 2

    .line 1459
    invoke-static {p1, p0}, Landroid/view/ViewDebug$PropertyInfo;->forField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$8(Ljava/lang/Object;)Z
    .registers 1

    .line 1461
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$9(I)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 1

    .line 1462
    new-array p0, p0, [Landroid/view/ViewDebug$PropertyInfo;

    return-object p0
.end method

.method static synthetic blacklist lambda$dumpViewHierarchy$5(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 6

    .line 1354
    invoke-static/range {p0 .. p5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    return-void
.end method

.method static synthetic blacklist lambda$invokeViewMethod$10(Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$performViewCapture$4(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 1139
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1140
    new-instance v0, Landroid/view/ViewDebug$HardwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$HardwareCanvasProvider;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/view/ViewDebug$SoftwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$SoftwareCanvasProvider;-><init>()V

    .line 1141
    :goto_11
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, p1, p2
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_1b
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    goto :goto_23

    .line 1145
    :catchall_19
    move-exception p0

    goto :goto_28

    .line 1142
    :catch_1b
    move-exception p0

    .line 1143
    :try_start_1c
    const-string p0, "View"

    const-string p1, "Out of memory for bitmap"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 1145
    :goto_23
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1146
    nop

    .line 1147
    return-void

    .line 1145
    :goto_28
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1146
    throw p0
.end method

.method static synthetic blacklist lambda$profileViewDraw$1(Landroid/view/View;Landroid/graphics/RecordingCanvas;)V
    .registers 2

    .line 711
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic blacklist lambda$profileViewDraw$2(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 2

    .line 720
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic blacklist lambda$profileViewLayout$0(Landroid/view/View;)V
    .registers 5

    .line 699
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method static synthetic blacklist lambda$profileViewOperation$3(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 7

    .line 740
    :try_start_0
    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->pre()V

    .line 741
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    .line 743
    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->run()V

    .line 744
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/4 p0, 0x0

    aput-wide v2, p1, p0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_17

    .line 746
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 747
    nop

    .line 748
    return-void

    .line 746
    :catchall_17
    move-exception p0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 747
    throw p0
.end method

.method public static greylist-max-o outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    .line 840
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 841
    return-void
.end method

.method private static greylist-max-o outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 835
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 836
    return-void
.end method

.method private static greylist-max-o performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 6

    .line 1133
    if-eqz p0, :cond_3d

    .line 1134
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1135
    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 1137
    new-instance v2, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v1, p1, v0}, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;-><init>(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1150
    :try_start_12
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1151
    const/4 p1, 0x0

    aget-object p0, v1, p1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1c} :catch_1d

    return-object p0

    .line 1152
    :catch_1d
    move-exception p1

    .line 1153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not complete the capture of the view "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1158
    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 617
    nop

    .line 619
    const/4 p2, 0x0

    :try_start_6
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const p1, 0x8000

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_36
    .catchall {:try_start_6 .. :try_end_13} :catchall_34

    .line 621
    if-eqz p0, :cond_19

    .line 622
    :try_start_15
    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    goto :goto_21

    .line 624
    :cond_19
    const-string p0, "-1 -1 -1"

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 627
    :goto_21
    const-string p0, "DONE."

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_31
    .catchall {:try_start_15 .. :try_end_29} :catchall_2e

    .line 632
    nop

    .line 633
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_43

    .line 632
    :catchall_2e
    move-exception p0

    move-object p2, v0

    goto :goto_44

    .line 629
    :catch_31
    move-exception p0

    move-object p2, v0

    goto :goto_37

    .line 632
    :catchall_34
    move-exception p0

    goto :goto_44

    .line 629
    :catch_36
    move-exception p0

    .line 630
    :goto_37
    :try_start_37
    const-string p1, "View"

    const-string v0, "Problem profiling the view:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    .line 632
    if-eqz p2, :cond_43

    .line 633
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    .line 636
    :cond_43
    :goto_43
    return-void

    .line 632
    :goto_44
    if-eqz p2, :cond_49

    .line 633
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    .line 635
    :cond_49
    throw p0
.end method

.method private static blacklist profileViewAndChildren(Landroid/view/View;Landroid/graphics/RenderNode;Ljava/io/BufferedWriter;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    const-wide/16 v0, 0x0

    if-nez p3, :cond_d

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b

    goto :goto_d

    .line 649
    :cond_b
    move-wide v2, v0

    goto :goto_11

    :cond_d
    :goto_d
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewMeasure(Landroid/view/View;)J

    move-result-wide v2

    .line 651
    :goto_11
    if-nez p3, :cond_1c

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_1a

    goto :goto_1c

    .line 652
    :cond_1a
    move-wide v4, v0

    goto :goto_20

    :cond_1c
    :goto_1c
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewLayout(Landroid/view/View;)J

    move-result-wide v4

    .line 654
    :goto_20
    const/16 v6, 0x20

    if-nez p3, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result p3

    if-eqz p3, :cond_31

    iget p3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr p3, v6

    if-eqz p3, :cond_30

    goto :goto_31

    .line 655
    :cond_30
    goto :goto_35

    :cond_31
    :goto_31
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->profileViewDraw(Landroid/view/View;Landroid/graphics/RenderNode;)J

    move-result-wide v0

    .line 657
    :goto_35
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 659
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 661
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 663
    instance-of p3, p0, Landroid/view/ViewGroup;

    if-eqz p3, :cond_6b

    .line 664
    check-cast p0, Landroid/view/ViewGroup;

    .line 665
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    .line 666
    const/4 v0, 0x0

    move v1, v0

    :goto_5f
    if-ge v1, p3, :cond_6b

    .line 667
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/graphics/RenderNode;Ljava/io/BufferedWriter;Z)V

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 670
    :cond_6b
    return-void
.end method

.method public static greylist-max-o profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    const-string v0, "ViewDebug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 642
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/graphics/RenderNode;Ljava/io/BufferedWriter;Z)V

    .line 643
    return-void
.end method

.method private static blacklist profileViewDraw(Landroid/view/View;Landroid/graphics/RenderNode;)J
    .registers 6

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 704
    if-nez v0, :cond_d

    .line 705
    const-wide/16 p0, 0x0

    return-wide p0

    .line 708
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 709
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 711
    :try_start_1b
    new-instance v1, Landroid/view/ViewDebug$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewDebug$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroid/graphics/RecordingCanvas;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 713
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 711
    return-wide v0

    .line 713
    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 714
    throw p0

    .line 716
    :cond_2d
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 718
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 720
    const/4 v1, 0x0

    :try_start_3d
    new-instance v2, Landroid/view/ViewDebug$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewDebug$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-static {p0, v2}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_4d

    .line 722
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 720
    return-wide v2

    .line 722
    :catchall_4d
    move-exception p0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 724
    throw p0
.end method

.method private static greylist-max-o profileViewLayout(Landroid/view/View;)J
    .registers 3

    .line 698
    new-instance v0, Landroid/view/ViewDebug$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/ViewDebug$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o profileViewMeasure(Landroid/view/View;)J
    .registers 3

    .line 673
    new-instance v0, Landroid/view/ViewDebug$2;

    invoke-direct {v0, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .registers 10

    .line 735
    const-string v0, "Could not complete the profiling of the view "

    const-string v1, "View"

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 736
    new-array v3, v3, [J

    .line 738
    new-instance v4, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;

    invoke-direct {v4, p1, v3, v2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 751
    const-wide/16 v4, -0x1

    :try_start_16
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1770

    invoke-virtual {v2, v6, v7, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_35

    .line 752
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_34} :catch_3a

    .line 753
    return-wide v4

    .line 759
    :cond_35
    nop

    .line 761
    const/4 p0, 0x0

    aget-wide p0, v3, p0

    return-wide p0

    .line 755
    :catch_3a
    move-exception p1

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 758
    return-wide v4
.end method

.method private static greylist-max-o requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 603
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 604
    if-eqz p1, :cond_e

    .line 605
    new-instance v0, Landroid/view/ViewDebug$1;

    invoke-direct {v0, p1}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 611
    :cond_e
    return-void
.end method

.method static greylist-max-o resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 4

    .line 1747
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1748
    if-ltz p1, :cond_3f

    .line 1750
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1751
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_25} :catch_26

    goto :goto_3e

    .line 1752
    :catch_26
    move-exception p0

    .line 1753
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1754
    :goto_3e
    goto :goto_41

    .line 1756
    :cond_3f
    const-string p0, "NO_ID"

    .line 1758
    :goto_41
    return-object p0
.end method

.method public static blacklist serializeReturnValue(Ljava/lang/Class;Ljava/lang/Object;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2114
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2115
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2117
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const/16 v3, 0x42

    if-eqz v2, :cond_4e

    .line 2118
    const-class v2, [B

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2123
    check-cast p1, [B

    .line 2124
    const/16 p0, 0x5b

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2125
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2126
    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2127
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 2128
    goto/16 :goto_125

    .line 2120
    :cond_2f
    new-instance p1, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported array return type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2128
    :cond_4e
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 2129
    const/16 p0, 0x5a

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2130
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write(I)V

    goto/16 :goto_125

    .line 2131
    :cond_66
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 2132
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2133
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_125

    .line 2134
    :cond_7c
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2135
    const/16 p0, 0x43

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2136
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto/16 :goto_125

    .line 2137
    :cond_94
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 2138
    const/16 p0, 0x53

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2139
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto/16 :goto_125

    .line 2140
    :cond_ac
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 2141
    const/16 p0, 0x49

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2142
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_125

    .line 2143
    :cond_c3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 2144
    const/16 p0, 0x4a

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2145
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_125

    .line 2146
    :cond_da
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 2147
    const/16 p0, 0x44

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2148
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_125

    .line 2149
    :cond_f1
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 2150
    const/16 p0, 0x46

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2151
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_125

    .line 2152
    :cond_108
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_120

    .line 2153
    const/16 p0, 0x52

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2154
    if-eqz p1, :cond_11a

    check-cast p1, Ljava/lang/String;

    goto :goto_11c

    :cond_11a
    const-string p1, ""

    :goto_11c
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_125

    .line 2156
    :cond_120
    const/16 p0, 0x56

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2159
    :goto_125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1925
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1926
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1927
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_24

    .line 1932
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1934
    new-instance p1, Landroid/view/ViewDebug$4;

    invoke-direct {p1, p0, v0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1940
    return-void

    .line 1928
    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only integer layout parameters can be set. Field "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is of type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1929
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    return-void
.end method

.method public static whitelist startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    return-void
.end method

.method public static greylist startRenderingCommandsCapture(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Ljava/lang/AutoCloseable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    .line 1084
    iget-object p0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1085
    if-eqz p0, :cond_24

    .line 1088
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 1092
    iget-object p0, p0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1093
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    .line 1094
    new-instance v1, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;

    invoke-direct {v1, p0, p2, p1, v0}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug-IA;)V

    return-object v1

    .line 1096
    :cond_1b
    return-object v0

    .line 1089
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called on the wrong thread. Must be called on the thread that owns the given View"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1086
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given view isn\'t attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist startRenderingCommandsCapture(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/lang/AutoCloseable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Picture;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 947
    iget-object p0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 948
    if-eqz p0, :cond_24

    .line 951
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 955
    iget-object p0, p0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 956
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    .line 957
    new-instance v1, Landroid/view/ViewDebug$PictureCallbackHandler;

    invoke-direct {v1, p0, p2, p1, v0}, Landroid/view/ViewDebug$PictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug-IA;)V

    return-object v1

    .line 959
    :cond_1b
    return-object v0

    .line 952
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called on the wrong thread. Must be called on the thread that owns the given View"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 949
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given view isn\'t attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist stopHierarchyTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    return-void
.end method

.method public static whitelist stopRecyclerTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    return-void
.end method

.method public static whitelist trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    return-void
.end method

.method public static varargs whitelist trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    return-void
.end method

.method private static greylist-max-o writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1593
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1596
    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1597
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1598
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 1599
    return-void
.end method

.method private static blacklist writeExportedProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1507
    move-object/from16 v7, p4

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v8

    array-length v9, v8

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v9, :cond_1e1

    aget-object v0, v8, v11

    .line 1511
    move-object/from16 v12, p1

    :try_start_e
    invoke-virtual {v0, v12}, Landroid/view/ViewDebug$PropertyInfo;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_1d7

    .line 1515
    nop

    .line 1518
    iget-object v2, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v2, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v3, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_3d
    const-string v2, ""

    .line 1520
    :goto_3f
    iget-object v3, v0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x5f

    if-eq v3, v4, :cond_ff

    iget-object v3, v0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_53

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    goto/16 :goto_103

    .line 1560
    :cond_53
    iget-object v3, v0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    const-class v4, [I

    if-ne v3, v4, :cond_89

    .line 1561
    move-object v4, v1

    check-cast v4, [I

    .line 1562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1563
    iget-object v1, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    move-object v3, v1

    check-cast v3, Landroid/view/ViewDebug$ExportedProperty;

    iget-object v6, v0, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1566
    move-object v3, v1

    move-object v4, v2

    goto/16 :goto_1dd

    .line 1567
    :cond_89
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    if-ne v5, v6, :cond_cf

    .line 1568
    check-cast v1, [Ljava/lang/String;

    .line 1569
    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v5

    if-eqz v5, :cond_1dd

    if-eqz v1, :cond_1dd

    .line 1570
    const/4 v5, 0x0

    :goto_a2
    array-length v6, v1

    if-ge v5, v6, :cond_1dd

    .line 1571
    aget-object v6, v1, v5

    if-eqz v6, :cond_cc

    .line 1572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v13, v1, v5

    iget-object v14, v0, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    .line 1573
    add-int/lit8 v15, v5, 0x1

    aget-object v16, v1, v15

    if-nez v16, :cond_c7

    const-string v15, "null"

    goto :goto_c9

    :cond_c7
    aget-object v15, v1, v15

    .line 1572
    :goto_c9
    invoke-static {v4, v6, v13, v14, v15}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1570
    :cond_cc
    add-int/lit8 v5, v5, 0x2

    goto :goto_a2

    .line 1579
    :cond_cf
    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1be

    .line 1580
    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v5

    if-eqz v5, :cond_1be

    .line 1581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v0}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v4, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1582
    goto/16 :goto_1dd

    .line 1520
    :cond_ff
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 1521
    :goto_103
    iget-object v6, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v6, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v6}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v6

    if-eqz v6, :cond_11b

    if-eqz v3, :cond_11b

    .line 1522
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1523
    invoke-static {v3, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v1

    .line 1525
    goto/16 :goto_1be

    :cond_11b
    iget-object v6, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v6, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v6}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v6

    const/4 v13, 0x1

    if-eqz v6, :cond_15c

    .line 1526
    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_138

    .line 1527
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1be

    .line 1528
    :cond_138
    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1be

    .line 1529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v1, Ljava/lang/Byte;

    .line 1530
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1, v13}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1be

    .line 1533
    :cond_15c
    iget-object v6, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v6, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v6}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v6

    .line 1534
    array-length v14, v6

    if-lez v14, :cond_18c

    .line 1535
    move-object v14, v1

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1536
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v10, v0, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1538
    invoke-static {v4, v6, v14, v5}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1541
    :cond_18c
    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1542
    array-length v6, v5

    if-lez v6, :cond_1bd

    .line 1543
    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1544
    nop

    .line 1545
    array-length v10, v5

    .line 1546
    const/4 v14, 0x0

    :goto_1a1
    if-ge v14, v10, :cond_1b6

    .line 1547
    aget-object v15, v5, v14

    .line 1548
    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v13

    if-ne v13, v6, :cond_1b2

    .line 1549
    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v1

    .line 1550
    nop

    .line 1551
    const/4 v13, 0x1

    goto :goto_1b7

    .line 1546
    :cond_1b2
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x1

    goto :goto_1a1

    :cond_1b6
    const/4 v13, 0x0

    .line 1555
    :goto_1b7
    if-nez v13, :cond_1bd

    .line 1556
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1559
    :cond_1bd
    nop

    .line 1586
    :cond_1be
    :goto_1be
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    invoke-static {v4, v2, v5, v0, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1dd

    .line 1512
    :catch_1d7
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 1514
    nop

    .line 1507
    :cond_1dd
    :goto_1dd
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 1588
    :cond_1e1
    return-void
.end method

.method private static greylist-max-o writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1762
    const-string v0, ","

    if-eqz p1, :cond_39

    .line 1763
    nop

    .line 1765
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_24

    .line 1767
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1770
    nop

    .line 1771
    goto :goto_3e

    .line 1767
    :catchall_24
    move-exception p1

    const-string v1, "[EXCEPTION]"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1770
    throw p1

    .line 1772
    :cond_39
    const-string p1, "4,null"

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1774
    :goto_3e
    return-void
.end method
