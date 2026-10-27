.class final Lcom/android/server/dreams/DreamManagerService$LocalService;
.super Landroid/service/dreams/DreamManagerInternal;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 784
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/DreamManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public getActiveDreamComponent(Z)Landroid/content/ComponentName;
    .registers 3
    .param p1, "doze"    # Z

    .line 802
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mgetActiveDreamComponentInternal(Lcom/android/server/dreams/DreamManagerService;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public isDreaming()Z
    .registers 2

    .line 797
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$misDreamingInternal(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v0

    return v0
.end method

.method public startDream(Z)V
    .registers 3
    .param p1, "doze"    # Z

    .line 787
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mstartDreamInternal(Lcom/android/server/dreams/DreamManagerService;Z)V

    .line 788
    return-void
.end method

.method public stopDream(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .line 792
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v1, "requested stopDream"

    invoke-static {v0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mstopDreamInternal(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    .line 793
    return-void
.end method
