.class Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TF;>;"
    }
.end annotation


# instance fields
.field private blacklist mCur:Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private final blacklist mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/miui/hybrid/hook/IntentResolver;


# direct methods
.method constructor blacklist <init>(Lcom/miui/hybrid/hook/IntentResolver;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TF;>;)V"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>.IteratorWrapper;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    iput-object p1, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->this$0:Lcom/miui/hybrid/hook/IntentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    .line 317
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 320
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public blacklist next()Landroid/content/IntentFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 311
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>.IteratorWrapper;"
    invoke-virtual {p0}, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->next()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 328
    .local p0, "this":Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;, "Lcom/miui/hybrid/hook/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    if-eqz v0, :cond_9

    .line 329
    iget-object v1, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->this$0:Lcom/miui/hybrid/hook/IntentResolver;

    invoke-virtual {v1, v0}, Lcom/miui/hybrid/hook/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 331
    :cond_9
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 332
    return-void
.end method
