.class final Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SkinThermalStatusObserver"
.end annotation


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mStatus:I

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;)V
    .registers 4
    .param p2, "injector"    # Lcom/android/server/display/DisplayModeDirector$Injector;
    .param p3, "ballotBox"    # Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 2649
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 2647
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    .line 2650
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 2651
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 2652
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 2684
    const-string v0, "  SkinThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2686
    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .registers 6
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 2656
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    .line 2657
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New thermal throttling status , current thermal status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_28
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_35

    .line 2663
    const/4 v0, 0x0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .local v0, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_36

    .line 2665
    .end local v0    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_35
    const/4 v0, 0x0

    .line 2667
    .restart local v0    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_36
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/4 v2, -0x1

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2668
    return-void
.end method

.method public observe()V
    .registers 5

    .line 2671
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/DisplayModeDirector$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 2672
    .local v0, "thermalService":Landroid/os/IThermalService;
    const-string v1, "DisplayModeDirector"

    if-nez v0, :cond_10

    .line 2673
    const-string v2, "Could not observe thermal status. Service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    return-void

    .line 2677
    :cond_10
    const/4 v2, 0x3

    :try_start_11
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 2680
    goto :goto_1b

    .line 2678
    :catch_15
    move-exception v2

    .line 2679
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register thermal status listener"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2681
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method
