.class public Lcom/android/server/wm/WindowState$DrawHandler;
.super Ljava/lang/Object;
.source "WindowState.java"


# instance fields
.field public final mConsumer:Ljava/util/function/Consumer;

.field public final mSeqId:I


# direct methods
.method public constructor <init>(ILjava/util/function/Consumer;)V
    .registers 3

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput p1, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    .line 779
    iput-object p2, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method
