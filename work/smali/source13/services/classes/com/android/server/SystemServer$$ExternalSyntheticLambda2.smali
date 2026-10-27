.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/SystemServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$3$com-android-server-SystemServer()V

    return-void
.end method
