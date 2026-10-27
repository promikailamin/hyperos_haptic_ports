.class public final synthetic Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/NetworkManagementService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService;->lambda$tetherLimitReached$6$com-android-server-NetworkManagementService()V

    return-void
.end method
