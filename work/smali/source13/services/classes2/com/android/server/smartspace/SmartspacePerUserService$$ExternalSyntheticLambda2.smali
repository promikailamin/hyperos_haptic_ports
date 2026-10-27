.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/smartspace/SmartspacePerUserService;

.field public final synthetic f$1:Landroid/app/smartspace/SmartspaceSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;->f$1:Landroid/app/smartspace/SmartspaceSessionId;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;->f$1:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {v0, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->lambda$onCreateSmartspaceSessionLocked$1$com-android-server-smartspace-SmartspacePerUserService(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method
