.class final Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;
.super Ljava/lang/Object;
.source "ComponentController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ComponentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ComponentStateUpdateFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final mChangedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ComponentController;

    .line 229
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    return-void
.end method

.method private reset()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 244
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 236
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentEnabledStateLocked(Lcom/android/server/job/controllers/ComponentController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_d
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 229
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
