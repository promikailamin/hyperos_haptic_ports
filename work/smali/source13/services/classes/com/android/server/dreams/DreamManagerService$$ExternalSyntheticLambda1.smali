.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamManagerService;->lambda$cleanupDreamLocked$1$com-android-server-dreams-DreamManagerService()V

    return-void
.end method
