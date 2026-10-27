.class public Lcom/android/server/biometrics/WatchRangingHelper;
.super Ljava/lang/Object;
.source "WatchRangingHelper.java"


# instance fields
.field public final mAuthenticationPolicyManager:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

.field public final mAuthenticationRequestId:J

.field public final mHandler:Landroid/os/Handler;

.field public final mWatchRangingListener:Lcom/android/server/biometrics/WatchRangingHelper$WatchRangingListener;

.field public mWatchRangingState:I


# direct methods
.method public constructor <init>(JLandroid/security/authenticationpolicy/AuthenticationPolicyManager;Landroid/os/Handler;Lcom/android/server/biometrics/WatchRangingHelper$WatchRangingListener;)V
    .registers 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/server/biometrics/WatchRangingHelper;->mWatchRangingState:I

    .line 53
    iput-wide p1, p0, Lcom/android/server/biometrics/WatchRangingHelper;->mAuthenticationRequestId:J

    .line 54
    iput-object p3, p0, Lcom/android/server/biometrics/WatchRangingHelper;->mAuthenticationPolicyManager:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    .line 55
    iput-object p4, p0, Lcom/android/server/biometrics/WatchRangingHelper;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p5, p0, Lcom/android/server/biometrics/WatchRangingHelper;->mWatchRangingListener:Lcom/android/server/biometrics/WatchRangingHelper$WatchRangingListener;

    return-void
.end method
