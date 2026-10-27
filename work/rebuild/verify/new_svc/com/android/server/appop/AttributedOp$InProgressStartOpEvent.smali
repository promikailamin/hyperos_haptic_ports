.class public final Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AttributedOp.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAttributionChainId:I

.field public mAttributionFlags:I

.field public mAttributionTag:Ljava/lang/String;

.field public mClientId:Landroid/os/IBinder;

.field public mFlags:I

.field public mNumUnfinishedStarts:I

.field public mOnDeath:Ljava/lang/Runnable;

.field public mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field public mStartElapsedTime:J

.field public mStartTime:J

.field public mUidState:I

.field public mVirtualDeviceId:I


# direct methods
.method public constructor <init>(JJLandroid/os/IBinder;ILjava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V
    .registers 14

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 753
    iput-wide p3, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 754
    iput-object p5, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 755
    iput p6, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 756
    iput-object p7, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 757
    iput-object p8, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 758
    iput p9, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 759
    iput-object p10, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 760
    iput p11, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 761
    iput p12, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 762
    iput p13, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    .line 764
    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 778
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method public getAttributionChainId()I
    .registers 1

    .line 863
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    return p0
.end method

.method public getAttributionFlags()I
    .registers 1

    .line 858
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    return p0
.end method

.method public getClientId()Landroid/os/IBinder;
    .registers 1

    .line 838
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object p0
.end method

.method public getFlags()I
    .registers 1

    .line 853
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    return p0
.end method

.method public getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 1

    .line 848
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object p0
.end method

.method public getStartElapsedTime()J
    .registers 3

    .line 833
    iget-wide v0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 828
    iget-wide v0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .registers 1

    .line 843
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    return p0
.end method

.method public getVirtualDeviceId()I
    .registers 1

    .line 868
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    return p0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/String;ILjava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V
    .registers 15

    .line 807
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 808
    iput-wide p3, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 809
    iput-object p5, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 810
    iput-object p6, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 811
    iput-object p8, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 812
    iput p7, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 813
    iput p9, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 814
    iput p10, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 816
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz p1, :cond_17

    .line 817
    invoke-interface {p14, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 819
    :cond_17
    iput-object p11, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 820
    iput p12, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 821
    iput p13, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    .line 823
    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public setStartElapsedTime(J)V
    .registers 3

    .line 876
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    return-void
.end method

.method public setStartTime(J)V
    .registers 3

    .line 872
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    return-void
.end method
