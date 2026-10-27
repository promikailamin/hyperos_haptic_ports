.class public abstract Lcom/android/server/bitmapoffload/BitmapOffloadInternal;
.super Ljava/lang/Object;
.source "BitmapOffloadInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkPermission(ILandroid/net/Uri;II)Z
.end method

.method public abstract offloadBitmap(ILandroid/graphics/Bitmap;)Landroid/net/Uri;
.end method

.method public abstract registerPermissionHandler(ILcom/android/server/bitmapoffload/BitmapOffloadInternal$PermissionHandler;)V
.end method
