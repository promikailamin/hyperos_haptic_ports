.class Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
.super Ljava/lang/Object;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadDrawableSource"
.end annotation


# instance fields
.field blacklist mCookie:I

.field blacklist mResourcePath:Ljava/lang/String;

.field blacklist mThemePath:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/content/res/MiuiResourcesImpl;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/MiuiResourcesImpl;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "cookie"    # I
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "themePath"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->this$0:Landroid/content/res/MiuiResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mCookie:I

    .line 51
    iput-object p3, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 53
    return-void
.end method
