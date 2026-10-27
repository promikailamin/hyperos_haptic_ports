.class public Lcom/android/server/wm/ActionChain$AsyncStart;
.super Ljava/lang/Object;
.source "ActionChain.java"


# instance fields
.field public final mStackPos:I

.field public mThreadId:J


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p1, p0, Lcom/android/server/wm/ActionChain$AsyncStart;->mStackPos:I

    return-void
.end method
