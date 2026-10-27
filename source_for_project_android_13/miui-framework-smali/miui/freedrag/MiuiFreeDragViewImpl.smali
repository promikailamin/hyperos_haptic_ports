.class public Lmiui/freedrag/MiuiFreeDragViewImpl;
.super Ljava/lang/Object;
.source "MiuiFreeDragViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeDragViewImpl"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist freeDragImage(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 36
    invoke-static {p1, p2}, Lmiui/freedrag/MiuiFreeDragViewImpl;->saveBitmapFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    .local v0, "bitmapFileUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapFileUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeDragViewImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-nez v0, :cond_1f

    .line 41
    return-void

    .line 45
    :cond_1f
    new-instance v1, Landroid/content/ClipData;

    const-string v2, "image/jpeg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 49
    .local v1, "clipData":Landroid/content/ClipData;
    new-instance v2, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;

    invoke-direct {v2, p1, p2}, Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 52
    .local v2, "shadowBuilder":Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;
    new-instance v3, Lmiui/freedrag/MiuiFreeDragViewDragListener;

    invoke-direct {v3, p1, v0, v2}, Lmiui/freedrag/MiuiFreeDragViewDragListener;-><init>(Landroid/content/Context;Landroid/net/Uri;Lmiui/freedrag/MiuiFreeDragViewImpl$FreeDragShadowBuilder;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 55
    const/16 v3, 0x301

    .line 58
    .local v3, "flags":I
    invoke-virtual {p0, v1, v2, v4, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 59
    return-void
.end method

.method private static blacklist saveBitmapFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "uri":Landroid/net/Uri;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v2, "contentValues":Landroid/content/ContentValues;
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "relative_path"

    const-string v4, "Pictures/dragImgs"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    .line 73
    if-eqz v0, :cond_58

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 75
    .local v3, "outputStream":Ljava/io/OutputStream;
    if-eqz v3, :cond_58

    .line 76
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 77
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_59

    .line 83
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_58
    goto :goto_61

    .line 81
    :catch_59
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MiuiFreeDragViewImpl"

    const-string v3, "saveBitmapFile exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_61
    return-object v0
.end method
