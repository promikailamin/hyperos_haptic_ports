.class Lcom/miui/autoui/MiuiAutoUIPath$1;
.super Ljava/util/HashSet;
.source "MiuiAutoUIPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/MiuiAutoUIPath;
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

    .line 21
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 23
    const-string v0, "addRoundRect"

    invoke-virtual {p0, v0}, Lcom/miui/autoui/MiuiAutoUIPath$1;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
