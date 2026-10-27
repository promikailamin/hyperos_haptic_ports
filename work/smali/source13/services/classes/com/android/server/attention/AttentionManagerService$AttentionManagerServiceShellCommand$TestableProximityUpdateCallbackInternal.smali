.class Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;
.super Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestableProximityUpdateCallbackInternal"
.end annotation


# instance fields
.field private mLastCallbackCode:D

.field final synthetic this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    .line 955
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;-><init>()V

    .line 956
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    return-void
.end method


# virtual methods
.method public getLastCallbackCode()D
    .registers 3

    .line 968
    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    return-wide v0
.end method

.method public onProximityUpdate(D)V
    .registers 3
    .param p1, "distance"    # D

    .line 960
    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    .line 961
    return-void
.end method

.method public reset()V
    .registers 3

    .line 964
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    .line 965
    return-void
.end method
