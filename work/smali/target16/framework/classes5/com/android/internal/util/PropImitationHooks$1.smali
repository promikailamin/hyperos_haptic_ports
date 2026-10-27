.class Lcom/android/internal/util/PropImitationHooks$1;
.super Landroid/app/TaskStackListener;
.source "PropImitationHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/PropImitationHooks;->setPlayIntegrityProps(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$was:Z


# direct methods
.method constructor blacklist <init>(Z)V
    .registers 2

    .line 229
    iput-boolean p1, p0, Lcom/android/internal/util/PropImitationHooks$1;->val$was:Z

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTaskStackChanged()V
    .registers 4

    .line 232
    invoke-static {}, Lcom/android/internal/util/PropImitationHooks;->-$$Nest$smisGmsAddAccountActivityOnTop()Z

    move-result v0

    .line 233
    iget-boolean v1, p0, Lcom/android/internal/util/PropImitationHooks$1;->val$was:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_38

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GmsAddAccountActivityOnTop is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/util/PropImitationHooks$1;->val$was:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", killing myself!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 238
    :cond_38
    return-void
.end method
