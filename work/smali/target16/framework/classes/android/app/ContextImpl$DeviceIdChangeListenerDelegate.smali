.class Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
.super Ljava/lang/Object;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceIdChangeListenerDelegate"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Ljava/util/function/IntConsumer;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/IntConsumer;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mListener:Ljava/util/function/IntConsumer;

    .line 424
    iput-object p2, p0, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 425
    return-void
.end method
