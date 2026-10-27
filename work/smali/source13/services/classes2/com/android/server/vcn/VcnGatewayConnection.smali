.class public Lcom/android/server/vcn/VcnGatewayConnection;
.super Lcom/android/internal/util/StateMachine;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;,
        Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;,
        Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$BaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;
    }
.end annotation


# static fields
.field private static final ARG_NOT_PRESENT:I = -0x80000000

.field private static final DISCONNECT_REASON_INTERNAL_ERROR:Ljava/lang/String; = "Uncaught exception: "

.field private static final DISCONNECT_REASON_NETWORK_AGENT_UNWANTED:Ljava/lang/String; = "NetworkAgent was unwanted"

.field private static final DISCONNECT_REASON_TEARDOWN:Ljava/lang/String; = "teardown() called on VcnTunnel"

.field private static final DISCONNECT_REASON_UNDERLYING_NETWORK_LOST:Ljava/lang/String; = "Underlying Network lost"

.field static final DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

.field static final DUMMY_ADDR:Ljava/net/InetAddress;

.field private static final EVENT_DISCONNECT_REQUESTED:I = 0x7

.field private static final EVENT_IKE_CONNECTION_INFO_CHANGED:I = 0xc

.field private static final EVENT_MIGRATION_COMPLETED:I = 0xb

.field private static final EVENT_RETRY_TIMEOUT_EXPIRED:I = 0x2

.field private static final EVENT_SAFE_MODE_TIMEOUT_EXCEEDED:I = 0xa

.field private static final EVENT_SESSION_CLOSED:I = 0x4

.field private static final EVENT_SESSION_LOST:I = 0x3

.field private static final EVENT_SETUP_COMPLETED:I = 0x6

.field private static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x9

.field private static final EVENT_TEARDOWN_TIMEOUT_EXPIRED:I = 0x8

.field private static final EVENT_TRANSFORM_CREATED:I = 0x5

.field private static final EVENT_UNDERLYING_NETWORK_CHANGED:I = 0x1

