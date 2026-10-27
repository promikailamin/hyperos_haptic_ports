.class final Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InProgressStartOpEvent"
.end annotation


# instance fields
.field private mAttributionChainId:I

.field private mAttributionFlags:I

.field private mAttributionTag:Ljava/lang/String;

.field private mClientId:Landroid/os/IBinder;

.field private mFlags:I

.field private mOnDeath:Ljava/lang/Runnable;

.field private mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field private mStartElapsedTime:J

.field private mStartTime:J

.field private mUidState:I

.field numUnfinishedStarts:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .registers 1

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .registers 1

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStartElapsedTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-void
.end method

.method private constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V
    .registers 14
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "onDeath"    # Ljava/lang/Runnable;
    .param p8, "uidState"    # I
    .param p9, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .param p10, "flags"    # I
    .param p11, "attributionFlags"    # I
    .param p12, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 777
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 778
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 779
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 780
    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 781
    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 782
    iput-object p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 783
    iput p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    .line 784
    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    .line 785
    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    .line 787
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 788
    return-void
.end method

.method synthetic constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;IIILcom/android/server/appop/AppOpsService$InProgressStartOpEvent-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 801
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 802
    return-void
.end method

.method public finish()V
    .registers 3

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 796
    goto :goto_8

    .line 794
    :catch_7
    move-exception v0

    .line 797
    :goto_8
    return-void
.end method

.method public getAttributionChainId()I
    .registers 2

    .line 882
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    return v0
.end method

.method public getAttributionFlags()I
    .registers 2

    .line 877
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    return v0
.end method

.method public getClientId()Landroid/os/IBinder;
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .line 872
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return v0
.end method

.method public getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 2

    .line 867
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object v0
.end method

.method public getStartElapsedTime()J
    .registers 3

    .line 852
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 847
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .registers 2

    .line 862
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V
    .registers 15
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "onDeath"    # Ljava/lang/Runnable;
    .param p8, "uidState"    # I
    .param p9, "flags"    # I
    .param p10, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .param p11, "attributionFlags"    # I
    .param p12, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "II",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "II",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    .local p13, "proxyPool":Landroid/util/Pools$Pool;, "Landroid/util/Pools$Pool<Landroid/app/AppOpsManager$OpEventProxyInfo;>;"
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 828
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 829
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 830
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 831
    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 832
    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 833
    iput p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    .line 835
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_15

    .line 836
    invoke-interface {p13, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 838
    :cond_15
    iput-object p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 839
    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    .line 840
    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    .line 842
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 843
    return-void
.end method
