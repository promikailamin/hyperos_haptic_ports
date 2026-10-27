.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic blacklist f$1:Landroid/app/PendingIntent;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskOrganizer$1;Landroid/app/PendingIntent;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$0:Landroid/window/TaskOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$1:Landroid/app/PendingIntent;

    iput p3, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$0:Landroid/window/TaskOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$1:Landroid/app/PendingIntent;

    iget v2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer$1;->lambda$startIntentInSplitScreen$13$android-window-TaskOrganizer$1(Landroid/app/PendingIntent;I)V

    return-void
.end method
