.class public final synthetic Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;

.field public final synthetic blacklist f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;Landroid/app/PendingIntent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;

    iput-object p2, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;

    iget-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;->$r8$lambda$NBtYVpVb20tfjgXWvLYUx9Z7mwc(Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;Landroid/app/PendingIntent;)V

    return-void
.end method
