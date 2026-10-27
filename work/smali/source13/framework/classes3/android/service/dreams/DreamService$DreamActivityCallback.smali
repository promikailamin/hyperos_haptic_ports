.class final Landroid/service/dreams/DreamService$DreamActivityCallback;
.super Landroid/os/Binder;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DreamActivityCallback"
.end annotation


# instance fields
.field private final blacklist mActivityDreamToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1469
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1470
    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->mActivityDreamToken:Landroid/os/IBinder;

    .line 1471
    return-void
.end method


# virtual methods
.method blacklist onActivityCreated(Landroid/service/dreams/DreamActivity;)V
    .registers 4
    .param p1, "activity"    # Landroid/service/dreams/DreamActivity;

    .line 1474
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->mActivityDreamToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmDreamToken(Landroid/service/dreams/DreamService;)Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmFinished(Landroid/service/dreams/DreamService;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3d

    .line 1482
    :cond_13
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1483
    invoke-static {}, Landroid/service/dreams/DreamService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A DreamActivity has already been started, finishing latest DreamActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1486
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    .line 1488
    :cond_2d
    return-void

    .line 1491
    :cond_2e
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0, p1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmActivity(Landroid/service/dreams/DreamService;Landroid/app/Activity;)V

    .line 1492
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallback;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$monWindowCreated(Landroid/service/dreams/DreamService;Landroid/view/Window;)V

    .line 1493
    return-void

    .line 1475
    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/service/dreams/DreamService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DreamActivity was created after the dream was finished or a new dream started, finishing DreamActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1478
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    .line 1480
    :cond_4f
    return-void
.end method
