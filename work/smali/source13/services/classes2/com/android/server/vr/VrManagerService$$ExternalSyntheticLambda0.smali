.class public final synthetic Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vr/VrManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/VrManagerService;->lambda$onUserSwitching$0$com-android-server-vr-VrManagerService()V

    return-void
.end method
