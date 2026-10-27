.class public Lcom/android/ims/ImsConfig;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfig$OperationStatusConstants;,
        Lcom/android/ims/ImsConfig$WfcModeFeatureValueConstants;,
        Lcom/android/ims/ImsConfig$FeatureValueConstants;,
        Lcom/android/ims/ImsConfig$VideoQualityFeatureValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationValuesConstants;,
        Lcom/android/ims/ImsConfig$ConfigConstants;,
        Lcom/android/ims/ImsConfig$FeatureConstants;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist ACTION_IMS_CONFIG_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_CONFIG_CHANGED"

.field public static final blacklist ACTION_IMS_FEATURE_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_FEATURE_CHANGED"

.field public static final blacklist EXTRA_CHANGED_ITEM:Ljava/lang/String; = "item"

.field public static final blacklist EXTRA_NEW_VALUE:Ljava/lang/String; = "value"

.field private static final blacklist TAG:Ljava/lang/String; = "ImsConfig"


# instance fields
.field private blacklist DBG:Z

.field private final blacklist miConfig:Landroid/telephony/ims/aidl/IImsConfig;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/IImsConfig;)V
    .registers 3

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 789
    iput-object p1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    .line 790
    return-void
.end method

.method private blacklist getThreadExecutor()Ljava/util/concurrent/Executor;
    .registers 4

    .line 970
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    .line 971
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 973
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public blacklist addConfigCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 928
    invoke-direct {p0}, Lcom/android/ims/ImsConfig;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ProvisioningManager$Callback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 929
    invoke-virtual {p1}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 930
    return-void
.end method

.method public blacklist addConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 940
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConfigCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfig"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    .line 946
    nop

    .line 947
    return-void

    .line 943
    :catch_23
    move-exception p1

    .line 944
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "addConfigCallback()"

    const/16 v2, 0x83

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public blacklist getConfigInt(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 807
    nop

    .line 809
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->getConfigInt(I)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_2f

    .line 813
    nop

    .line 814
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInt(): item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImsConfig"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_2e
    return v0

    .line 810
    :catch_2f
    move-exception p1

    .line 811
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "getInt()"

    const/16 v2, 0x83

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public blacklist getConfigString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 835
    nop

    .line 837
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_2f

    .line 841
    nop

    .line 842
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigString(): item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImsConfig"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_2e
    return-object v0

    .line 838
    :catch_2f
    move-exception p1

    .line 839
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "getConfigString()"

    const/16 v2, 0x83

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public blacklist getProvisionedStringValue(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getProvisionedValue(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->getConfigInt(I)I

    move-result p1

    return p1
.end method

.method public blacklist isBinderAlive()Z
    .registers 2

    .line 966
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist removeConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 953
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeConfigCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfig"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    .line 959
    nop

    .line 960
    return-void

    .line 956
    :catch_23
    move-exception p1

    .line 957
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "removeConfigCallback()"

    const/16 v2, 0x83

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public blacklist setConfig(II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 871
    nop

    .line 872
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    const-string v1, "setConfig(): item = "

    const-string v2, "ImsConfig"

    if-eqz v0, :cond_27

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->setConfigInt(II)I

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_5b

    .line 881
    nop

    .line 882
    iget-boolean v3, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v3, :cond_5a

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " value = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_5a
    return v0

    .line 878
    :catch_5b
    move-exception p1

    .line 879
    new-instance p2, Lcom/android/ims/ImsException;

    const-string v0, "setConfig()"

    const/16 v1, 0x83

    invoke-direct {p2, v0, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public blacklist setConfig(ILjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 901
    nop

    .line 902
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    const-string v1, "setConfig(): item = "

    const-string v2, "ImsConfig"

    if-eqz v0, :cond_27

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->setConfigString(ILjava/lang/String;)I

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_5b

    .line 911
    nop

    .line 912
    iget-boolean v3, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v3, :cond_5a

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " value = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_5a
    return v0

    .line 908
    :catch_5b
    move-exception p1

    .line 909
    new-instance p2, Lcom/android/ims/ImsException;

    const-string v0, "setConfig()"

    const/16 v1, 0x83

    invoke-direct {p2, v0, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public blacklist setProvisionedStringValue(ILjava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 858
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist setProvisionedValue(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 851
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(II)I

    move-result p1

    return p1
.end method
