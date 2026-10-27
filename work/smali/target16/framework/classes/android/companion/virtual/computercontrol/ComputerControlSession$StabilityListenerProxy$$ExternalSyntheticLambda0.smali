.class public final synthetic Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;

    invoke-interface {v0}, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;->onSessionStable()V

    return-void
.end method
