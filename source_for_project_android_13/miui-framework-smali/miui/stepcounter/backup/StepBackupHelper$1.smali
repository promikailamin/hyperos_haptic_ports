.class Lmiui/stepcounter/backup/StepBackupHelper$1;
.super Ljava/lang/Object;
.source "StepBackupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/stepcounter/backup/StepBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/stepcounter/backup/StepBackupHelper;

.field final synthetic blacklist val$valuesList:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Lmiui/stepcounter/backup/StepBackupHelper;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/stepcounter/backup/StepBackupHelper;

    .line 178
    iput-object p1, p0, Lmiui/stepcounter/backup/StepBackupHelper$1;->this$0:Lmiui/stepcounter/backup/StepBackupHelper;

    iput-object p2, p0, Lmiui/stepcounter/backup/StepBackupHelper$1;->val$valuesList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 181
    iget-object v0, p0, Lmiui/stepcounter/backup/StepBackupHelper$1;->val$valuesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/stepcounter/backup/StepBackupHelper$1;->this$0:Lmiui/stepcounter/backup/StepBackupHelper;

    invoke-static {v1}, Lmiui/stepcounter/backup/StepBackupHelper;->-$$Nest$fgetmContext(Lmiui/stepcounter/backup/StepBackupHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/stepcounter/StepProvider;->restoreStepsLocked(Ljava/util/ArrayList;Landroid/content/Context;)Z

    .line 182
    return-void
.end method
