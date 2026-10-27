.class public final synthetic Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkFactoryImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkFactoryImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryImpl;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryImpl;

    invoke-virtual {v0, p1}, Landroid/net/NetworkFactoryImpl;->lambda$new$0$android-net-NetworkFactoryImpl(Ljava/lang/Runnable;)V

    return-void
.end method
