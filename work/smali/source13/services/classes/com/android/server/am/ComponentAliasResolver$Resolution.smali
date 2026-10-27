.class public Lcom/android/server/am/ComponentAliasResolver$Resolution;
.super Ljava/lang/Object;
.source "ComponentAliasResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ComponentAliasResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final resolved:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final source:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<TT;>;"
    .local p1, "source":Ljava/lang/Object;, "TT;"
    .local p2, "resolved":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->source:Ljava/lang/Object;

    .line 405
    iput-object p2, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->resolved:Ljava/lang/Object;

    .line 406
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->source:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->resolved:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public isAlias()Z
    .registers 2

    .line 410
    .local p0, "this":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->resolved:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
