.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$1:Landroid/view/InputChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->lambda$createSpyWindowGestureMonitor$0$com-android-server-input-InputManagerService(Landroid/view/InputChannel;)V

    return-void
.end method
