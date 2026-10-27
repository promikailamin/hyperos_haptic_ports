.class public Lcom/android/server/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public mCur:Ljava/lang/Object;

.field public final mI:Ljava/util/Iterator;

.field public final synthetic this$0:Lcom/android/server/IntentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p2, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 1

    .line 325
    iget-object p0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 334
    iget-object v1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    invoke-virtual {v1, v0}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 336
    :cond_9
    iget-object p0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
