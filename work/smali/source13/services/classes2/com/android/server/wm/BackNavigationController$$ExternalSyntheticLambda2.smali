.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BackNavigationController;

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BackNavigationController;

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$1$com-android-server-wm-BackNavigationController(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method
