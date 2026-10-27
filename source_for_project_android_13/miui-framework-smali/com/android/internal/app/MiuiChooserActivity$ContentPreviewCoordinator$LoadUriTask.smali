.class Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;
.super Ljava/lang/Object;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadUriTask"
.end annotation


# instance fields
.field public final blacklist mBmp:Landroid/graphics/Bitmap;

.field public final blacklist mExtraCount:I

.field public final blacklist mImageResourceId:I

.field public final blacklist mUri:Landroid/net/Uri;

.field final synthetic blacklist this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;
    .param p2, "imageResourceId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extraCount"    # I
    .param p5, "bmp"    # Landroid/graphics/Bitmap;

    .line 365
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    .line 367
    iput-object p3, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mUri:Landroid/net/Uri;

    .line 368
    iput p4, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    .line 369
    iput-object p5, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    .line 370
    return-void
.end method
