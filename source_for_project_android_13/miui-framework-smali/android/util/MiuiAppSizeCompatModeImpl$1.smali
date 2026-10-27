.class Landroid/util/MiuiAppSizeCompatModeImpl$1;
.super Ljava/util/ArrayList;
.source "MiuiAppSizeCompatModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MiuiAppSizeCompatModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string v0, "com.tencent.mm/.plugin.voip.ui.VideoActivity"

    invoke-virtual {p0, v0}, Landroid/util/MiuiAppSizeCompatModeImpl$1;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
