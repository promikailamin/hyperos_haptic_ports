.class final Lcom/android/server/AppStateTrackerImpl$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$UidObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 754
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidActive(I)V

    .line 755
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 769
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 759
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidGone(IZ)V

    .line 760
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 764
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidIdle(IZ)V

    .line 765
    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 773
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 750
    return-void
.end method
