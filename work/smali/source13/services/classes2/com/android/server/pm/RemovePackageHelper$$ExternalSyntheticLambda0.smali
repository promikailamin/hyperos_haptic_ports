.class public final synthetic Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/RemovePackageHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/RemovePackageHelper;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    iput p2, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    iget v1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;->lambda$removePackageDataLIF$0$com-android-server-pm-RemovePackageHelper(I)V

    return-void
.end method
