.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IWakeLockCallback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/IWakeLockCallback;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Landroid/os/IWakeLockCallback;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Landroid/os/IWakeLockCallback;

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->lambda$notifyWakeLockListener$6(Landroid/os/IWakeLockCallback;Z)V

    return-void
.end method
