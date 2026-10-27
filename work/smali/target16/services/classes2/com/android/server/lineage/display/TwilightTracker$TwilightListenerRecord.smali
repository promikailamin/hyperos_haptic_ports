.class public Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;
.super Ljava/lang/Object;
.source "TwilightTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V
    .registers 3

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;->mListener:Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;

    .line 549
    iput-object p2, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public postUpdate()V
    .registers 2

    .line 553
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 1

    .line 558
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;->mListener:Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;

    invoke-interface {p0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;->onTwilightStateChanged()V

    return-void
.end method
