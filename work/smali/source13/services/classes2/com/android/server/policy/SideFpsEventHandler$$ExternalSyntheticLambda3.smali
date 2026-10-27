.class public final synthetic Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/os/PowerManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;->f$0:Landroid/os/PowerManager;

    iput-wide p2, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;->f$0:Landroid/os/PowerManager;

    iget-wide v1, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$showConfirmDialog$3(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V

    return-void
.end method
