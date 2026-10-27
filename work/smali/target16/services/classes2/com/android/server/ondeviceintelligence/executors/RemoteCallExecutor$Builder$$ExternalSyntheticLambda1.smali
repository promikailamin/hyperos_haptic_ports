.class public final synthetic Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->$r8$lambda$WB2-2UjiL2l1UG37wI7Oleo_K2U(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
