.class Lcom/miui/autoui/utils/ViewProcessor$9;
.super Ljava/util/HashSet;
.source "ViewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/utils/ViewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 128
    const-string v0, "com.facebook.react.ReactRootView"

    invoke-virtual {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor$9;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method
