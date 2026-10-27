.class public final synthetic Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Landroid/os/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ConditionVariable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Landroid/os/ConditionVariable;

    invoke-static {v0, p1}, Lcom/android/server/resources/ResourcesManagerShellCommand;->lambda$dumpResources$0(Landroid/os/ConditionVariable;Landroid/os/Bundle;)V

    return-void
.end method
