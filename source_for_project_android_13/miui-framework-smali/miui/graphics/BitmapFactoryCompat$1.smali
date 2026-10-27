.class Lmiui/graphics/BitmapFactoryCompat$1;
.super Landroid/content/ContextWrapper;
.source "BitmapFactoryCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/graphics/BitmapFactoryCompat;->fastblur_v17(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public whitelist getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 100
    return-object p0
.end method