.field private static final MERGED_CAPABILITIES:[I

.field static final NETWORK_INFO_EXTRA_INFO:Ljava/lang/String; = "VCN"

.field static final NETWORK_INFO_NETWORK_TYPE_STRING:Ljava/lang/String; = "MOBILE"

.field static final NETWORK_LOSS_DISCONNECT_TIMEOUT_SECONDS:I = 0x1e

.field static final RETRY_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_SECONDS:I = 0x1e

.field private static final SAFEMODE_TIMEOUT_SECONDS_TEST_MODE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_SECONDS:I = 0x5

.field private static final TOKEN_ALL:I = -0x80000000


# instance fields
.field private mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

.field final mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

.field final mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

.field private final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentToken:I

.field private final mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

.field private mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

.field final mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

.field private mFailedAttempts:I

.field private final mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

.field private mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

.field private mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

.field private final mIpSecManager:Landroid/net/IpSecManager;

.field private mIsInSafeMode:Z

.field private final mIsMobileDataEnabled:Z

.field private mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field private mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

.field private mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field private mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field private final mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

.field private final mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private final mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeps(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGatewayStatusCallback(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpSecManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMobileDataEnabled(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsQuitting(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInSafeMode(Lcom/android/server/vcn/VcnGatewayConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSafeModeTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/internal/util/WakeupMessage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelSafeModeAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchildOpened(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchildTransformCreated(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->childTransformCreated(ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mikeConnectionInfoChanged(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->ikeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogVdbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeReleaseWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msessionClosed(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionClosed(ILjava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setDisconnectRequestAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->setRetryTimeoutAlarm(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setTeardownTimeoutAlarm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 166
    const-class v0, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    .line 177
    const-string v1, "192.0.2.0"

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_TEARDOWN_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DISCONNECT_REQUEST_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_RETRY_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SAFEMODE_TIMEOUT_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    return-void

    nop

    :array_6e
    .array-data 4
        0xb
        0x12
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)V
    .registers 15
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "connectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p5, "gatewayStatusCallback"    # Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .param p6, "isMobileDataEnabled"    # Z

    .line 707
    new-instance v7, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-direct {v7}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V

    .line 715
    return-void
.end method

.method constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V
    .registers 25
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "connectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p5, "gatewayStatusCallback"    # Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .param p6, "isMobileDataEnabled"    # Z
    .param p7, "deps"    # Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 726
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v2, "Missing vcnContext"

    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 549
    new-instance v8, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    const/4 v2, 0x0

    invoke-direct {v8, v0, v2}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState-IA;)V

    iput-object v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 553
    new-instance v9, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-direct {v9, v0, v2}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState-IA;)V

    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 557
    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-direct {v10, v0, v2}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState-IA;)V

    iput-object v10, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 561
    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-direct {v11, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v11, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 565
    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    invoke-direct {v12, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    .line 586
    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 615
    new-instance v3, Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-direct {v3}, Lcom/android/server/vcn/util/OneWayBoolean;-><init>()V

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 624
    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    .line 646
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 654
    iput v13, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 727
    iput-object v7, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 728
    const-string v3, "Missing subscriptionGroup"

    move-object/from16 v14, p2

    invoke-static {v14, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 729
    const-string v3, "Missing connectionConfig"

    move-object/from16 v15, p4

    invoke-static {v15, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 730
    nop

    .line 731
    const-string v4, "Missing gatewayStatusCallback"

    move-object/from16 v6, p5

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iput-object v4, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 732
    move/from16 v5, p6

    iput-boolean v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    .line 733
    const-string v4, "Missing deps"

    move-object/from16 v13, p7

    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iput-object v4, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 735
    const-string v2, "Missing snapshot"

    move-object/from16 v7, p3

    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 737
    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback-IA;)V

    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    .line 739
    nop

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v16, v2

    const/4 v2, 0x1

    invoke-virtual {v4, v5, v2, v1}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 742
    iget-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 743
    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newUnderlyingNetworkController(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/IpSecManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecManager;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 752
    invoke-virtual {v0, v8}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 753
    invoke-virtual {v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 754
    invoke-virtual {v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 755
    invoke-virtual {v0, v11}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 756
    invoke-virtual {v0, v12}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 758
    invoke-virtual {v0, v8}, Lcom/android/server/vcn/VcnGatewayConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 759
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->setDbg(Z)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vcn/VcnGatewayConnection;->start()V

    .line 761
    return-void
.end method

.method private acquireWakeLock()V
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 876
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 877
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->acquire()V

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 881
    :cond_2a
    return-void
.end method

.method private buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .registers 2

    .line 2489
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v0

    return-object v0
.end method

.method private buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 2480
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2481
    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 2482
    .local v0, "ikeTunnelConnectionParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2483
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 2484
    .local v1, "builder":Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    invoke-virtual {v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2485
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    return-object v2
.end method

.method static buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;
    .registers 11
    .param p0, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p1, "underlying"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p2, "isMobileDataEnabled"    # Z

    .line 2092
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 2094
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2095
    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2096
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2097
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2100
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2102
    .local v3, "cap":I
    if-nez p2, :cond_3a

    const/16 v4, 0xc

    if-eq v3, v4, :cond_20

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3a

    .line 2104
    goto :goto_20

    .line 2107
    :cond_3a
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2108
    .end local v3    # "cap":I
    goto :goto_20

    .line 2110
    :cond_3e
    if-eqz p1, :cond_f7

    .line 2111
    iget-object v2, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2114
    .local v2, "underlyingCaps":Landroid/net/NetworkCapabilities;
    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    array-length v4, v3

    move v5, v1

    :goto_46
    if-ge v5, v4, :cond_56

    aget v6, v3, v5

    .line 2115
    .local v6, "cap":I
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2116
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2114
    .end local v6    # "cap":I
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 2121
    :cond_56
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v3

    .line 2122
    .local v3, "underlyingAdminUids":[I
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 2125
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_80

    .line 2127
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v4

    .line 2126
    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-gez v4, :cond_80

    .line 2128
    array-length v4, v3

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 2129
    .local v4, "adminUids":[I
    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v7

    aput v7, v4, v6

    .line 2130
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    goto :goto_81

    .line 2132
    .end local v4    # "adminUids":[I
    :cond_80
    move-object v4, v3

    .line 2136
    .restart local v4    # "adminUids":[I
    :goto_81
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2137
    array-length v6, v4

    add-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 2138
    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    aput v7, v4, v6

    .line 2139
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 2141
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2142
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2145
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 2146
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v5

    instance-of v5, v5, Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_c4

    .line 2147
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 2148
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v5, Landroid/net/vcn/VcnTransportInfo;

    invoke-direct {v5, v1}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 2149
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    goto :goto_ed

    :cond_c4
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 2150
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    instance-of v1, v1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v1, :cond_e6

    .line 2151
    nop

    .line 2152
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 2153
    .local v1, "telNetSpecifier":Landroid/net/TelephonyNetworkSpecifier;
    new-instance v5, Landroid/net/vcn/VcnTransportInfo;

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/net/vcn/VcnTransportInfo;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 2154
    .end local v1    # "telNetSpecifier":Landroid/net/TelephonyNetworkSpecifier;
    goto :goto_ed

    .line 2155
    :cond_e6
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v5, "Unknown transport type or missing TransportInfo/NetworkSpecifier for non-null underlying network"

    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :goto_ed
    iget-object v1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    .line 2161
    .end local v2    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    .end local v3    # "underlyingAdminUids":[I
    .end local v4    # "adminUids":[I
    goto :goto_103

    .line 2162
    :cond_f7
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "No underlying network while building network capabilities"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2168
    :goto_103
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1
.end method

.method private cancelDisconnectRequestAlarm()V
    .registers 5

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_22

    .line 1107
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1112
    :cond_22
    const/4 v0, 0x7

    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const/4 v2, 0x0

    const-string v3, "Underlying Network lost"

    invoke-direct {v1, v3, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1116
    return-void
.end method

.method private cancelRetryTimeoutAlarm()V
    .registers 3

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_22

    .line 1137
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1141
    :cond_22
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    .line 1142
    return-void
.end method

.method private cancelSafeModeAlarm()V
    .registers 3

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_22

    .line 1167
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1171
    :cond_22
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    .line 1172
    return-void
.end method

.method private cancelTeardownTimeoutAlarm()V
    .registers 3

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_22

    .line 1067
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1072
    :cond_22
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    .line 1073
    return-void
.end method

.method private childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 1281
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1283
    return-void
.end method

.method private childTransformCreated(ILandroid/net/IpSecTransform;I)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .param p3, "direction"    # I

    .line 1274
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    invoke-direct {v0, p3, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;-><init>(ILandroid/net/IpSecTransform;)V

    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1278
    return-void
.end method

.method private createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;
    .registers 9
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "delayedMessage"    # Landroid/os/Message;
    .param p3, "delay"    # J

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1022
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_12

    .line 1023
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Attempted to schedule alarm after StateMachine has quit"

    invoke-direct {p0, v2, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1026
    const/4 v1, 0x0

    return-object v1

    .line 1034
    :cond_12
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V

    .line 1035
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    .line 1040
    .local v1, "alarm":Lcom/android/internal/util/WakeupMessage;
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getElapsedRealTime()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1041
    return-object v1
.end method

.method private getTagLogPrefix()Ljava/lang/String;
    .registers 3

    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ikeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "ikeConnectionInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 1247
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    const/16 v1, 0xc

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1251
    return-void
.end method

.method private static isIkeAuthFailure(Ljava/lang/Exception;)Z
    .registers 4
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 1198
    instance-of v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1199
    return v1

    .line 1202
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private logDbg(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 2340
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    return-void
.end method

.method private logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2344
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2345
    return-void
.end method

.method private logErr(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 2368
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2370
    return-void
.end method

.method private logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2373
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2374
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2375
    return-void
.end method

.method private logInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 2348
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2350
    return-void
.end method

.method private logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2353
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2354
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2355
    return-void
.end method

.method private logVdbg(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2337
    return-void
.end method

.method private logWarn(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 2358
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2360
    return-void
.end method

.method private logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2363
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2364
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2365
    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 2378
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WTF ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2380
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2383
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2384
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WTF ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2385
    return-void
.end method

.method private maybeReleaseWakeLock()V
    .registers 3

    .line 898
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 899
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v1

    if-nez v1, :cond_f

    .line 900
    :cond_c
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    .line 902
    :cond_f
    return-void
.end method

.method private migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "inTransform"    # Landroid/net/IpSecTransform;
    .param p3, "outTransform"    # Landroid/net/IpSecTransform;

    .line 1266
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;-><init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    const/16 v1, 0xb

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1270
    return-void
.end method

.method private notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V
    .registers 7
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 1211
    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->isIkeAuthFailure(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1212
    const/4 v0, 0x1

    .line 1213
    .local v0, "errorCode":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, "exceptionClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .local v2, "exceptionMessage":Ljava/lang/String;
    goto :goto_60

    .line 1215
    .end local v0    # "errorCode":I
    .end local v1    # "exceptionClass":Ljava/lang/String;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    :cond_14
    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    if-eqz v0, :cond_30

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_30

    .line 1217
    const/4 v0, 0x2

    .line 1218
    .restart local v0    # "errorCode":I
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .restart local v1    # "exceptionClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "exceptionMessage":Ljava/lang/String;
    goto :goto_60

    .line 1221
    .end local v0    # "errorCode":I
    .end local v1    # "exceptionClass":Ljava/lang/String;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    :cond_30
    const/4 v0, 0x0

    .line 1222
    .restart local v0    # "errorCode":I
    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1223
    .restart local v1    # "exceptionClass":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1227
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    .restart local v2    # "exceptionMessage":Ljava/lang/String;
    :goto_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered error; code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exceptionClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exceptionMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 1238
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1239
    invoke-virtual {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v4

    .line 1238
    invoke-interface {v3, v4, v0, v1, v2}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1243
    return-void
.end method

.method private releaseWakeLock()V
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 886
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->release()V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method private removeEqualMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .line 999
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1000
    return-void
.end method

.method private removeEqualMessages(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1012
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_9

    .line 1013
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1016
    :cond_9
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    .line 1017
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(II)V
    .registers 3
    .param p1, "what"    # I
    .param p2, "token"    # I

    .line 961
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 962
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 963
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(IIILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # I
    .param p3, "arg2"    # I
    .param p4, "data"    # Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;

    .line 979
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 980
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 981
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # I
    .param p3, "data"    # Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;

    .line 970
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 971
    const/high16 v0, -0x80000000

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 972
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 988
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 989
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 990
    return-void
.end method

.method private sessionClosed(ILjava/lang/Exception;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1254
    if-eqz p2, :cond_5

    .line 1255
    invoke-direct {p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V

    .line 1260
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    .line 1261
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    .line 1262
    return-void
.end method

.method private sessionLost(ILjava/lang/Exception;)V
    .registers 9
    .param p1, "token"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1183
    if-eqz p2, :cond_3d

    .line 1184
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1185
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Ljava/lang/RuntimeException;

    .line 1187
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1189
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1191
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1184
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_3d
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    .line 1195
    return-void
.end method

.method private sessionLostWithoutCallback(ILjava/lang/Exception;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1175
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1177
    return-void
.end method

.method private setDisconnectRequestAlarm()V
    .registers 6

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_1d

    .line 1083
    return-void

    .line 1086
    :cond_1d
    const/4 v0, 0x7

    const/high16 v1, -0x80000000

    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const-string v3, "Underlying Network lost"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    .line 1087
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1093
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 1097
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1094
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1098
    return-void
.end method

.method private setRetryTimeoutAlarm(J)V
    .registers 5
    .param p1, "delay"    # J

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_35

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRetryTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 1129
    :cond_35
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1130
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1131
    return-void
.end method

.method private setTeardownTimeoutAlarm()V
    .registers 6

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_35

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTeardownTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 1055
    :cond_35
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1056
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 1060
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1057
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1061
    return-void
.end method


# virtual methods
.method buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;
    .registers 14
    .param p1, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p2, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p3, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .param p4, "underlying"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p5, "ikeConnectionInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 2178
    nop

    .line 2179
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 2180
    .local v0, "ikeTunnelParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 2182
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-virtual {p2}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 2184
    .local v3, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 2185
    .end local v3    # "addr":Landroid/net/LinkAddress;
    goto :goto_19

    .line 2186
    :cond_29
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2187
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 2188
    .end local v3    # "addr":Ljava/net/InetAddress;
    goto :goto_31

    .line 2190
    :cond_41
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 2192
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v3, v7, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v2, v3, v4, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 2195
    const/4 v2, 0x0

    .line 2196
    .local v2, "underlyingMtu":I
    if-eqz p4, :cond_85

    .line 2197
    iget-object v3, p4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 2199
    .local v3, "underlyingLp":Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 2205
    if-nez v2, :cond_84

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 2206
    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getUnderlyingIfaceMtu(Ljava/lang/String;)I

    move-result v2

    .line 2208
    .end local v3    # "underlyingLp":Landroid/net/LinkProperties;
    :cond_84
    goto :goto_91

    .line 2209
    :cond_85
    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v5, "No underlying network while building link properties"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2214
    :goto_91
    nop

    .line 2216
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v3

    .line 2217
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMaxMtu()I

    move-result v4

    .line 2219
    invoke-virtual {p5}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    .line 2215
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;IIZ)I

    move-result v3

    .line 2214
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 2221
    return-object v1
.end method

.method buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 9
    .param p1, "network"    # Landroid/net/Network;

    .line 2494
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 2496
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2498
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    .line 2499
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v4

    new-instance v5, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;

    invoke-direct {v5, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    .line 2496
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    return-object v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 2399
    move-object v1, v2

    goto :goto_45

    .line 2400
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2396
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsQuitting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v1}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInSafeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailedAttempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkAgent.getNetwork(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2407
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    if-nez v1, :cond_c4

    goto :goto_c8

    :cond_c4
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    :goto_c8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2405
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2410
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2411
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2413
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2414
    return-void
.end method

.method getIkeConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .registers 2

    .line 2438
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-object v0
.end method

.method getIkeSession()Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 2

    .line 2453
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object v0
.end method

.method public getLogPrefix()Ljava/lang/String;
    .registers 4

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 2321
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2323
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2325
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2320
    return-object v0
.end method

.method getNetworkAgent()Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .registers 2

    .line 2463
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object v0
.end method

.method getUnderlyingNetwork()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .registers 2

    .line 2428
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object v0
.end method

.method getUnderlyingNetworkControllerCallback()Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;
    .registers 2

    .line 2423
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    return-object v0
.end method

.method public isInSafeMode()Z
    .registers 2

    .line 766
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 768
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return v0
.end method

.method isQuitting()Z
    .registers 2

    .line 2443
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$createScheduledAlarm$0$com-android-server-vcn-VcnGatewayConnection(Landroid/os/Message;)V
    .registers 2
    .param p1, "delayedMessage"    # Landroid/os/Message;

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(Landroid/os/Message;)V

    return-void
.end method

.method protected onQuitting()V
    .registers 3

    .line 784
    const-string v0, "Quitting VcnGatewayConnection"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 787
    const-string v0, "NetworkAgent was non-null in onQuitting"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->unregister()V

    .line 789
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 792
    :cond_16
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    if-eqz v0, :cond_26

    .line 793
    const-string v0, "IkeSession was non-null in onQuitting"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 795
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 799
    :cond_26
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    if-eqz v0, :cond_2d

    .line 800
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 803
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    .line 805
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    .line 806
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    .line 807
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    .line 808
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 810
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->teardown()V

    .line 812
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    invoke-interface {v0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onQuit()V

    .line 813
    return-void
.end method

.method sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "shouldQuit"    # Z

    .line 2473
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 2477
    return-void
.end method

.method public sendMessage(I)V
    .registers 3
    .param p1, "what"    # I

    .line 906
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 909
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 910
    return-void
.end method

.method public sendMessage(II)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 922
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 925
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 926
    return-void
.end method

.method public sendMessage(III)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 930
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 933
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 934
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 938
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 941
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 942
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 914
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 917
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 918
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 946
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 949
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 950
    return-void
.end method

.method setIkeSession(Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .registers 2
    .param p1, "session"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 2458
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 2459
    return-void
.end method

.method setNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .registers 2
    .param p1, "networkAgent"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 2468
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 2469
    return-void
.end method

.method setQuitting()V
    .registers 2

    .line 2448
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->setTrue()V

    .line 2449
    return-void
.end method

.method setSafeModeAlarm()V
    .registers 6

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_1d

    .line 1150
    return-void

    .line 1153
    :cond_1d
    const/16 v0, 0xa

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1154
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    .line 1158
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1159
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_40

    .line 1160
    :cond_38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1155
    :goto_40
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1161
    return-void
.end method

.method setTunnelInterface(Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .registers 2
    .param p1, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 2418
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 2419
    return-void
.end method

.method setUnderlyingNetwork(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .registers 2
    .param p1, "record"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 2433
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 2434
    return-void
.end method

.method public teardownAsynchronously()V
    .registers 3

    .line 777
    const-string v0, "Triggering async teardown"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 778
    const-string/jumbo v0, "teardown() called on VcnTunnel"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    .line 780
    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 4
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 822
    const-string v0, "Missing snapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 825
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 826
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 828
    const/16 v0, 0x9

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    .line 829
    return-void
.end method
