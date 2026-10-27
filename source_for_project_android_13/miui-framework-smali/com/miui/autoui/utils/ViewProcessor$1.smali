.class Lcom/miui/autoui/utils/ViewProcessor$1;
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

    .line 78
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 80
    const-string v0, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor$1;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    invoke-virtual {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor$1;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method
