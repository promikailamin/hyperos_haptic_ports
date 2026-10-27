.class public Lcom/miui/autoui/utils/NativeImageProcess;
.super Ljava/lang/Object;
.source "NativeImageProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;
    }
.end annotation


# static fields
.field static final blacklist EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final blacklist EXECUTOR_THREADS:I

.field private static final blacklist TAG:Ljava/lang/String; = "NativeImageProcess"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfunctionToBlur(Landroid/graphics/Bitmap;IIII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/autoui/utils/NativeImageProcess;->functionToBlur(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miui/autoui/utils/NativeImageProcess;->EXECUTOR_THREADS:I

    .line 17
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/autoui/utils/NativeImageProcess;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 45
    :try_start_10
    const-string v0, "autoui_image"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 48
    goto :goto_1e

    .line 46
    :catch_16
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NativeImageProcess"

    const-string v2, "library autoui_image not found!"

    invoke-static {v1, v2}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static blacklist blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F

    .line 77
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmapOut":Landroid/graphics/Bitmap;
    sget v1, Lcom/miui/autoui/utils/NativeImageProcess;->EXECUTOR_THREADS:I

    .line 81
    .local v1, "cores":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 82
    .local v8, "horizontal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v2

    .line 83
    .local v9, "vertical":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;>;"
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_17
    if-ge v10, v1, :cond_35

    .line 84
    new-instance v11, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;

    float-to-int v4, p1

    const/4 v7, 0x1

    move-object v2, v11

    move-object v3, v0

    move v5, v1

    move v6, v10

    invoke-direct/range {v2 .. v7}, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v11, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;

    float-to-int v4, p1

    const/4 v7, 0x2

    move-object v2, v11

    invoke-direct/range {v2 .. v7}, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 89
    .end local v10    # "i":I
    :cond_35
    :try_start_35
    sget-object v2, Lcom/miui/autoui/utils/NativeImageProcess;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3a} :catch_42

    .line 92
    nop

    .line 95
    :try_start_3b
    invoke-interface {v2, v9}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_40

    .line 98
    nop

    .line 99
    return-object v0

    .line 96
    :catch_40
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/InterruptedException;
    return-object v0

    .line 90
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_42
    move-exception v2

    .line 91
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    return-object v0
.end method

.method public static blacklist filletCutting(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 64
    mul-int v0, p1, p2

    new-array v0, v0, [I

    .line 65
    .local v0, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 66
    invoke-static {v0, p1, p2}, Lcom/miui/autoui/utils/NativeImageProcess;->filletCutting([III)V

    .line 68
    array-length v1, v0

    mul-int v2, p1, p2

    if-eq v1, v2, :cond_31

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap length changed, pixels.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeImageProcess"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object p0

    .line 72
    :cond_31
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 73
    .local v1, "filletBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static native blacklist filletCutting([III)V
.end method

.method private static native blacklist functionToBlur(Landroid/graphics/Bitmap;IIII)V
.end method

.method public static native blacklist getAverageColorFromPixels([IIII)I
.end method

.method public static blacklist isTransParentBitmap(Landroid/graphics/Bitmap;II)Z
    .registers 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_4
    mul-int v0, p1, p2

    new-array v0, v0, [I

    .line 59
    .local v0, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 60
    invoke-static {v0, p1, p2}, Lcom/miui/autoui/utils/NativeImageProcess;->nIsTransParentBitmap([III)Z

    move-result v1

    return v1
.end method

.method private static native blacklist nIsTransParentBitmap([III)Z
.end method
