.class public final synthetic Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/uwb/RangingSession;

.field public final synthetic blacklist f$1:Landroid/uwb/UwbAddress;

.field public final synthetic blacklist f$2:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;->f$0:Landroid/uwb/RangingSession;

    iput-object p2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;->f$1:Landroid/uwb/UwbAddress;

    iput-object p3, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;->f$2:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;->f$0:Landroid/uwb/RangingSession;

    iget-object v1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;->f$1:Landroid/uwb/UwbAddress;

    iget-object v2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;->f$2:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2}, Landroid/uwb/RangingSession;->lambda$onDataSent$19$android-uwb-RangingSession(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    return-void
.end method
